# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$(document).ready ->
  $('.carousel').carousel interval: 1000
  $('#carousel-example-generic .left .carousel-control').click 'cycle'
  return
