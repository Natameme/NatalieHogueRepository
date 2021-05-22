//Variable Placeholders
var Tstatus = []; /*stores output of loop*/
var ulat;
var ulon;

window.onload = function(){

}
//MBTA API Link
//full URL https://api-v3.mbta.com/vehicles?filter[route]=Green-B,Green-C,Green-D,Green-E,Orange,Blue,Red,Mattapan,CR-Worcester,CR-Newburyport,CR-Middleborough,CR-Greenbush,CR-Lowell,CR-Franklin,CR-Fitchburg,CR-Haverhill,CR-Providence
//var api_url = 'https://api-v3.mbta.com/vehicles?filter[route]=Green-B,Green-C,Green-D,Green-E,Orange,Blue,Red,Mattapan,CR-Worcester,CR-Newburyport,CR-Middleborough,CR-Greenbush,CR-Lowell,CR-Franklin,CR-Fitchburg,CR-Haverhill,CR-Providence' ;


var api_url = apurl + apifilt;
var apifilt  = '';
var apurl = '';
async function lineFilter(){
  apurl = 'https://api-v3.mbta.com/vehicles?filter[route]='

  var GreenB = document.getElementById("Green-B");
  var GB = '';
      GreenB.addEventListener('change', function(){
      if(GreenB.checked){
        GB = 'Green-B,';
      }else{
        GB = '';
      }
      apifilt = GB+GC+GD+GE+OR+BL+RD+MT+CW+CN+CM+CG+CL+CFR+CFI+CH+CPR;
      api_url = apurl + apifilt;
      document.getElementById("display").innerHTML = apifilt ;
    });

  var GreenC = document.getElementById("Green-C");
  var GC = '';
      GreenC.addEventListener('change', function(){
      if(GreenC.checked){
        GC = 'Green-C,';
      }else{
        GC = '';
      }
      apifilt = GB+GC+GD+GE+OR+BL+RD+MT+CW+CN+CM+CG+CL+CFR+CFI+CH+CPR;
      api_url = apurl + apifilt;
      document.getElementById("display").innerHTML = apifilt ;
    });

  var GreenD = document.getElementById("Green-D");
  var GD = '';
      GreenD.addEventListener('change', function(){
      if(GreenD.checked){
        GD = 'Green-D,'
      }else{
        GD = '';
      }
      apifilt = GB+GC+GD+GE+OR+BL+RD+MT+CW+CN+CM+CG+CL+CFR+CFI+CH+CPR;
      api_url = apurl + apifilt;
      document.getElementById("display").innerHTML = apifilt ;
    });

  var GreenE = document.getElementById("Green-E");
  var GE = '';
      GreenE.addEventListener('change', function(){
      if(GreenE.checked){
        GE = 'Green-E,'
      }else{
        GE = '';
      }
      apifilt = GB+GC+GD+GE+OR+BL+RD+MT+CW+CN+CM+CG+CL+CFR+CFI+CH+CPR;
      api_url = apurl + apifilt;
      document.getElementById("display").innerHTML = apifilt ;
    });
  var Orange = document.getElementById("Orange");
  var OR = '';
      Orange.addEventListener('change', function(){
      if(Orange.checked){
        OR = 'Orange,';
      }else{
        OR = '';
      }
      apifilt = GB+GC+GD+GE+OR+BL+RD+MT+CW+CN+CM+CG+CL+CFR+CFI+CH+CPR;
      api_url = apurl + apifilt;
      document.getElementById("display").innerHTML = apifilt ;
    });
  var Blue = document.getElementById("Blue");
  var BL = '';
      Blue.addEventListener('change', function(){
      if(Blue.checked){
        BL = 'Blue,';
      }else{
        BL = '';
      }
      apifilt = GB+GC+GD+GE+OR+BL+RD+MT+CW+CN+CM+CG+CL+CFR+CFI+CH+CPR;
      api_url = apurl + apifilt;
      document.getElementById("display").innerHTML = apifilt ;
    });
  var Red = document.getElementById("Red");
  var RD = '';
      Red.addEventListener('change', function(){
      if(Red.checked){
        RD = 'Red,'
      }else{
        RD = '';
      }
      apifilt = GB+GC+GD+GE+OR+BL+RD+MT+CW+CN+CM+CG+CL+CFR+CFI+CH+CPR;
      api_url = apurl + apifilt;
      document.getElementById("display").innerHTML = apifilt ;
    });
  var Mattapan = document.getElementById("Mattapan");
  var MT = '';
      Mattapan.addEventListener('change', function(){
      if(Mattapan.checked){
        MT = 'Mattapan,'
      }else{
        MT = '';
      }
      apifilt = GB+GC+GD+GE+OR+BL+RD+MT+CW+CN+CM+CG+CL+CFR+CFI+CH+CPR;
      api_url = apurl + apifilt;
      document.getElementById("display").innerHTML = apifilt ;
    });
  var CRWorcester = document.getElementById("CR-Worcester");
  var CW  = '';
      CRWorcester.addEventListener('change', function(){
      if(CRWorcester.checked){
        CW = 'CR-Worcester,'
      }else{
        CW = '';
      }
     apifilt = GB+GC+GD+GE+OR+BL+RD+MT+CW+CN+CM+CG+CL+CFR+CFI+CH+CPR;
     api_url = apurl + apifilt;
     document.getElementById("display").innerHTML = apifilt ;
    });
  var CRNewburyport = document.getElementById("CR-Newburyport");
  var CN = '';
      CRNewburyport.addEventListener('change', function(){
      if(CRNewburyport.checked){
        CN = 'CR-Newburyport,'
      }else{
        CN = '';
      }
      apifilt = GB+GC+GD+GE+OR+BL+RD+MT+CW+CN+CM+CG+CL+CFR+CFI+CH+CPR;
      api_url = apurl + apifilt;
      document.getElementById("display").innerHTML = apifilt ;
    });
  var CRMiddleborough = document.getElementById("CR-Middleborough");
  var CM = '';
      CRMiddleborough.addEventListener('change', function(){
      if(CRMiddleborough.checked){
        CM = 'CR-Middleborough,'
      }else{
        CM = '';
      }
      apifilt = GB+GC+GD+GE+OR+BL+RD+MT+CW+CN+CM+CG+CL+CFR+CFI+CH+CPR;
      api_url = apurl + apifilt;
      document.getElementById("display").innerHTML = apifilt ;
    });
  var CRGreenbush = document.getElementById("CR-Greenbush");
  var CG = '';
      CRGreenbush.addEventListener('change', function(){
      if(CRGreenbush.checked){
        CG = 'CR-Greenbush,'
      }else{
        CG = '';
      }
      apifilt = GB+GC+GD+GE+OR+BL+RD+MT+CW+CN+CM+CG+CL+CFR+CFI+CH+CPR;
      api_url = apurl + apifilt;
      document.getElementById("display").innerHTML = apifilt ;
    });
  var CRLowell = document.getElementById("CR-Lowell");
  var CL = '';
      CRLowell.addEventListener('change', function(){
      if(CRLowell.checked){
        CL = 'CR-Lowell,'
      }else{
        CL = '';
      }
      apifilt = GB+GC+GD+GE+OR+BL+RD+MT+CW+CN+CM+CG+CL+CFR+CFI+CH+CPR;
      api_url = apurl + apifilt;
      document.getElementById("display").innerHTML = apifilt ;
    });
  var CRFranklin = document.getElementById("CR-Franklin");
  var CFR = '';
      CRFranklin.addEventListener('change', function(){
      if(CRFranklin.checked){
        CFR = 'CR-Franklin,'
      }else{
        CFR = '';
      }
      apifilt = GB+GC+GD+GE+OR+BL+RD+MT+CW+CN+CM+CG+CL+CFR+CFI+CH+CPR;
      api_url = apurl + apifilt;
      document.getElementById("display").innerHTML = apifilt ;
    });
  var CRFitchburg = document.getElementById("CR-Fitchburg");
  var CFI = '';
      CRFitchburg.addEventListener('change', function(){
      if(CRFitchburg.checked){
        CFI = 'CR-Fitchburg,'
      }else{
        CFI = '';
      }
      apifilt = GB+GC+GD+GE+OR+BL+RD+MT+CW+CN+CM+CG+CL+CFR+CFI+CH+CPR;
      api_url = apurl + apifilt;
      document.getElementById("display").innerHTML = apifilt ;
    });
  var CRHaverhill = document.getElementById("CR-Haverhill");
  var CH = '';
      CRHaverhill.addEventListener('change', function(){
      if(CRHaverhill.checked){
        CH = 'CR-Haverhill,'
      }else{
        CH = '';
      }
      apifilt = GB+GC+GD+GE+OR+BL+RD+MT+CW+CN+CM+CG+CL+CFR+CFI+CH+CPR;
      api_url = apurl + apifilt;
      document.getElementById("display").innerHTML = apifilt ;
    });
    var CRProvidence = document.getElementById("CR-Providence");
    var CPR = '';
      CRProvidence.addEventListener('change', function(){
      if(CRProvidence.checked){
        CPR = 'CR-Providence,'
      }else{
        CPR = '';
      }
      apifilt = GB+GC+GD+GE+OR+BL+RD+MT+CW+CN+CM+CG+CL+CFR+CFI+CH+CPR;
      api_url = apurl + apifilt;
      document.getElementById("display").innerHTML = apifilt ;
    });
apifilt = GB+GC+GD+GE+OR+BL+RD+MT+CW+CN+CM+CG+CL+CFR+CFI+CH+CPR;
api_url = apurl + apifilt;
//prints string
return apifilt;


}

