import mapboxgl from 'mapbox-gl';

const initMapbox = () => {
  const mapElement = document.getElementById('map');
   if (mapElement) {
    mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
    const map = new mapboxgl.Map({
    container: 'map',
    style: 'mapbox://styles/mapbox/streets-v11',
    center: [2.35183, 48.85658],
    zoom: 12
    });

     // create the popup
    const popup = new mapboxgl.Popup({ offset: 25 })
    .setHTML("<h1>Le bar du coin</h1><p>16 villa Gaudelet 75011 Paris</p>")
    .setMaxWidth("300px");
     // create DOM element for the marker
    const el = document.createElement('div');
    el.id = 'marker';

    new mapboxgl.Marker(el)
    .setLngLat([ 2.379734, 48.865425 ])
    .setPopup(popup)  // sets a popup on this marker
    .addTo(map);
  };
};
export { initMapbox };

