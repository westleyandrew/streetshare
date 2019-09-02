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
  const requests = "other-user-requests-btn";
  const reservations = "other-user-reservations-btn";
  if ($(this).hasClass(items)) {
    console.log('user-items-btn');
    $('.user-items').toggleClass('hide');
    $('.user-orders').addClass('hide');
  } else if ($(this).hasClass(orders)) {
    console.log('user-orders-btn');
    $('.user-orders').toggleClass('hide');
    $('.user-items').addClass('hide');
  } else if ($(this).hasClass(requests)) {
    console.log('user-orders-btn');
    $('.other-user-requests').toggleClass('hide');
    $('.other-user-reservations').addClass('hide');
  } else if ($(this).hasClass(reservations)) {
    console.log('user-reservations-btn');
    $('.other-user-reservations').toggleClass('hide');
    $('.other-user-requests').addClass('hide');
  }
});

$('#btn-bg').click(function(){
  $('#btn-bg').toggleClass('active');
  if($('#btn-bg').hasClass("active")){
    $('#power-text strong').text('ON').css('color', '#61fc8c');
  }else{
    $('#power-text strong').text('OFF').css('color', '#2a2a2a');
  }
});

$('#user-toggle').on('mouseup', function() {
  $('#user-borrowing-div').toggleClass('hide');
  $('#user-lending-div').toggleClass('hide');
});

// $(".user-item-parent").on("click", function() {
//   const thisTarget = $(this).next(".user-item-container");
//   $(thisTarget).fadeToggle("slow");
//   $(thisTarget).toggleClass("hide");
// });

// $('.circle-plus').on('click', function(){
//   $(this).toggleClass('opened');
// })
