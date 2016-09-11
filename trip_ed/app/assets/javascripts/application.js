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
//= require jquery
//= require jquery.turbolinks
//= require jquery_ujs
//= require turbolinks
//= require_tree .
//= require materialize-sprockets
//= require materialize/extras/nouislider


$(document).ready(function() {
  console.log("script loaded")

  $('button').on('click', function(el){
    // console.log('did you push my button?');

    var tempVal = $(this).attr('id');
    // console.log('id: ', tempVal);

    var tempNumber = $(this).attr('data');
    tempNumber = parseInt(tempNumber);
    // console.log('data: ', tempNumber);

    var tempAddress = $(this).attr('origin');
    // console.log('origin addy: ', tempAddress);

    var locationAddress = $(this).attr('destination');
    // console.log('dest addy: ', locationAddress);

    var newurl = "https://www.google.com/maps/embed/v1/directions?origin=" + tempAddress + "&destination=" + locationAddress + "&mode="+tempVal+"&key="+ENV["GOOGLE_KEY"];

    var kenzo = 'mapscreen' + tempNumber;

    $('#'+kenzo).attr('src', newurl); //select element via id name

  });

});


