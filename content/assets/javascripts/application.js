//= require bootstrap-sprockets

$(document).ready({
  if (window.location.href.indexOf("developers.bookingsync.com") !== -1) {
    var redirectURL = window.location.href.replace("developers.bookingsync.com", "smily.bookingsync.com")
    window.location.href = redirectURL;
  }
});
