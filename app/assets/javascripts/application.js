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
//= require js.cookie
//= require jquery.mixitup
//= require jquery.eachStep.min
//= require jquery.smooth-scroll
//= require prettify
//= require jquery.zweatherfeed.min






$(function () {
  $('[data-toggle="tooltip"]').tooltip()
});
$(function() {
  $( "#datepicker7" ).datepicker();
});


$(document).ready(function () {      
    if (Cookies.get('memberuser')== null) {
      $('#newsletterModal').modal('show');
      Cookies.set('memberuser', 'member', { expires: 1 });
    } 
    
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
  $("#owl-demo-plane.owl-carousel .owl-wrapper").css('width', '1150px');
  
  
    
  $('.hamyar_slider').hamyar_slider({
    show:5,
    btnprev:'.icon-arrow-right',
    btnext:'.icon-arrow-left',
    speed:400,
    disable_class: 'disable',
    auto :true,
    auto_time: 2000,
    slide:2
  });   
 $('.hamyar_slider2').hamyar_slider({
    show:3,
    btnprev:'.icon-arrow-right2',
    btnext:'.icon-arrow-left2',
    speed:400,
    disable_class: 'disable',
    auto :true,
    auto_time: 2000,
    slide:2
  });   
  
  
  
});

