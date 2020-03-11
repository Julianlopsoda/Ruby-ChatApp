$(document).ready(function(){
    /*function scroll(){
    $("html, body").animate({ scrollTop: $(document).height() }, 1000);
    }

    window.setTimeout(scroll, 20);*/

    var mensajes = $('#chatbox');

    function init(){
        mensajes.scrollTop(mensajes[0].scrollHeight);
    }

    window.setTimeout(init, 50);

    function rst(){
        location.reload(true);
    }

    window.setTimeout(rst, 5000);
});