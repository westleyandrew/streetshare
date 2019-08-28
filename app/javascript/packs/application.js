 // <-- you need to uncomment the stylesheet_pack_tag in the layout!
import "bootstrap";
import { initMapbox } from '../plugins/init_mapbox';

import { initAutocomplete } from '../plugins/init_autocomplete';
import 'mapbox-gl/dist/mapbox-gl.css';

import "../plugins/flatpickr"

import { initSweetalert } from '../plugins/init_sweetalert';

initAutocomplete();

initMapbox();

initSweetalert('#sweet-alert-demo', {
  title: "Congratulations!",
  text: "We've sent you an email with the confirmation.",
  icon: "success"
}, (value) => {
  const form = document.querySelector("#new_booking");
  form.submit();
});
