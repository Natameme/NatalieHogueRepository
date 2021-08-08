function checkWeek(w){
  var week = '';
  if (w >= 1 && w <=7){
    week = 1;
  } else if (w >= 8 && w <=14){
    week = 2;
  } else if (w >= 15 && w <=21){
    week = 3;
  } else if (w >= 22 && w <=28){
    week = 4;
  } else if (w >= 29 && w <=31){
    week = 5;
  }
return week;
}
async function getTrash() {
  const response = await fetch('https://data.boston.gov/api/3/action/datastore_search?resource_id=fee8ee07-b8b5-4ee5-b540-5162590ba5c1&q=%2224%20pratt%20st%22');
  const data = await response.json();
  const addy = data.result.records[0].Address
  const TrSched = data.result.records[0].Trash
  var trInt;
//CONDITIONAL LOGIC
  if (TrSched == 'M'){
    trInt = 1;
  } else if (TrSched == 'T'){
    trInt = 2;
  } else if (TrSched == 'W'){
    trInt = 3;
  } else if (TrSched == 'TH'){
    trInt = 4;
  } else if (TrSched == 'F'){
    trInt = 5;
  }

  return trInt;
}
async function getSweep() {
  stSweep= [];
  const response = await fetch('https://data.boston.gov/api/3/action/datastore_search?resource_id=9fdbdcad-67c8-4b23-b6ec-861e77d56227&q=Pratt%20St%20Ashford%20St');
  const data = await response.json();
  const L = data.result.records.length;
  const J = L-1; //index used for loop

for(i=0; i<=J; i++){
  const streetName = data.result.records[i].St_name
  var weekPl = "";
  var dayPl = "";

  //Conditional Logic
  const weekOne = data.result.records[i].week1
  const weekTwo = data.result.records[i].week2
  const weekTre = data.result.records[i].week3
  const weekFor = data.result.records[i].week4
  const weekFiv = data.result.records[i].week5
  const monday = data.result.records[i].monday
  const tuesday = data.result.records[i].tuesday
  const wednesday = data.result.records[i].wednesday
  const thursday = data.result.records[i].thursday
  const friday = data.result.records[i].friday
  const saturday = data.result.records[i].saturday
  const sunday = data.result.records[i].sunday
  const side = data.result.records[i].Side

    if (data.result.records[i].week1 == "True"){
    weekPl = ("Weeks 1 and 3")
  } else if (data.result.records[i].week2 == "True"){
    weekPl = ("Weeks 2 and 4")
  } else if (data.result.records[i].week3 == "True"){
    weekPl = ("Weeks 1 and 3")
  } else if (data.result.records[i].week4 == "True"){
    weekPl = ("Weeks 2 and 4")
  } else if (data.result.records[i].week5 == "True"){
    weekPl = ("Week 5")
  }

  if (data.result.records[i].monday == "True"){
    dayPl = 1;
  } else if (data.result.records[i].tuesday == "True"){
    dayPl = 2;
  } else if (data.result.records[i].wednesday == "True"){
    dayPl = 3;
  } else if (data.result.records[i].thursday == "True"){
    dayPl = 4;
  } else if (data.result.records[i].friday == "True"){
    dayPl = 5;
  } else if (data.result.records[i].saturday == "True"){
    dayPl = 6;
  } else if (data.result.records[i].sunday == "True"){
    dayPl = 0;
  }

//array parse
var arr = {Street: streetName, Side: side, Week: weekPl , Day: dayPl };
stSweep.push(arr);
} //end of loop
  return stSweep;
}
async function getDayWeek() {
  const day = new Date();
  const w = day.getDate();
  const d = day.getDay();
  var week = checkWeek(w);
  dayWeek = {Day: d, Week: week};
  return(dayWeek);
}
async function botLogic(){
  //UTC Date
    const da = new Date();
    const dd = da.getDay();
          switch (new Date().getDay()) {
              case 0:
              day = "Sunday";
              break;
              case 1:
              day = "Monday";
              break;
              case 2:
               day = "Tuesday";
              break;
              case 3:
              day = "Wednesday";
              break;
              case 4:
              day = "Thursday";
              break;
              case 5:
              day = "Friday";
              break;
              case 6:
              day = "Saturday";
              }
    const m = da.getMonth();
    const mo = m + 1;
    const d = da.getDate();
    const y = da.getFullYear();
    const mdy = (day + ' ' + mo + '/' + d + '/' + y)
////////////////////////////////////////////////////
//VARIABLES FROM OTHER FUNCTIONS
  //DAY & WEEK
  getDayWeek();
    var dayWeek = await getDayWeek();//checks day & week
                //DAYWEEK TEST
                /*var dayWeek = {Day: 3, Week: 2};*/
  //TRASH DAY
  getTrash();
    var trashDay = await getTrash();//check Trash Day
    var cans = trashDay - 1;
  //SWEEP DAY
  getSweep();
    var sweepDay = await getSweep();//check Sweep Day

//CONDITIONAL LOGIC
  //Trash
  if (cans == dayWeek.Day){
    msg.channel.send("Today's Date is " + mdy );
    msg.channel.send("Remember to Put out your cans! Trash Pickup is Tomorrow.")
  } else if (trashDay == dayWeek.Day) {
    msg.channel.send("Today's Date is " + mdy );
    msg.channel.send("Trash Pickup is Today! Remember to Bring in your cans this evening.")
  }
  //Sweep
  if (dayWeek.Day == 1){
        if (dayWeek.Week == 1 || dayWeek.Week == 3){
        msg.channel.send("Today's Date is " + mdy );
        msg.channel.send("Street Sweeping is Today! Make sure to move your car to the EVEN side of the street");
      } else if (dayWeek.Week == 2 || dayWeek.Week == 4){
        msg.channel.send("Today's Date is " + mdy );
        msg.channel.send("Street Sweeping is Today! Make sure to move your car to the ODD side of the street");
      }
  } else {
    msg.channel.send("Today's Date is " + mdy );
  }

bot.on('message', msg => {
  if (msg.content === '!date') {
    msg.reply('pong');
    msg.channel.send("Today's Date is " + mdy);

}
function mainBot(){setInterval(function(){ // Set interval for checking
    var date = new Date(); // Create a Date object to find out what time it is
    if(date.getHours() === 8 && date.getMinutes() === 0){ // Check the time
        botLogic();
    }
}, 60000); // Repeat every 60000 milliseconds (1 minute)
}
