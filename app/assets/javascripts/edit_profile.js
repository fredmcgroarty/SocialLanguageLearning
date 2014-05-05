$(function() {
  $('[data-button]').click(function() {
    $('.tab-container').removeClass('active');    
    $('.tab-container[data-tab-number="' + $(this).data('button') + '"]').addClass('active');
  });

  $('input[type=file]').bootstrapFileInput();
  
})