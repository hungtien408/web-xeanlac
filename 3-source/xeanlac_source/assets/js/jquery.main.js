function pageLoad() {
    EqualSizer('.news-all .new-box');
}

(function ($) {
    $(window).load(function () {
        EqualSizer('.news-box');
        EqualSizer('.wrapper-product .item');
        EqualSizer('.news-all .new-box');
        height_pop();
    });
    $(window).resize(function () {
        height_pop();
    })
    $(function () {
        myfunload();
    });
})(jQuery);
//function===============================================================================================
/*=============================fun=========================================*/
function myfunload() {
    $(".panel-a").mobilepanel();
    $("#menu > li").clone().appendTo($("#menuMobile"));
    $("#menuMobile input").remove();
    $("#menuMobile > li > a").append('<span class="fa fa-chevron-circle-right iconar"></span>');
    $("#menuMobile li li a").append('<span class="fa fa-angle-right iconl"></span>');
    $("#menu li:last-child").addClass("last");
    $("#menu li:first-child").addClass("fisrt");
    $("#banner .item:first-child").addClass("active");


    mymap();
    myfunsroll();
    menusroll();

    $(".nav-tabs li:first-child").addClass("active");
    $(".nav-tabs li:first-child a").trigger("click");
    $(".tab-content .tab-pane:first-child").addClass("active");

    $(".list-menu > ul > li").hover(function () {
        $(this).find("ul").stop(true, false, true).slideToggle(300)
    });

    $('#sliderParner').owlCarousel({
        margin: 15,
        loop: true,
        autoplaySpeed: 4000,
        nav: false,
        autoplay: true,
        autoplayTimeout: 2000,
        autoplayHoverPause: true,
        responsive: {
            0: {
                items: 1
            },
            350: {
                items: 2
            },
            480: {
                items: 3
            },
            651: {
                items: 4
            },

            1000: {
                items:5
            },

        }
    });
    $('#silderNews').owlCarousel({
        margin: 15,
        loop: true,
        autoplaySpeed: 4000,
        nav: false,
        autoplay: true,
        autoplayTimeout: 2000,
        autoplayHoverPause: true,
        responsive: {
            0: {
                items: 1
            },
            440: {
                items: 2
            },
            700: {
                items: 3
            },
            1000: {
                items: 3
            },
            1200: {
                items: 3
            },
        }
    });
    $('#sliderProduct').owlCarousel({
        margin: 30,
        loop: true,
        autoplaySpeed: 4000,
        nav: false,
        autoplay: true,
        autoplayTimeout: 2000,
        autoplayHoverPause: true,
        responsive: {
            0: {
                items: 1
            },
            440: {
                items: 2
            },
            700: {
                items: 3
            },
            1000: {
                items: 3
            },
            1200: {
                items: 3
            },
        }
    });

    $('#librarySlide').owlCarousel({
        margin:3,
        loop: true,
        autoplaySpeed: 4000,
        nav: true,
        autoplay: true,
        autoplayTimeout: 2000,
        autoplayHoverPause: true,
        responsive: {
            0: {
                items: 1
            },
            350: {
                items: 1
            },
            470: {
                items: 2
            },
            1000: {
                items: 3
            },
            1200: {
                items: 4
            },
        }
    });

    $('#slideProduct .slider-for').slick({
        slidesToShow: 1,
        slidesToScroll: 1,
        arrows: false,
        fade: true,
        asNavFor: '#slideProduct .slider-nav'
    });
    $('#slideProduct .slider-nav').slick({
        slidesToShow: 5,
        slidesToScroll: 1,
        asNavFor: '#slideProduct .slider-for',
        dots: false,
        arrows: true,
        focusOnSelect: true,
    });

    $('#videoSlide').slick({
        infinite: true,
        slidesToShow: 2,
        slidesToScroll: 2,
        rows: 2,
        dots: false,
        arrows: true,
    });

    $(function () {
        $('a[data-modal]').on('click', function () {
            $($(this).data('modal')).modal();
            var modal = $(this).data('modal');
            $(modal + ' .sliderGallery .slider-for').slick({
                slidesToShow: 1,
                slidesToScroll: 1,
                arrows: false,
                fade: true,
                autoplay: false,
                asNavFor: modal + ' .sliderGallery .slider-nav'
            });
            $(modal + ' .sliderGallery .slider-nav').slick({
                slidesToShow: 7,
                slidesToScroll: 1,
                asNavFor: modal + ' .sliderGallery .slider-for',
                dots: false,
                arrows: true,
                focusOnSelect: true,
                responsive: [
               {
                   breakpoint: 600,
                   settings: {
                       slidesToShow: 5,
                   }
               },
               {
                   breakpoint: 400,
                   settings: {
                       slidesToShow: 3,
                   }
               }
                ]
            });
            return false;
        });
    });

    $('.scroll-popup .popup-content .form-popup').mCustomScrollbar({
        autoHideScrollbar: true,
        theme: "dark-thick",
    });

    /* accodion FAQ */
    /* accodion tin van */
    $(".tin-content").hide();
    // Áp dụng sự kiện click vào thẻ h3
    $(".tin-title").click(function () {
        // chọn .accordion (do phần tử đi đi ngay sau phần tử h3 nên ta dùng .next())
        $(".tin-title").removeClass('active');
        $accordion = $(this).next();
        // Kiểm tra nếu đang ẩn thì sẽ hiện và ẩn các phần tử khác
        // Nếu đang hiện thì click vào h3 sẽ ẩn
        if ($accordion.is(':hidden') === true) {
            $(".tin-content").slideUp();
            $accordion.slideDown();
            $(this).addClass('active');
        } else {
            $accordion.slideUp();
            $(".tin-title").removeClass('active');
        }
    });

}

