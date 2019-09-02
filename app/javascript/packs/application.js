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

// toggle classes for user homepage item tabsS
$(".user-display").on("click", function() {
  $(".user-display").removeClass("lgt-green");
  $(this).addClass("lgt-green");
  const items = "user-items-btn";
  const orders = "user-orders-btn";
  const reservations = "user-reservations-btn";
  if ($(this).hasClass(items)) {
    console.log('user-items-btn');
    $('.user-items').toggleClass('hide');
    $('.user-orders').addClass('hide');
    $('.user-reservations').addClass('hide');
  } else if ($(this).hasClass(orders)) {
    console.log('user-orders-btn');
    $('.user-orders').toggleClass('hide');
    $('.user-reservations').addClass('hide');
    $('.user-items').addClass('hide');
  } else if ($(this).hasClass(reservations)) {
    console.log('user-reservations-btn');
    $('.user-reservations').toggleClass('hide');
    $('.user-orders').addClass('hide');
    $('.user-items').addClass('hide');
  }
});

// $(".user-item-parent").on("click", function() {
//   const thisTarget = $(this).next(".user-item-container");
//   $(thisTarget).fadeToggle("slow");
//   $(thisTarget).toggleClass("hide");
// });

// $('.circle-plus').on('click', function(){
//   $(this).toggleClass('opened');
// })
