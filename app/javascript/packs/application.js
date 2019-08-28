 // <-- you need to uncomment the stylesheet_pack_tag in the layout!
import "bootstrap";
import { initMapbox } from '../plugins/init_mapbox';
import { initAutocomplete } from '../plugins/init_autocomplete';

import 'mapbox-gl/dist/mapbox-gl.css';

initAutocomplete();
initMapbox();
