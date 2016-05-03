/*!
 * Start Bootstrap - Grayscale Bootstrap Theme (http://startbootstrap.com)
 * Code licensed under the Apache License v2.0.
 * For details, see http://www.apache.org/licenses/LICENSE-2.0.
 */

// jQuery to collapse the navbar on scroll
function collapseNavbar() {
    if ($(".navbar").offset().top > 50) {
        $(".navbar-fixed-top").addClass("top-nav-collapse");
    } else {
        $(".navbar-fixed-top").removeClass("top-nav-collapse");
    }
}

$(window).scroll(collapseNavbar);
$(document).ready(collapseNavbar);

// jQuery for page scrolling feature - requires jQuery Easing plugin
$(function() {
    $('a.page-scroll').bind('click', function(event) {
        var $anchor = $(this);
        $('html, body').stop().animate({
            scrollTop: $($anchor.attr('href')).offset().top
        }, 1500, 'easeInOutExpo');
        event.preventDefault();
    });
});

// Closes the Responsive Menu on Menu Item Click
$('.navbar-collapse ul li a').click(function() {
  if ($(this).attr('class') != 'dropdown-toggle active' && $(this).attr('class') != 'dropdown-toggle') {
    $('.navbar-toggle:visible').click();
  }
});

// Google Maps Scripts
var map = null;
// When the window has finished loading create our google map below
google.maps.event.addDomListener(window, 'load', init);
google.maps.event.addDomListener(window, 'resize', function() {
    map.setCenter(new google.maps.LatLng(40.6700, -73.9400));
});

function init() {
    // Basic options for a simple Google Map
    // For more options see: https://developers.google.com/maps/documentation/javascript/reference#MapOptions
    var mapOptions = {
        // How zoomed in you want the map to start at (always required)
        zoom: 15,

        // The latitude and longitude to center the map (always required)
        center: new google.maps.LatLng(40.6700, -73.9400), // New York

        // Disables the default Google Maps UI components
        disableDefaultUI: true,
        scrollwheel: false,
        draggable: false,

        // How you would like to style the map. 
        // This is where you would paste any style found on Snazzy Maps.
        styles: [{
            "featureType": "water",
            "elementType": "geometry",
            "stylers": [{
                "color": "#000000"
            }, {
                "lightness": 17
            }]
        }, {
            "featureType": "landscape",
            "elementType": "geometry",
            "stylers": [{
                "color": "#000000"
            }, {
                "lightness": 20
            }]
        }, {
            "featureType": "road.highway",
            "elementType": "geometry.fill",
            "stylers": [{
                "color": "#000000"
            }, {
                "lightness": 17
            }]
        }, {
            "featureType": "road.highway",
            "elementType": "geometry.stroke",
            "stylers": [{
                "color": "#000000"
            }, {
                "lightness": 29
            }, {
                "weight": 0.2
            }]
        }, {
            "featureType": "road.arterial",
            "elementType": "geometry",
            "stylers": [{
                "color": "#000000"
            }, {
                "lightness": 18
            }]
        }, {
            "featureType": "road.local",
            "elementType": "geometry",
            "stylers": [{
                "color": "#000000"
            }, {
                "lightness": 16
            }]
        }, {
            "featureType": "poi",
            "elementType": "geometry",
            "stylers": [{
                "color": "#000000"
            }, {
                "lightness": 21
            }]
        }, {
            "elementType": "labels.text.stroke",
            "stylers": [{
                "visibility": "on"
            }, {
                "color": "#000000"
            }, {
                "lightness": 16
            }]
        }, {
            "elementType": "labels.text.fill",
            "stylers": [{
                "saturation": 36
            }, {
                "color": "#000000"
            }, {
                "lightness": 40
            }]
        }, {
            "elementType": "labels.icon",
            "stylers": [{
                "visibility": "off"
            }]
        }, {
            "featureType": "transit",
            "elementType": "geometry",
            "stylers": [{
                "color": "#000000"
            }, {
                "lightness": 19
            }]
        }, {
            "featureType": "administrative",
            "elementType": "geometry.fill",
            "stylers": [{
                "color": "#000000"
            }, {
                "lightness": 20
            }]
        }, {
            "featureType": "administrative",
            "elementType": "geometry.stroke",
            "stylers": [{
                "color": "#000000"
            }, {
                "lightness": 17
            }, {
                "weight": 1.2
            }]
        }]
    };

    // Get the HTML DOM element that will contain your map 
    // We are using a div with id="map" seen below in the <body>
    var mapElement = document.getElementById('map');

    // Create the Google Map using out element and options defined above
    map = new google.maps.Map(mapElement, mapOptions);

    // Custom Map Marker Icon - Customize the map-marker.png file to customize your icon
    var image = 'img/map-marker.png';
    var myLatLng = new google.maps.LatLng(40.6700, -73.9400);
    var beachMarker = new google.maps.Marker({
        position: myLatLng,
        map: map,
        icon: image
    });
}










var scrollerOptions = {
        mouseWheel: true,
        snap: "li",
        momentum: true,
      bounce:true
      };

