$(document.body).on('click','.dropdown', function(e){
    $('.drop-content').hide();
    $(this).find('.drop-content').toggle();

})