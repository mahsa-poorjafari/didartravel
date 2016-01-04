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
//= require jquery-1.10.2
//= require jquery-ui-1.10.4

//= require ahoy
//= require jquery_ujs
//= require ckeditor/init
//= require jquery_nested_form
//= require dataTables/jquery.dataTables
//= require html5shiv.min
//= require modernizr.custom
//= require md5
//= require bootstrap
//= require bootstrap-multiselect

//= require farsiDatePicker/calendar
//= require farsiDatePicker/jquery.ui.core
//= require farsiDatePicker/jquery.ui.datepicker

//= require farsiDatePicker/jquery.ui.widget
//= require farsiDatePicker/zextension

//= require lightbox-2.6.min
//= require jquery.mixitup
//= require jquery.eachStep.min
//= require jquery.smooth-scroll
//= require owl.carousel
//= require prettify
//= require jquery.zweatherfeed.min






$(function () {
  $('[data-toggle="tooltip"]').tooltip()
});
$(function() {
  $( "#datepicker7" ).datepicker();
});
$(document).ready(function () {
  
    $('#test').weatherfeed(['IRXX0008']).ajaxStop(function() {
  
  
      $("div.scrollable").scrollable({ 
              vertical: true,  
              size: 1
      }).circular().navigator().autoscroll({
        interval: 3000
      });
    });
    $('#test2').weatherfeed(['IRXX0008']).ajaxStop(function() {
  
  
      $("div.scrollable").scrollable({ 
              vertical: true,  
              size: 1
      }).circular().navigator().autoscroll({
        interval: 3000
      });
    });

 
  $("#owl-demo").owlCarousel({
 
      autoPlay: 3000, //Set AutoPlay to 3 seconds
 
      items : 6,
      itemsDesktop : [1199,3],
      itemsDesktopSmall : [979,3],
      itemsTablet: [600,2], //2 items between 600 and 0
      itemsMobile : false ,
      stopOnHover : true, 
      responsive : true
 
  });
  $("#owl-demo-plane").owlCarousel({
      rtl:true,
      loop:true,
      autoPlay: 2000, //Set AutoPlay to 3 seconds      
      items : 9,
      itemsDesktop : [1199,5],
      itemsDesktopSmall : [979,3],
      itemsTablet: [600,2], //2 items between 600 and 0
      itemsMobile : false ,
      stopOnHover : true, 
      
      navigation : true,
      responsive : true
 
  });

  $('#service-image').show(1000);
  $('#service-image').removeClass('service-sample-image');
  $('#service-image').addClass('service-sample-image-show');
  $('#service-text').fadeIn(1000);
  $('#service-text').removeClass('service-sample-text');
  $('#service-text').addClass('service-sample-text-show');
  $('#subservice-image').fadeIn(1000);
  $('#subservice-image').removeClass('subservice-text');
  $('#subservice-image').addClass('subservice-text-show');
  $("#owl-demo-plane.owl-carousel .owl-controls").css('display', 'none');
  $("#owl-demo-plane.owl-carousel .owl-wrapper").css('width', '1680px');
  $("#owl-demo.slider4.owl-carousel .owl-wrapper").css('width', '2160px');
  
  $(function() { 
    $(':submit#save-visa-form').click(function(e) {
      $(':input').each(function() {
        if ($(this).val().length == 0) {
          $(this).css('border', '2px solid red');
          e.preventDefault();
        }
      });
    });
  });
});

