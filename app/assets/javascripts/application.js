// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require bootstrap-sprockets
//= require jquery_ujs
//= require turbolinks
//= require_tree .

// $(function() {
//   // $('#click_gratch_details').click(function(e){
//   //   e.preventDefault();
//   //   $('.specific').toggle('slow');
//   // });


//   // $('#click_gratch_friends').click(function(e){
//   //   e.preventDefault();
//   //   $('.friends').toggle('slow');
//   // });

//   // START OF INDIVIDUAL TOGGLES ON GRATCH LIST

//   // var gratch_id = $('.click_list').attr('id');
//   // console.log(gratch_id);

//   var number_of_gratches = $('.click_list').size(function(){
//     return this.lenght;
//   });
//   console.log(number_of_gratches);

//   $('#click_gratch_friends').click(function(e){
//     e.preventDefault();
//     console.log(this.attr('data-friends'));

//   });

//   var test = $('#click_gratch_friends').attr('data-friends');

//   console.log(test);

// $('.details_click').on('click', function(){
//   var gratch_id = this.data('click_details');
//   console.log(gratch_id)
// })




//   // END OF INDIVIDUAL TOGGLES ON GRATCH LIST

// });


$(function(){

  $('.details_click').click(function(){
    var item = $(this);
    var gratch_id = item.data('click-details');
    $('#specific_id_' + gratch_id).toggle('slow');
  });

  $('.friends_click').click(function(){
    var item = $(this);
    var gratch_id = item.data('click-friends');
    $('#friends_id_' + gratch_id).toggle('slow');
  });

});
