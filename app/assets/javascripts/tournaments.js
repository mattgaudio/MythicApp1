// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
// You can use CoffeeScript in this file: http://coffeescript.org/


$(document).ready(function () {
  document.getElementById("defaultOpen").click();

  $(".dismiss-btn").hover(
        function() // on mouseover
        {
          $(this).removeClass("dismiss-btn");
          $(this).addClass("invite-sent-btn");
          $(this).text("Dismiss");
        },

        function() // on mouseout
        {
          $(this).removeClass("invite-sent-btn");
          $(this).addClass("dismiss-btn");
          $(this).text("Sent");
        });


});
