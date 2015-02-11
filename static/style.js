$(function() {
  return $('.sidebar-toggle').click(function(event) {
    event.preventDefault();
    $('body').toggleClass('sidebar-left-open');
    if ($('body.sidebar-left-open')) {
      return $('body').scrollTop(0);
    }
  });
});
