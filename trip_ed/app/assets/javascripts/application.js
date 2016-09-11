// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
// = require jquery
//= require jquery.turbolinks
//= require jquery_ujs
//= require turbolinks
//= require_tree .


// $(document).ready(function () {
//     $("#trip_1").prop('Transit', true);
// });

$(document).ready(function () {
  console.log("script loaded")
  // var tempAddress = document.querySelector("div.current-address");
  // tempAddress = tempAddress.getAttribute("address");
  // console.log('this should be the current address of our session: ', tempAddress);

  $('button').on('click', function(el){
    var tempVal = $(this).attr('id');
    var tempNumber = $(this).attr('data');
    var tempAddress = $(this).attr('origin');
    var locationAddress = $(this).attr('destination');


    tempNumber = parseInt(tempNumber)
    // console.log(tempVal,'this is tempVal');
    // console.log(tempNumber, 'this is tempNumber');
    // console.log(tempDestination, 'this is destination address');

    var newurl = "https://www.google.com/maps/embed/v1/directions?origin=" + tempAddress + "&destination=" + locationAddress + "&mode="+tempVal+"&key=AIzaSyB2C2zMcCaZjfyvQFG7kSVtRmdJhVDqNGY";

    var kenzo = 'mapscreen' + tempNumber
    console.log(kenzo,'this is kenzo')

    $('#'+kenzo).attr('src', newurl) //select element via id name

  });

});


//= require materialize-sprockets
//= require materialize/extras/nouislider
