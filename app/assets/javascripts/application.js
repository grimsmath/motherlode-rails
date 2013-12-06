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
//= require jquery.turbolinks
//= require jquery_ujs
//= require turbolinks
//= require_tree .

// Include all twitter's javascripts, revise to actual usage before deployment
//= require twitter/bootstrap


var geocoder = new google.maps.Geocoder();

function codeAddress(address) {
    console.log("Geocoding: " + address);
    geocoder.geocode( { 'address': address}, function(results, status) {
        if (status == google.maps.GeocoderStatus.OK) {
            var location = results[0].geometry.location;
            var formatted_address = results[0].formatted_address;
            var lat = location.qb;
            var lon = location.pb;
            console.log("Gecoded to: " + lat + "," + lon);
            $("#nugget_latitude").val(lat);
            $("#nugget_longitude").val(lon);
            $("#nugget_address").val(formatted_address);
        } else {
            console.log("Geocode was not successful for the following reason: " + status);
        }
    });
}
