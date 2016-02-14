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
//= require jssor.slider.mini



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
    show:10,
    btnprev:'.icon-arrow-right',
    btnext:'.icon-arrow-left',
    speed:400,
    disable_class: 'disable',
    auto :true,
    auto_time: 2000,
    slide:1
  });   
  
 
  
  $('.carousel[data-type="multi"] .item').each(function(){
    var next = $(this).next();
    if (!next.length) {
      next = $(this).siblings(':first');
    }
    next.children(':first-child').clone().appendTo($(this));
    
    for (var i=0;i<1;i++) {
      next=next.next();
      if (!next.length) {
        next = $(this).siblings(':first');
      }
      
      next.children(':first-child').clone().appendTo($(this));
    }
  });
  
});

jQuery(document).ready(function ($) {
            
    var jssor_1_options = {
      $AutoPlay: true,
      $Idle: 0,      
      $AutoPlaySteps: 4,
      $SlideDuration: 1000,
      $SlideEasing: $Jease$.$Linear,
      $PauseOnHover: 4,
      $SlideWidth: 90,
      $SlideHeight: 80,
      $Cols: 13
    };
    
    var jssor_1_slider = new $JssorSlider$("jssor_1", jssor_1_options);
    
    //responsive code begin
    //you can remove responsive code if you don't want the slider scales while window resizing
    function ScaleSlider() {
        var refSize = jssor_1_slider.$Elmt.parentNode.clientWidth;
        if (refSize) {
            refSize = Math.min(refSize, 1235);
            jssor_1_slider.$ScaleWidth(refSize);
        }
        else {
            window.setTimeout(ScaleSlider, 30);
        }
    }
    ScaleSlider();
    $(window).bind("load", ScaleSlider);
    $(window).bind("resize", ScaleSlider);
    $(window).bind("orientationchange", ScaleSlider);
    //responsive code end
});