window.onload = function () {
  lineFilter();
  console.log(api_url)
}

//Gets User GeoLocation using Navigator API
async function getuloc(getTrain){
      if ('geolocation' in navigator) {
        console.log('Geolocation available');
        await navigator.geolocation.getCurrentPosition(function(position) {
      //defines ulat and ulon variables
        let ulat = position.coords.latitude;
        let ulon = position.coords.longitude;
      //logs user lat and lon to console, TO ADD: display this data in HTML element
        console.log(ulat);
        console.log(ulon);
        //var mymap = L.map('mapid').setView([ulat, ulon], 13);     NOT YET FUNCTIONAL information to be used with leaflet.js
        getTrain(ulat,ulon);
        setInterval(function(){getTrain(ulat,ulon)}, 5000);   //calls getTrain TO ADD: interval can be updated more with an API key
        });
      } else {
        document.getElementById("notif").innerHTML = 'geolocation not available';   //Geolocation not available flag TO ADD: ability to pick a spot on the map to track from
      }
}
//Haversine formula, calculates distance between 2 lat lon points
function haversine_distance(lati,loni,ulat,ulon) {
      var R = 637107.10; // Radius of the Earth in meters
      var rlat1 = lati * (Math.PI/180); // Convert degrees to radians
      var rlat2 = ulat * (Math.PI/180); // Convert degrees to radians
      var difflat = rlat2-rlat1; // Radian difference (latitudes)
      var difflon = (ulon-loni) * (Math.PI/180); // Radian difference (longitudes)

      var d = 2 * R * Math.asin(Math.sqrt(Math.sin(difflat/2)*Math.sin(difflat/2)+Math.cos(rlat1)*Math.cos(rlat2)*Math.sin(difflon/2)*Math.sin(difflon/2)));
      return d;
}
function bearingChecker(lati,loni,ulat,ulon) {
    var y = Math.sin(loni-ulon) * Math.cos(lati);
    var x = Math.cos(ulat)*Math.sin(lati) -
    Math.sin(ulat)*Math.cos(lati)*Math.cos(loni-ulon);
    var radians = Math.atan2(y, x);
    var bearing = Math.round(radians * (180/Math.PI));
    return bearing;
}
function directionChecker(headi,relHeadi){
  a = headi - relHeadi;
  b = Math.sign(a);
  if(b == 1){
    return 'Departing ';
  }
  else{
    return 'Approaching ';
  }
}
//getTrain Function
async function getTrain(ulat,ulon){
  Tstatus = [];
//fetches data from MBTA API
  const response = await fetch(api_url);
  const Tdata = await response.json();
  const L = Tdata.data.length; //# of trains
  const J = L-1; //index used for loop

  //loop logs data for each train into Tstatus array
    for(i=0;i<=J;i++){
      //vehicle ID
          var vid = Tdata.data[i].relationships.route.data.id + ' #' + Tdata.data[i].id;
      //Vehicle latitude
          var lati =  Tdata.data[i].attributes.latitude;
      //Vehicle Longitude
          var loni =  Tdata.data[i].attributes.longitude;
      //Vehicle Bearing
          var headi = Tdata.data[i].attributes.bearing;
      //calls the haversine_distance function to get a distance from user for each train on the network
          var dist = haversine_distance(lati,loni,ulat,ulon);
          var relHeadi = bearingChecker(lati,loni,ulat,ulon);
          var dir = directionChecker(headi,relHeadi);
      //Logs each variable into an array object, which is then added to the Tstatus array
          var coor = {ID: vid , Lat: lati , Lon: loni, Heading: headi, Distance: dist, Direction: dir }
          Tstatus.push(coor);

  //end of loop
    }

  //sorts Tstatus by Distance from User TO ADD: different Filtering Methods
    function sortFunction(a, b) {
        if (a.Distance === b.Distance) {
            return 0;
        }
        else {
            return (a.Distance < b.Distance) ? -1 : 1;
        }
    }

  //products of getTrain
      console.log(Tstatus.sort(sortFunction));
      var N = 1;
      for(m=0; m<=N; m++){
      document.getElementById("board").innerHTML = '';
          for(k=0;k<=10;k++){
          var para = document.createElement("h3");
          var node = document.createTextNode('ID: '+ Tstatus[k].ID +' Distance: '+ Tstatus[k].Distance +' Direction: '+ Tstatus[k].Direction);
          para.appendChild(node);
          var element = document.getElementById("board");
          element.appendChild(para)

          //Conditional Logic to Test if a Train is Nearby
            if(Tstatus[0].Distance < 101){
              document.getElementById('stat').innerHTML = 'Train Approaching ' + Tstatus[0].ID +' '+ Tstatus[0].Distance;
              document.body.style.backgroundColor = 'rgba(241, 28, 28, 1)';
            }else{
              document.getElementById('stat').innerHTML = "No Trains Nearby";
              document.body.style.backgroundColor = 'rgba(84,150,89,1 )';
           }
    }
  }
}
getuloc(getTrain);
setInterval(function(){getTrain()}, 10000);
