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
//= require jquery-ui
//= require jquery.modal
//= require jquery.easing
//= require jquery_ujs
//= require bootstrap.min
//= require turbolinks
// require_tree

$('.dropdown-toggle').dropdown();

$(window).on('scroll', function() {
  if($(this).scrollTop() > 75) {
    $('nav').addClass('scroll-bg');
    } else {
    $('nav').removeClass('scroll-bg'); 
  }
});

setTimeout(function(){
  jQuery('.top_text').animate({left: "0px"}, 1000, "easeOutBack", function(){
    
  });
  jQuery('.bottom_text').animate({left: "0px"}, 800, "easeOutBack")
}, 1000);


