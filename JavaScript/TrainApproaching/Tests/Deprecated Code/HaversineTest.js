var lati = 42.34788;
var loni = -71.08627;
var ulat = 42.355138;
var ulon = -71.1289566;

function haversine_distance() {
      var R = 637107.10; // Radius of the Earth in meters
      var rlat1 = lati * (Math.PI/180); // Convert degrees to radians
      var rlat2 = ulat * (Math.PI/180); // Convert degrees to radians
      var difflat = rlat2-rlat1; // Radian difference (latitudes)
      var difflon = (ulon-loni) * (Math.PI/180); // Radian difference (longitudes)

      var d = 2 * R * Math.asin(Math.sqrt(Math.sin(difflat/2)*Math.sin(difflat/2)+Math.cos(rlat1)*Math.cos(rlat2)*Math.sin(difflon/2)*Math.sin(difflon/2)));
      return d;
    }

haversine_distance();
