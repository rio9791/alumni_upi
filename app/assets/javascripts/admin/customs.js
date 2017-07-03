$(document).on('ready turbolinks:load', function(){
  $('.summernote').summernote({
    height: 400
  });
  $('.datepicker').datepicker({
    format: 'dd/mm/yyyy',
    startDate: '+7d'
  });
});
