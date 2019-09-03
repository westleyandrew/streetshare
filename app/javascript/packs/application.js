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


const menuToggle = (element, jqA, jqB) => {
  if ($(element).hasClass('ss-active') === false) {
    $('.user-display').removeClass('ss-active');
    $(element).addClass('ss-active');
    $(jqA).toggleClass('hide');
    $(jqB).addClass('hide');
    // console.log(`element = ${element}, jq1 = ${jqA} and jq2 = ${jqB}`);
  }
}
// toggle classes for user homepage item tabs
$('.user-display').on('click', function() {
  $('.user-display').removeClass('lgt-green');
  $(this).addClass("lgt-green");
  const items = "user-items-btn";
  const orders = "user-orders-btn";
  const requests = "other-user-requests-btn";
  const reservations = "other-user-reservations-btn";
  if ($(this).hasClass(items)) {
    // console.log('user-items-btn');
    // const passThis = $(this);
    const jq1 = '.user-items';
    const jq2 = '.user-orders';
    menuToggle(this, jq1, jq2);
  } else if ($(this).hasClass(orders)) {
    // console.log('user-orders-btn');
    // const passThis = $(this);
    const jq3 = '.user-orders';
    const jq4 = '.user-items';
    menuToggle(this, jq3, jq4);
  } else if ($(this).hasClass(requests)) {
    // console.log('user-orders-btn');
    // const passThis = $(this);
    const jq5 = '.other-user-requests';
    const jq6 = '.other-user-reservations';
    menuToggle(this, jq5, jq6);
  } else if ($(this).hasClass(reservations)) {
    // console.log('user-reservations-btn');
    // const passThis = $(this);
    const jq7 = '.other-user-reservations';
    const jq8 = '.other-user-requests';
    menuToggle(this, jq7, jq8);
  }
});

$('.user-home').on('mouseup', function() {
  if ($('.user-home').hasClass('ss-active') === false) {
    console.log('user-home selector');
    $('.user-display').removeClass('ss-active');
    $('.user-home, .user-items-btn').addClass('ss-active');
    $('.user-lend').removeClass('ss-active');
    $('#user-borrowing-div, #user-lending-div').toggleClass('hide');
    $('.user-display').removeClass('lgt-green');
    $('.user-items-btn').addClass('lgt-green');
    $('.user-orders').addClass('hide');
    $('.user-items').removeClass('hide');
  }
});

$('.user-lend').on('mouseup', function() {
  if ($('.user-lend').hasClass('ss-active') === false) {
    console.log('user-lend selector');
    $('.user-display').removeClass('ss-active');
    $('.user-lend, .other-user-requests-btn').addClass('ss-active');
    $('.user-home').removeClass('ss-active');
    $('#user-borrowing-div, #user-lending-div').toggleClass('hide');
    $('.user-display').removeClass('lgt-green');
    $('.other-user-requests-btn').addClass('lgt-green');
    $('.other-user-reservations').addClass('hide');
    $('.other-user-requests').removeClass('hide');
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

