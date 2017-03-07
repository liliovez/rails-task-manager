
$(document).ready(function() {
  $('#myList li').on('click', function(event) {
    $(this).toggleClass('checked');
  });
});
