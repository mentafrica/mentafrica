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
//= require rails-ujs
//= require turbolinks
//= require_tree .
//= require jquery
//= require jquery_ujs
//= require materialize-sprockets
//= require materialize/extras/nouislider
//= require intlTelInput
//= require libphonenumber/utils
$(function() {
  var typed = new Typed('.typed', {
    strings: ["Made In Africa.^1500 Made for the World."]
  });
});
document.addEventListener("turbolinks:load", function() {
  $('select').material_select();
  $("#mentor_phone_no").intlTelInput({
    formatOnInit: true,
    separateDialCode: true,
    initialCountry: "auto",
    geoIpLookup: function(callback) {
      $.get('https://ipinfo.io', function() {}, "jsonp").always(function(resp) {
        var countryCode = (resp && resp.country) ? resp.country : "";
        callback(countryCode);
      });
    }
  });
  $("#mentee_phone_no").intlTelInput({
    formatOnInit: true,
    separateDialCode: true,
    initialCountry: "auto",
    geoIpLookup: function(callback) {
      $.get('https://ipinfo.io', function() {}, "jsonp").always(function(resp) {
        var countryCode = (resp && resp.country) ? resp.country : "";
        callback(countryCode);
      });
    }
  });
  $("form").submit(function() {
    myInput.val(myInput.intlTelInput("getNumber"));
  });
})
