$(document).ready(function(){
    $('.action-button').each(function() {
        $(this).unbind('click').click(function() {
            $(this).parent().submit();
        })
    });

    $("#refresh-button").unbind('click').click(function() {
        window.location.reload();
    });
//    $($('.done-button')[0]).parent().submit()
});