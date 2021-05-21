function filterTest(){
  var GreenB = document.getElementById("Green-B");
  var GreenC = document.getElementById("Green-C");
  var GreenD = document.getElementById("Green-D");
  var GreenE = document.getElementById("Green-E");
  var GB = '';
  var GC = '';
  var GD = '';
  var GE = '';
  var APurl = ['https://api-v3.mbta.com/vehicles?filter[route]=']
  var api_url = APurl+GB+GC+GD+GE;


      GreenB.addEventListener('change', function(){
      if(GreenB.checked){
        GB = 'Green-B,';
      }else{
        GB = '';
      }
      var api_url = APurl+GB+GC+GD+GE;
      document.getElementById("display").innerHTML = api_url ;
    });

      GreenC.addEventListener('change', function(){
      if(GreenC.checked){
        GC = 'Green-C,';
      }else{
        GC = '';
      }
      var api_url = APurl+GB+GC+GD+GE;
      document.getElementById("display").innerHTML = api_url ;
    });

      GreenD.addEventListener('change', function(){
      if(GreenD.checked){
        GD = 'Green-D,'
      }else{
        GD = '';
      }
      var api_url = APurl+GB+GC+GD+GE;
      document.getElementById("display").innerHTML = api_url ;
    });

      GreenE.addEventListener('change', function(){
      if(GreenE.checked){
        GE = 'Green-E,'
      }else{
        GE = '';
      }
      var api_url = APurl+GB+GC+GD+GE;
      document.getElementById("display").innerHTML = api_url ;
    });

//prints string
document.getElementById("display").innerHTML = api_url ;

}


filterTest();
