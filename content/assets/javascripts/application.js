//= require bootstrap-sprockets

$(document).ready(function() {
  if(window.location.href.indexOf("developers.bookingsync.com") !== -1) {
    var redirectURL = window.location.href.replace("developers.bookingsync.com", "developers.smily.com");
    window.location.href = redirectURL
  }
});
