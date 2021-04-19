$(document).ready(function() {
    mappingMenu();
    toggleMobileMenu();
    swiperInit();
    setBackgroundElement();
});

const InsertBd = () => {
    $(".breadcrumb-wrapper").appendTo("#pagebanner .box-text");
};

function height(el) {
    var height = 0;
    $(el).each(function() {
        var thisHeight = $(this).height();
        if (thisHeight > height) {
            height = thisHeight;
        }
        setTimeout(() => {
            $(el).height(height)
        }, 100)
    })
}

let header = {
    scrollActive: function() {
        let height = $('header').height()
        if ($(window).scrollTop() > height) {
            $('header').addClass('active')
        } else {
            $('header').removeClass('active')
        }
    },
}


function toggleMobileMenu() {
    var mega = $('.nav-menu .mega-menu')
    var m_list = $('.menu-list .mega-list')
    var mobile = $('.menu_mobile')
    var list = $('.menu-list')
    var arrow_1 = $('.moblie-show-menu span')
    var arrow_2 = $('.moblie-show-mega span')
    var nav = $('.nav-menu')
    $('.header_btn').click(function() {
        $(this).toggleClass('click');
        $('.menu_mobile').toggleClass('show');
        $('.overlay').toggleClass('show');
        if (mobile.hasClass('show')) {
            $('.mega').removeClass('active')
        };
    });
    arrow_1.on('click', function() {
        $(this).parent().toggleClass('active').siblings(mega).slideToggle().parent(list).siblings().find(mega).slideUp();
        $(this).not().parents(list).siblings().find('.moblie-show-menu').removeClass('active');
    });
    arrow_2.on('click', function() {
        $(this).parent().toggleClass('active').closest('li').find(m_list).slideToggle().closest('li').siblings().find(m_list).slideUp();
    });

    $('.overlay').click(function() {
        $(this).toggleClass('click');
        $('.menu_mobile').toggleClass('show');
        $('.overlay').toggleClass('show');
    });
    $('.search-icon').click(function() {
        $(this).toggleClass("click");
        $('.block_search').toggleClass("show");
    });
}

function mappingMenu() {
    $('header .header-menu .nav-menu').mapping({
        mobileWrapper: 'header .menu_mobile .mobile-wrapper',
        mobileMethod: 'appendTo',
        desktopWrapper: 'header .header-menu',
        desktopMethod: 'prependTo',
        breakpoint: 1279
    });
    $('header .header-infor .searchbox ').mapping({
        mobileWrapper: 'header .menu_mobile .mobile-wrapper',
        mobileMethod: 'appendTo',
        desktopWrapper: 'header .header-infor',
        desktopMethod: 'prependTo',
        breakpoint: 1279
    });
    $('header .header-infor .hotline-wrapper .hotline-box ').mapping({
        mobileWrapper: 'header .menu_mobile .mobile-wrapper',
        mobileMethod: 'appendTo',
        desktopWrapper: 'header .header-infor .hotline-wrapper',
        desktopMethod: 'prependTo',
        breakpoint: 1279
    });
}


function swiperInit() {
    var homerSwiper = new Swiper(".home-banner .swiper-container", {
        // Optional parameters
        speed: 1205,
        slidesPerView: 1,
        autoplay: {
            delay: 3000
        },
        pagination: {
            el: ".home-banner-pagination",
            type: "bullets",
            clickable: "true"
        }
    });
    var homeSlideSwiper = new Swiper(".home_s-1 .swiper-container", {
        // Optional parameters
        speed: 1000,
        spaceBetween: 15,
        breakpointsInverse: true,
        navigation: {
            nextEl: '.home_s-1 .nav-arrow-next',
            prevEl: '.home_s-1 .nav-arrow-prev',
        },
        breakpoints: {
            320: {
                slidesPerView: 1,
            },
            400: {
                slidesPerView: 1,
            },
            480: {
                slidesPerView: 1,
            },
            768: {
                slidesPerView: 3,
            },
            1025: {
                slidesPerView: 4,
            },
            1440: {
                slidesPerView: 4,
            },
        },
    });
    var homeSlideSwiper = new Swiper(".home_s-2 .swiper-container", {
        // Optional parameters
        speed: 1000,
        spaceBetween: 20,
        breakpointsInverse: true,
        navigation: {
            nextEl: '.home_s-2 .nav-arrow-next',
            prevEl: '.home_s-2 .nav-arrow-prev',
        },
        breakpoints: {
            320: {
                slidesPerView: 1,
            },
            400: {
                slidesPerView: 1,
            },
            480: {
                slidesPerView: 1,
            },
            768: {
                slidesPerView: 3,
            },
            1025: {
                slidesPerView: 5,
            },
            1440: {
                slidesPerView: 5,
            },
        },
    });
    var homeSlideSwiper = new Swiper(".home_s-3 .swiper-container", {
        // Optional parameters
        speed: 1000,
        spaceBetween: 20,
        breakpointsInverse: true,
        navigation: {
            nextEl: '.home_s-3 .nav-arrow-next',
            prevEl: '.home_s-3 .nav-arrow-prev',
        },
        breakpoints: {
            320: {
                slidesPerView: 1,
            },
            400: {
                slidesPerView: 1,
            },
            480: {
                slidesPerView: 1,
            },
            768: {
                slidesPerView: 3,
            },
            1025: {
                slidesPerView: 5,
            },
            1440: {
                slidesPerView: 5,
            },
        },
    });
    var homeSlideSwiper = new Swiper(".home_s-4 .swiper-container", {
        // Optional parameters
        speed: 1000,
        spaceBetween: 20,
        breakpointsInverse: true,
        navigation: {
            nextEl: '.home_s-4 .nav-arrow-next',
            prevEl: '.home_s-4 .nav-arrow-prev',
        },
        breakpoints: {
            320: {
                slidesPerView: 1,
            },
            400: {
                slidesPerView: 1,
            },
            480: {
                slidesPerView: 1,
            },
            768: {
                slidesPerView: 3,
            },
            1025: {
                slidesPerView: 5,
            },
            1440: {
                slidesPerView: 5,
            },
        },
    });
    var homeSlideSwiper = new Swiper(".home_s-5 .swiper-container", {
        // Optional parameters
        speed: 1000,
        spaceBetween: 20,
        breakpointsInverse: true,
        navigation: {
            nextEl: '.home_s-5 .nav-arrow-next',
            prevEl: '.home_s-5 .nav-arrow-prev',
        },
        breakpoints: {
            320: {
                slidesPerView: 1,
            },
            400: {
                slidesPerView: 1,
            },
            480: {
                slidesPerView: 1,
            },
            768: {
                slidesPerView: 3,
            },
            1025: {
                slidesPerView: 5,
            },
            1440: {
                slidesPerView: 5,
            },
        },
    });
}

function setBackgroundElement() {
    $('[setBackground]').each(function() {
        var background = $(this).attr('setBackground')
        $(this).css({
            "background-image": "url(" + background + ")",
            "background-size": "cover",
            "background-position": "center center"
        });
    });
    $('[setBackgroundRepeat]').each(function() {
        var background = $(this).attr('setBackgroundRepeat')
        $(this).css({
            "background-image": "url(" + background + ")",
            "background-repeat": "repeat"
        });
    });
}

$(document).on('scroll', function() {
    header.scrollActive()
});