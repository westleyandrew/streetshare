 // <-- you need to uncomment the stylesheet_pack_tag in the layout!
import "bootstrap";
import { initMapbox } from '../plugins/init_mapbox';

import { initAutocomplete } from '../plugins/init_autocomplete';
import 'mapbox-gl/dist/mapbox-gl.css';
import 'sweetalert2/dist/sweetalert2.min.css'

import "../plugins/flatpickr"

import { initSweetalert } from '../plugins/init_sweetalert';

initAutocomplete();

initMapbox();

initSweetalert();

$(".user-item-parent").on("click", function() {
  const thisTarget = $(this).next(".user-item-container");
  $(thisTarget).fadeToggle("slow");
  $(thisTarget).toggleClass("hide");
});

$('.circle-plus').on('click', function(){
  $(this).toggleClass('opened');
})
