$(document).ready(function(){
    
    // Visual Slider
    var swiper = new Swiper(".main_visual", {
        effect: "fade",
        speed: 1200,
        autoplay: {
            delay: 5500,
            disableOnInteraction: false,
          },
        pagination: {
          el: ".swiper-pagination",
          clickable: true,
        },
        allowTouchMove: false,
    });

    // Banner Slider
    var swiper = new Swiper(".banner", {
        speed: 800,
        autoplay: {
            delay: 5000,
            disableOnInteraction: false,
        },
        // pagination: {
        //   el: ".swiper-pagination",
        //   clickable: true,
        // },
        allowTouchMove: false,
    });
      

});