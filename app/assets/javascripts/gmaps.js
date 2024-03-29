
var chicago = new google.maps.LatLng(41.850033, -87.6500523);
var anchorage = new google.maps.LatLng(61.2180556, -149.9002778);
var mexico = new google.maps.LatLng(19.4270499, -99.1275711);
var equator = new google.maps.LatLng(0,0);
var london = new google.maps.LatLng(51.5001524, -0.1262362);
var johannesburg = new google.maps.LatLng(-26.201452, 28.045488);
var kinshasa = new google.maps.LatLng(-4.325, 15.322222);
var sydney = new google.maps.LatLng( -33.867139, 151.207114);

var locationArray = [chicago,anchorage,mexico,equator,london,johannesburg,kinshasa,sydney];
var locationNameArray = ['Chicago','Anchorage','Mexico City','The Equator','London','Johannesburg','Kinshasa','Sydney'];

// Note: this value is exact as the map projects a full 360 degrees of longitude
var GALL_PETERS_RANGE_X = 800;

// Note: this value is inexact as the map is cut off at ~ +/- 83 degrees.
// However, the polar regions produce very little increase in Y range, so
// we will use the tile size.
var GALL_PETERS_RANGE_Y = 510;

function degreesToRadians(deg) {
  return deg * (Math.PI / 180);
}

function radiansToDegrees(rad) {
  return rad / (Math.PI / 180);
}

/**
 * @constructor
 * @implements {google.maps.Projection}
 */
function GallPetersProjection() {

  // Using the base map tile, denote the lat/lon of the equatorial origin.
  this.worldOrigin_ = new google.maps.Point(GALL_PETERS_RANGE_X * 400 / 800,
      GALL_PETERS_RANGE_Y / 2);

  // This projection has equidistant meridians, so each longitude degree is a linear
  // mapping.
  this.worldCoordinatePerLonDegree_ = GALL_PETERS_RANGE_X / 360;

  // This constant merely reflects that latitudes vary from +90 to -90 degrees.
  this.worldCoordinateLatRange = GALL_PETERS_RANGE_Y / 2;
};

GallPetersProjection.prototype.fromLatLngToPoint = function(latLng) {

  var origin = this.worldOrigin_;
  var x = origin.x + this.worldCoordinatePerLonDegree_ * latLng.lng();

  // Note that latitude is measured from the world coordinate origin
  // at the top left of the map.
  var latRadians = degreesToRadians(latLng.lat());
  var y = origin.y - this.worldCoordinateLatRange * Math.sin(latRadians);

  return new google.maps.Point(x, y);
};

GallPetersProjection.prototype.fromPointToLatLng = function(point, noWrap) {

  var y = point.y;
  var x = point.x;

  if (y < 0) {
    y = 0;
  }
  if (y >= GALL_PETERS_RANGE_Y) {
    y = GALL_PETERS_RANGE_Y;
  }

  var origin = this.worldOrigin_;
  var lng = (x - origin.x) / this.worldCoordinatePerLonDegree_;
  var latRadians = Math.asin((origin.y - y) / this.worldCoordinateLatRange);
  var lat = radiansToDegrees(latRadians);
  return new google.maps.LatLng(lat, lng, noWrap);
};

function initialize() {

  var gallPetersMap;

  var gallPetersMapType = new google.maps.ImageMapType({
    getTileUrl: function(coord, zoom) {
      var numTiles = 1 << zoom;

      // Don't wrap tiles vertically.
      if (coord.y < 0 || coord.y >= numTiles) {
        return null;
      }

      // Wrap tiles horizontally.
      var x = ((coord.x % numTiles) + numTiles) % numTiles;

      // For simplicity, we use a tileset consisting of 1 tile at zoom level 0
      // and 4 tiles at zoom level 1. Note that we set the base URL to a
      // relative directory.
      var baseURL = 'images/';
      baseURL += 'gall-peters_' + zoom + '_' + x + '_' + coord.y + '.png';
      return baseURL;
    },
    tileSize: new google.maps.Size(800, 512),
    isPng: true,
    minZoom: 0,
    maxZoom: 1,
    name: 'Gall-Peters'
  });

  gallPetersMapType.projection = new GallPetersProjection();

  var mapOptions = {
    zoom: 0,
    center: new google.maps.LatLng(0,0),
    mapTypeControlOptions: {
      mapTypeIds: [google.maps.MapTypeId.ROADMAP, 'gallPetersMap']
    }
  };
  gallPetersMap = new google.maps.Map(document.getElementById('map-canvas'),
      mapOptions);

  gallPetersMap.mapTypes.set('gallPetersMap', gallPetersMapType);
  gallPetersMap.setMapTypeId('gallPetersMap');

  var coord;
  for (coord in locationArray) {
    new google.maps.Marker({
      position: locationArray[coord],
      map: gallPetersMap,
      title: locationNameArray[coord]
    });
  }

  google.maps.event.addListener(gallPetersMap, 'click', function(event) {
    alert('Point.X.Y: ' + event.latLng);
  });
}

google.maps.event.addDomListener(window, 'load', initialize);

