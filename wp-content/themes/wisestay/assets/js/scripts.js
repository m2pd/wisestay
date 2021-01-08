var nhabe360 = (function ($) {
  //SLIDER
  function carousel() {
    $(".discover .slider").slick({
      dots: false,
      infinite: true,
      speed: 500,
      slidesToShow: 6,
      slidesToScroll: 1,
      autoplay: false,
      autoplaySpeed: 2000,
      arrows: true,
      responsive: [
        {
          breakpoint: 600,
          settings: {
            slidesToShow: 2,
            slidesToScroll: 1,
          },
        },
        {
          breakpoint: 400,
          settings: {
            arrows: false,
            slidesToShow: 1,
            slidesToScroll: 1,
          },
        },
      ],
    });
  }

  function addHeader() {
    $(window).scroll(function () {
      var scroll = $(window).scrollTop();
      if (scroll >= 100) {
        $("#header").addClass("scroll");
      } else {
        $("#header").removeClass("scroll");
      }
    });
  }

  function boxCarousel() {
    $("#box-slide").slick({
      dots: false,
      infinite: true,
      speed: 300,
      slidesToShow: 4,
      slidesToScroll: 1,
      touchMove: true,
      prevArrow: $('.am-prev'),
      nextArrow: $('.am-next'),
      responsive: [
        {
          breakpoint: 1024,
          settings: {
            slidesToShow: 2,
            slidesToScroll: 2,
            infinite: true,
          }
        },
        {
          breakpoint: 480,
          settings: {
            slidesToShow: 1,
            slidesToScroll: 1
          }
        }
      ]
    });
  }

  function boxTestimonial() {
    $("#testimonialSlide").slick({
      dots: false,
      infinite: true,
      speed: 300,
      slidesToShow: 2,
      slidesToScroll: 1,
      touchMove: true,
      prevArrow: $('.am-prev'),
      nextArrow: $('.am-next'),
      responsive: [
        {
          breakpoint: 1024,
          settings: {
            slidesToShow: 2,
            slidesToScroll: 2,
            infinite: true,
          }
        },
        {
          breakpoint: 767,
          settings: {
            slidesToShow: 1,
            slidesToScroll: 1
          }
        }
      ]
    });
  }

  return {
    carousel: carousel,
    addHeader: addHeader,
    boxCarousel: boxCarousel,
    boxTestimonial: boxTestimonial,
  };
})(jQuery);
jQuery(document).ready(function () {
  nhabe360.carousel();
  nhabe360.addHeader();
  nhabe360.boxCarousel();
  nhabe360.boxTestimonial();

  //TOOLTIP
  $('[data-toggle="tooltip"]').tooltip();
});
