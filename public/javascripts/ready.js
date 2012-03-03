$(document).ready(function() {

    $('textarea,input').autoResize();

    fadetext();


    $('#show_comments').click (function (event) {
        event.preventDefault();
        $('#show_comments').fadeOut();
        $('#article_comments').fadeIn();
        });
        });