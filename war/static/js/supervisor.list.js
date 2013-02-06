$(document).ready(function(){
    $('input[name="done-button"]').unbind('click').click(function(){
        $.post('done', function(){
            alert('success');
        })
    });
});