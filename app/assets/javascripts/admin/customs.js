$(document).on('ready turbolinks:load', function(){
  $('.summernote').summernote({
    height: 400
  });
  $('.due-date').datepicker({
    format: 'dd/mm/yyyy',
    startDate: '+7d'
  });
  $('.datepicker').datepicker({
    format: 'dd/mm/yyyy'
  })
});
