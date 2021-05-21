//MBTA API Link
const api_url = 'https://api-v3.mbta.com/vehicles?filter[route]=CR-Worcester&include=stop';
//pulls data, and length of index (# of trains on the line)
async function getTrain(){
	const response = await fetch (api_url);
	const Tdata = await response.json();
	const L = Tdata.included.length;
	const J = L-1;


var Tstatus = ['']; /*stores output of loop*/

//loop pulls train status, stop, and direction for each train, J is L-1 (# of trains on the line) which dictates how many time the loop repeats
		for(i=0;i<=J;i++){
					const cur =  Tdata.data[i].attributes.current_status;
					const stops = Tdata.included[i].id;
					const dir =  Tdata.data[i].attributes.direction_id;
					var inf = cur + ' ' + stops + ' ' + dir;
					Tstatus.push(inf);
					console.log(Tstatus)
					}

			//Logs status of trains into HTML element
			document.getElementById("stat").innerHTML = Tstatus;

			//Conditional Logic to see if there is a Train Approaching
			if (Tstatus.includes('IN_TRANSIT_TO Yawkey 0') == true){
			document.getElementById("notif").innerHTML = "Train Approaching Inbound";
			document.body.style.backgroundColor = "red";
			}
			else if (Tstatus.includes('IN_TRANSIT_TO Boston Landing 1') == true){
			document.getElementById("notif").innerHTML = "Train Approaching Outbound";
			document.body.style.backgroundColor = "red";
			}
			else{
			document.getElementById("notif").innerHTML = "No Trains Nearby";
			document.body.style.backgroundColor = rgba(84,150,89,1 );
			}

}
getTrain();
setInterval(function(){getTrain();}, 5000);
