// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery-ui
//= require jquery_ujs
//= require dataTables/jquery.dataTables
//= require preloadCssImages.jQuery_v5
//= require_tree .
function getRandomInt (min, max) {
    return Math.floor(Math.random() * (max - min + 1)) + min;
}
jQuery(document).ready(function($) {
	$.preloadCssImages({statusTextEl: '#textStatus', statusBarEl: '#status'});
	var bg = getRandomInt(1,3);
  $('body').css("background-image", "url(\"/assets/bg"+bg+".png\")");
});