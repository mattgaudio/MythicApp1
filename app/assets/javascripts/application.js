// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery-ui
//= require jquery_ujs
//= require rails-ujs
//= require turbolinks
//= require_tree .

/*!
 * Furatto v3.1.1 (http://icalialabs.github.io/furatto/)
 * Copyright 2014-2015 Icalia Labs
 * Licensed under MIT (https://github.com/IcaliaLabs/furatto/blob/master/LICENSE)
 */


$(document).on('click','.dropdown', function(e){
	var thisDropContent = $(this).find('.drop-content');
    $('.drop-content').not(thisDropContent).hide();
    thisDropContent.toggle();
})