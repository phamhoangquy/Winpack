$(document).ready(function() {
    mappingMenu();
    toggleMobileMenu();
    swiperInit();
    projectDetailSlide();
    tabActive();
    watchMoreDetail();
    setBackgroundElement();
});

// const InsertBd = () => {
//     $(".breadcrumb-wrapper").appendTo("#pagebanner .box-text");
// };

// Tab-Active
function tabActive() {
    $(".tab-navigation li a").on("click", function() {
        $(this)
            .parents(".tab-navigation")
            .find("li")
            .removeClass("active");
        $(this)
            .parents("li")
            .addClass("active");

        var display = $(this).attr("data-type");
        $(".tab-item").removeClass("active");
        $("#" + display).addClass("active");

        let maxHeight = 400;
        let contentTab = $(".tab-wrapper .tab-item .active");
        // console.log(contentTab.height())
        if (contentTab.height() < maxHeight) {
            $(contentTab).find('.btn-view-more').hide()
        }
    });
}

function watchMoreDetail() {
    let watchMore = $(".product-detail-more .btn-view-more");
    let article = $(".product-detail-more  article");
    let cotent = $(".product-detail-more  article .fullcontent");
    let pArray = $(".product-detail-more  article .fullcontent").children();
    watchMore.on("click", function() {
        if ($(this).parents('article').hasClass('active')) {
            cotent.css({
                "max-height": 385 + "px"
            });
            article.removeClass("active");
            $(this).removeClass('open')
        } else {
            $.each(pArray, function(indexInArray, valueOfElement) {
                height += $(valueOfElement).height();
            });
            cotent.not($(this).parents("article").find('.fullcontent')).css({
                "max-height": 400 + "px"
            });
            article.not($(this).parents("article")).removeClass("active");
            $(this).addClass('open')
            $(this).parents("article").find('.fullcontent').css({
                "max-height": "100%"
            });
            $(this).parents("article").addClass("active");
            $("html, body").animate({
                scrollTop: $(this).parents('.fullcontent').offset().top - 20
            });
        }
    });
}

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
    $('header .header-main .header-menu .language-wrapper .language ').mapping({
        mobileWrapper: 'header .header-main .header-infor',
        mobileMethod: 'appendTo',
        desktopWrapper: 'header .header-main .header-menu .language-wrapper',
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

    var homeBrandSwiper = new Swiper(".home_s-6 .swiper-container", {
        // Optional parameters
        breakpointsInverse: true,
        slidesPerColumn: 2,
        slidesPerColumnFill: 'row',
        spaceBetween: 10,
        navigation: {
            nextEl: '.home_s-6 .nav-arrow-next',
            prevEl: '.home_s-6 .nav-arrow-prev',
        },
        breakpoints: {
            320: {
                slidesPerView: 1,
            },
            400: {
                slidesPerView: 2,
            },
            480: {
                slidesPerView: 2,
            },
            768: {
                slidesPerView: 4,
            },
            1025: {
                slidesPerView: 6,
            },
            1440: {
                slidesPerView: 6,
            },
        },
    });

    var otherNews = new Swiper(".other-news .swiper-container", {
        // Optional parameters
        speed: 1000,
        spaceBetween: 20,
        breakpointsInverse: true,
        navigation: {
            nextEl: '.other-news .nav-arrow-next',
            prevEl: '.other-news .nav-arrow-prev',
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

    var otherNews = new Swiper(".recruitment-detail-other .swiper-container", {
        // Optional parameters
        speed: 1000,
        spaceBetween: 20,
        breakpointsInverse: true,
        navigation: {
            nextEl: '.recruitment-detail-other .nav-arrow-next',
            prevEl: '.recruitment-detail-other .nav-arrow-prev',
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
                slidesPerView: 2,
            },
            1025: {
                slidesPerView: 2,
            },
            1440: {
                slidesPerView: 2,
            },
        },
    });

    var productOtherSwiper = new Swiper(".product-detail-4 .swiper-container", {
        // Optional parameters
        speed: 1000,
        spaceBetween: 20,
        breakpointsInverse: true,
        navigation: {
            nextEl: '.product-detail-4 .nav-arrow-next',
            prevEl: '.product-detail-4 .nav-arrow-prev',
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

    var hauMai1Swiper = new Swiper(".haumai-contact .swiper-container", {
        // Optional parameters
        speed: 1000,
        spaceBetween: 20,
        breakpointsInverse: true,
        navigation: {
            nextEl: '.haumai-contact .nav-arrow-next',
            prevEl: '.haumai-contact .nav-arrow-prev',
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

    var hauMai2Swiper = new Swiper(".haumai-contact-2 .swiper-container", {
        // Optional parameters
        speed: 1000,
        spaceBetween: 20,
        breakpointsInverse: true,
        navigation: {
            nextEl: '.haumai-contact-2 .nav-arrow-next',
            prevEl: '.haumai-contact-2 .nav-arrow-prev',
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

    var hauMai3Swiper = new Swiper(".haumai-contact-3 .swiper-container", {
        // Optional parameters
        speed: 1000,
        spaceBetween: 20,
        breakpointsInverse: true,
        navigation: {
            nextEl: '.haumai-contact-3 .nav-arrow-next',
            prevEl: '.haumai-contact-3 .nav-arrow-prev',
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

    var hauMai4Swiper = new Swiper(".haumai-contact-4 .swiper-container", {
        // Optional parameters
        speed: 1000,
        spaceBetween: 20,
        breakpointsInverse: true,
        navigation: {
            nextEl: '.haumai-contact-4 .nav-arrow-next',
            prevEl: '.haumai-contact-4 .nav-arrow-prev',
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

    var hauMai5Swiper = new Swiper(".haumai-contact-5 .swiper-container", {
        // Optional parameters
        speed: 1000,
        spaceBetween: 20,
        breakpointsInverse: true,
        navigation: {
            nextEl: '.haumai-contact-5 .nav-arrow-next',
            prevEl: '.haumai-contact-5 .nav-arrow-prev',
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

    var hauMai6Swiper = new Swiper(".haumai-contact-6 .swiper-container", {
        // Optional parameters
        speed: 1000,
        spaceBetween: 20,
        breakpointsInverse: true,
        navigation: {
            nextEl: '.haumai-contact-6 .nav-arrow-next',
            prevEl: '.haumai-contact-6 .nav-arrow-prev',
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

    var hauMai7Swiper = new Swiper(".haumai-contact-7 .swiper-container", {
        // Optional parameters
        speed: 1000,
        spaceBetween: 20,
        breakpointsInverse: true,
        navigation: {
            nextEl: '.haumai-contact-7 .nav-arrow-next',
            prevEl: '.haumai-contact-7 .nav-arrow-prev',
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

    var hauMai8Swiper = new Swiper(".haumai-contact-8 .swiper-container", {
        // Optional parameters
        speed: 1000,
        spaceBetween: 20,
        breakpointsInverse: true,
        navigation: {
            nextEl: '.haumai-contact-8 .nav-arrow-next',
            prevEl: '.haumai-contact-8 .nav-arrow-prev',
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

    var homeBrandSwiper = new Swiper(".about-3 .swiper-container", {
        // Optional parameters
        breakpointsInverse: true,
        slidesPerColumn: 2,
        slidesPerColumnFill: 'row',
        spaceBetween: 10,
        navigation: {
            nextEl: '.about-3 .nav-arrow-next',
            prevEl: '.about-3 .nav-arrow-prev',
        },
        breakpoints: {
            320: {
                slidesPerView: 1,
            },
            400: {
                slidesPerView: 2,
            },
            480: {
                slidesPerView: 2,
            },
            768: {
                slidesPerView: 4,
            },
            1025: {
                slidesPerView: 6,
            },
            1440: {
                slidesPerView: 6,
            },
        },
    });
}

// Slide project-detail
function projectDetailSlide() {
    var galleryThumbs = new Swiper('.gallery-thumbs', {
        spaceBetween: 60,
        slidesPerView: 4,
        freeMode: true,
        watchSlidesVisibility: true,
        watchSlidesProgress: true,
        breakpoints: {
            280: {
                slidesPerView: 2,
            },
            375: {
                slidesPerView: 2,
            },
            576: {
                slidesPerView: 3,
            },
            1000: {
                slidesPerView: 4,
            }
        }
    });
    var galleryTop = new Swiper('.gallery-top', {
        thumbs: {
            swiper: galleryThumbs
        },
        navigation: {
            nextEl: '.nav-arrow-next',
            prevEl: '.nav-arrow-prev',
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