/*****************************************************************************/
function initSlider(thisme) {
    var param = $(thisme).attr('href');
    var slide = $(param).children("div").attr("id");
    if ($('#' + slide).size() == 1) {
        var silderProject1 = $('#' + slide).imagesLoaded(function () {
            silderProject1.owlCarousel({
                margin: 30,
                loop: true,
                autoplaySpeed: 1000,
                nav: true,
                autoplay: true,
                autoplayTimeout: 2000,
                autoplayHoverPause: true,
                responsive: {
                    0: {
                        items: 1
                    },
                    440: {
                        items: 2
                    },
                    700: {
                        items: 3
                    },
                    1000: {
                        items: 3
                    },
                    1200: {
                        items: 3
                    },
                }
            });
        });
    }
}

/*========================================================================*/

function myfunsroll() {
    mysroll();
    $("#sroltop a").click(function () {
        $("html, body").stop(true, true).animate({ scrollTop: 0 }, 500);
        return false;
    });
}
function mysroll() {
    mysrol();
    $(window).scroll(function () {
        mysrol();
    });
}
function mysrol() {
    var topsroll = $(window).scrollTop();
    if (topsroll > 100) {
        $("#sroltop").stop(true, true).animate({ "opacity": 0.8 }, 500);
    } else {
        $("#sroltop").stop(true, true).animate({ "opacity": 0 }, 500);
    }
}

function menusroll() {
    var htop = $("#header").height();
    srollmenu(htop);
    $(window).scroll(function () {
        srollmenu(htop);
    });
}
function srollmenu(htop) {
    if ($(window).scrollTop() > htop) {
        $(".wrapper-menu").addClass("header-sroll");
    } else {
        $(".wrapper-menu").removeClass("header-sroll");
    }
}
/*===============================*/
function mymap() {
    mympp();
    var timeout;
    $(window).resize(function () {
        clearTimeout(timeout);
        setTimeout(function () {
            mympp();
        }, 500);
    });
}
function mympp() {
    $('#mapwrap').remove();
    if ($(window).width() > 320) {
        $('#mapshow').append('<div id="mapwrap"><iframe id="iframe" src="map.aspx" frameborder="0" height="100%" width="100%"></iframe></div>');
    }
}
/*========================================================================*/
/** popup **/
$('.btn-ut').click(function () {
    $('#mainContent').append('<div id="overlay-screen-active">');
    $('.popup .popup-content').css('top', '30px');
});
$(document).on('click', ".popup-btn-close, #overlay-screen-active", function () {
    $('.popup-content').css('top', '-250%');
    $('#overlay-screen-active').fadeOut();
    $('#overlay-screen-active').remove();
    return false;
});

function height_pop() {
    var n = $(window).height();
    $('.scroll-popup').each(function () {
        var x = $(this).children('.popup-content').height();
        if (x > n) {
            $(this).children('.popup-content').css('max-height', n - 50);
        }
        else {
            $(this).children('.popup-content').css('max-height', n - 50);
        }
    })
}
/*========================================================================*/
function DoEqualSizer(myclass) {
    var heights = $(myclass).map(function () {
        $(this).height('auto');
        return $(this).height();
    }).get(),
    maxHeight = Math.max.apply(null, heights);
    $(myclass).height(maxHeight);
};

function EqualSizer(myclass) {
    $(document).ready(DoEqualSizer(myclass));
    window.addEventListener('resize', function () {
        DoEqualSizer(myclass);
    });
};