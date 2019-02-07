// Navbar Color Toggle when scrolling over a lighter page


$(function () {
  $(document).scroll(function () {
    var $nav = $(".navbar-fixed-top");
    $nav.toggleClass('scrolled', $(this).scrollTop() > $nav.height());
  });
});


$(window).resize(function () { 
    $('body').css('padding-top', parseInt($('#main-navbar').css("height"))+10);
});

$(window).load(function () { 
    $('body').css('padding-top', parseInt($('#main-navbar').css("height"))+10);        
});

