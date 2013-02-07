$(document).ready(function(){
    $('.action-button').each(function() {
        $(this).unbind('click').click(function() {
            $(this).parent().submit();
        })
    });
//    $($('.done-button')[0]).parent().submit()
});