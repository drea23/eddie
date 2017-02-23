$(document).ready(function() {
  $('.attachinary-input').attachinary();
  $('.cloudinary-fileupload').bind('fileuploadchange', function() { $(this).hide()})
});