$(document).ready(function(){


$.fn.hasAttr = function(name) {  
return this.attr(name) !== undefined;
};



    
$('.spinner')
  .each(function (index) {            
    $(this).html('<div><ul></ul></div>');
    // shadow options
    if($(this).hasClass('shadow')){
      $(this).append('<div class="spinner_shadow inner_shadow"></div>');
    }else if($(this).hasClass('shadow_flat')){
      $(this).append('<div class="spinner_shadow inner_shadow_flat"></div>'); 
    }
    var unit = '';
    // unit options
    if($(this).hasAttr('unit')){
      $(this).append('<sup>' + $(this).attr('unit') + '</sup>');
    }   
    
    // tap up/down regions
    $(this).append('<div class="tap_area value_up"><div class="arrow up"></div></div><div class="tap_area value_down"><div class="arrow down"></div></div>');
    
    
    // min/max LI list
    var numLIs = "";
    var label;        
    var max = 10; // default
    var zeros = true;
    var increment = 1.0;
    var startingValue = 0.0;
    if($(this).attr('zero_padded') == 'false') zeros = false;
    if($(this).hasAttr('increment')){
      increment = $(this).attr('increment');                
      increment = Number(increment);
    }  
    if($(this).hasAttr('max')) max = parseInt($(this).attr('max')); // alert(i + '.) ' + $(this).hasAttr('max'));
    var i = 0;
    for(i=startingValue;i<max+1;i+=increment){            
      
      var iValue = String(i);
      if(String(iValue).indexOf('.5',0) > -1){
        var iParts = iValue.split(".");
        iValue = iParts[0] + '<sup>.' + iParts[1] + '</sup>';
      }else{
        iValue = iValue + '<sup></sup>';
      }
      
      if((!zeros) || (i > 99)){
        label = "<span>"+iValue+"</span>";
      }else if(i<1){
        label = "<span>000</span><span></span>"; 
      }else{
        if(i<10){ 
          label = "<span>00</span><span>"+iValue+"</span>";
        }else if(i<100){
          label = "<span>0</span><span>"+iValue+"</span>";
        }
        // in first condition above
      }          
      numLIs += "<li>" + label + "</li>";
    }    
    $('ul',$(this)).append(numLIs);        
    if(increment < 1){
      $('ul',$(this)).addClass('decimals');
    }
  
    
    
  });


// setup iScrolls and events
$('.spinner')
.bind('mouseup touchstart',function(){
  $('.focused').removeClass('focused');
  $(this).addClass('focused');
})
.each(function (index) {                            
  var spinScroll = undefined;
  spinScroll = new IScroll(this, scrollerOptions);
  // when spinner scrolling ends, refresh its value attribute using currentPage.pageY
  spinScroll.on("scrollEnd",function(){                                          
      updateSpinnerValue(this);          
    });
   
  // start spinner at position based on value attribute on .spinner
  var startingValue = 1;
  if($('.spinner').eq(index).attr('value')) startingValue = $('.spinner').eq(index).attr('value');                   
   spinScroll.goToPage(0,startingValue,0);                        
   
  document.getElementById($(this).attr('id')).IScrollInstance = spinScroll;
       
}); // .spinners each


var hammertime = $(".tap_area").hammer();

/*      $('.tap_area').each(function() {
*/                    
    // on elements in the toucharea, with a stopPropagation
    hammertime
      .on("tap", $(this), function(ev) {
        var spinnerScroller = getIScrollInstanceByElementID($(this).parent().attr('id'));            
        //var liHeight = $(spinnerScroller).find('li').height();
        var valueUp = 1;
        if($(this).hasClass('value_down')) valueUp = -1;
        var newPage = parseInt(spinnerScroller.currentPage.pageY)+valueUp;
        refreshSpinnerPosition(spinnerScroller,0,newPage,1);
        /*e.stopPropagation();          
        ev.stopPropagation();*/
      })
    .on("doubletap", $(this), function(ev) {
        /*var spinnerScroller = getIScrollInstanceByElementID($(this).parent().attr('id'));            
        //var liHeight = $(spinnerScroller).find('li').height();
        var valueUp = 10;
        if($(this).hasClass('value_down')) valueUp = -10;
        var newPage = parseInt(spinnerScroller.currentPage.pageY)+valueUp;
        refreshSpinnerPosition(spinnerScroller,0,newPage,1);
        /*e.stopPropagation();          
        ev.stopPropagation();*/
      });
  

}); // doc ready


function getIScrollInstanceByElementID(spinnerElementID){
return spinnerScroller = document.getElementById(spinnerElementID).IScrollInstance;         
}

function refreshSpinnerPosition(spinner,x,y,a){
spinner.goToPage(x,y,a); 
updateSpinnerValue(spinner);  
}

function updateSpinnerValue(spinner){  
var y = spinner.currentPage.pageY;            
var selectedValue = $(spinner.wrapper).find('li').eq(y).text();          
$(spinner.wrapper).attr('value',parseInt(selectedValue)); 
console.log('updateSpinnerValue(): Spinner[' + $(spinner.wrapper).attr('id') + '].value = [' + parseInt(selectedValue) + ']');  
}


function getNumberFromKeyCode(kc){
var n = '?';
kc = kc.toString();
switch(kc){
case '48':
case '96':
   n = '0';
   break;
case '49':
case '97':
   n = '1';
   break;
case '50':
case '98':
   n = '2';
   break;
case '51':
case '99':
   n = '3';
   break;
case '52':
case '100':
   n = '4';
   break;   
case '53':
case '101':
   n = '5';
   break;
case '54':
case '102':
   n = '6';
   break;
case '55':
case '103':
   n = '7';
   break;
case '56':
case '104':
   n = '8';
   break;   
case '57':
case '105': 
   n = '9';
   break;    
}

return n;
}

$.holdReady(true);
$.getScript("http://rawgithub.com/cubiq/iscroll/master/build/iscroll.js",     function() { 

$.getScript("http://rawgithub.com/EightMedia/hammer.js/v1.0.5/dist/jquery.hammer.min.js",     function() { 
$.holdReady(false); 
});


});
