$(document).ready(function() {

    $('textarea,input').autoResize();

    fadetext();


    $('#show_comments').click (function (event) {
        event.preventDefault();
        $('#show_comments').fadeOut();
        $('#article_comments').fadeIn();
        });


    $('#add_comment').click(function (event) {
        event.preventDefault();
        $('#add_comment').fadeOut();
        $('#add_article_comment').fadeIn();
        });
});