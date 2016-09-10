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
//= require jquery_ujs
//= require turbolinks
//= require_tree .


// $(document).ready(function () {
//     $("#trip_1").prop('Transit', true);
// });

$(document).ready(function () {
  console.log("script loaded")

  $('button').on('click', function(el){
    var tempVal = $(this).attr('id');
    var tempNumber = $(this).attr('data-id');
    tempNumber = parseInt(tempNumber)
    console.log(tempVal);
    console.log(tempNumber);

    // @user_address = school_address
    var newurl = "https://www.google.com/maps/embed/v1/directions?origin=10+E+21st+St&destination=2538+eagle+run+dr&mode="+tempVal+"&key=AIzaSyB2C2zMcCaZjfyvQFG7kSVtRmdJhVDqNGY";

    var $tempmap = $('#mapscreen[data-id='+tempNumber+']');
    console.log($tempmap)
    $tempmap.attr('src', newurl);
    $('#mapscreen').attr('src', newurl)


    // $('#mapscreen').attr('src', newurl);
  });


  //why cant it grab the value ?
  // $('#trip_1').click(function(el){
  //    console.log('Transit!!');
  //     // $('#div1').show();
  //     var newurl = "https://www.google.com/maps/embed/v1/directions?origin=10+E+21st+St&destination=2900+Southern+Blvd&mode=transit&key=AIzaSyB2C2zMcCaZjfyvQFG7kSVtRmdJhVDqNGY"
  //     $('#mapscreen').attr('src', newurl)
  // });

  //  $('#trip_2').click(function(el){
  //    console.log('walking');
  //     // $('#div1').show();
  //     var newurl = "https://www.google.com/maps/embed/v1/directions?origin=10+E+21st+St&destination=2900+Southern+Blvd&mode=walking&key=AIzaSyB2C2zMcCaZjfyvQFG7kSVtRmdJhVDqNGY"
  //     $('#mapscreen').attr('src', newurl)
  // });

  //  $('#trip_3').click(function(el){
  //    console.log('Bus');
  //     // $('#div1').show();
  //     var newurl = "https://www.google.com/maps/embed/v1/directions?origin=10+E+21st+St&destination=2900+Southern+Blvd&mode=driving&key=AIzaSyB2C2zMcCaZjfyvQFG7kSVtRmdJhVDqNGY"
  //     $('#mapscreen').attr('src', newurl)
  // });


});


// $('button').on('click', function(el){
//   var $value = $(this).attr('id');
// });

// then it doesnt matter which button you pick. you only care about the value of the id attribute of the button
// (or this) that gets selected i like this because it s short than this

// what if you did this instead?
// var $value = $('button');
// var temp_val = $value.attr('id');





//     $("#trip_1, #trip_2, #trip_3" ).click(function () { //one string
//       // you never grab the value of that check mark
//       var transit_val = $('.gmap-directions').val();

// // so now it only grabs the value when something is clicked. what is being clicked?
// // when you click a radio its not considered a button so your value never changes
// // you need a physical button or tag element that gets clicked
// // maybe just is('checked', funxtion call instead)
// // cause then you grab the value only when checked and you can pass the val to the url
// // try that and see if that meses up

//         if ($("#trip_1").is(":checked")) {
//           console.log('Transit!!')
//             // $('#div1').show();
//             //im not sure what the 'modes' are
//             // newurl = "https://www.google.com/maps/embed/v1/directions?origin=10+E+21st+St&destination=2900+Southern+Blvd&mode=transit&key=AIzaSyB2C2zMcCaZjfyvQFG7kSVtRmdJhVDqNGY"
//             newurl = "https://www.google.com/maps/embed/v1/directions?origin=10+E+21st+St&destination=2900+Southern+Blvd&mode='+transit_val+'&key=AIzaSyB2C2zMcCaZjfyvQFG7kSVtRmdJhVDqNGY"
//             $('#mapscreen').attr('src',newurl)
//         }
//         else if ($("#trip_2").is(":checked")) {
//           console.log("walking!!")
//             // $('#div2').show();
//             newurl = "https://www.google.com/maps/embed/v1/directions?origin=10+E+21st+St&destination=2900+Southern+Blvd&mode=walking&key=AIzaSyB2C2zMcCaZjfyvQFG7kSVtRmdJhVDqNGY"
//             $('#mapscreen').attr('src',newurl)
//         }
//         else
//           console.log('bus!!')
//         newurl = "https://www.google.com/maps/embed/v1/directions?origin=10+E+21st+St&destination=2900+Southern+Blvd&mode=driving&key=AIzaSyB2C2zMcCaZjfyvQFG7kSVtRmdJhVDqNGY"
//             $('#mapscreen').attr('src',newurl)
//             // $('#div3').show();
//     });
// });

// // no call back function so nothing is happening

// $('button').on('click', function(el))

// // $('#radioButtonContainerId input:radio').click(function() {
// //     if ($(this).val() === '1') {
// //       myFunction();
// //     } else if ($(this).val() === '2') {
// //       myOtherFunction();
// //     }
// //   });

// // what is httparty?
// // like ajax, but happens from back end
// // response = httparty.get(someurl
// // for example:

// //   i have an address in db . this variable addres can put into
// // you dont need httparty for that.

// // you need to get the address from the database with a method like
// // @trips = trips.all or trips.where id = something

// // then you take that url and inject it into the string like i did with the mode










