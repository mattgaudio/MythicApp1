// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
// You can use CoffeeScript in this file: http://coffeescript.org/



$(document).ready(function(){

    $('.tourn-item-buttons:first-child').addClass("active");

    $('.click-button-xbox').click(function (){
      $(".xbox-buttons").addClass('active').siblings().removeClass('active');
    });
    $('.click-button-ps4').click(function (){
      $(".ps4-buttons").addClass('active').siblings().removeClass('active');
    });
    $('.click-button-steam').click(function (){
      $(".steam-buttons").addClass('active').siblings().removeClass('active');
    });


});
