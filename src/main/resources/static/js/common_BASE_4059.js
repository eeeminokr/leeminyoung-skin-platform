 $(function(){
  // scroll Fixed
  var didScroll; 
  var lastScrollTop = 0; 
  var delta = 5; 
  var headerH = $('.header').outerHeight(); 

  $(window).scroll(function(event){ didScroll = true; }); 
  setInterval(function() { 
      if (didScroll) { 
          hasScrolled(); 
          didScroll = false; 
          } 
      }, 250); 
  function hasScrolled() { 
      var st = $(this).scrollTop();

      if(Math.abs(lastScrollTop - st) <= delta) return; 

      if (st > lastScrollTop && st > 0 ){ 
          // Scroll Down 
          $('.header').addClass('scrolled');
      } else {
          // Scroll Up 
          if(st + $(window).height() < $(document).height()) { 
              $('.header').addClass('scrolled');
          }

          if(st < headerH) { 
              $('.header').removeClass('scrolled');
          }
      }

      lastScrollTop = st;
  }

  // Side Menu
  $('.side_menu').find('button').click(function(){
      var sideMenu = $(this).closest('.side_menu');
      if(sideMenu.hasClass('open') === true) {
          sideMenu.removeClass('open').find('ul').slideUp();
      } else {
          sideMenu.addClass('open').find('ul').slideDown();
      }
  });

  // Main Gnb
  $('body').each(function(){
      var gnb01 = $('body').hasClass('page_business');
      var gnb02 = $('body').hasClass('page_cosmetic');
      var gnb03 = $('body').hasClass('page_solution');
      var gnb04 = $('body').hasClass('page_tech');
      var gnb05 = $('body').hasClass('page_performance');
      var gnb06 = $('body').hasClass('page_service');
      var gnb07 = $('body').hasClass('page_community');
      var gnbList = $('.gnb').find('.depth_01');

      if(gnb01 === true) {
          gnbList.children('li').eq(0).addClass('active');
      } else if (gnb02 === true) {
          gnbList.children('li').eq(1).addClass('active');
      } else if (gnb03 === true) {
          gnbList.children('li').eq(2).addClass('active');
      } else if (gnb04 === true) {
          gnbList.children('li').eq(3).addClass('active');
      } else if (gnb05 === true) {
          gnbList.children('li').eq(4).addClass('active');
      } else if (gnb06 === true) {
          gnbList.children('li').eq(5).addClass('active');
      } else if (gnb07 === true) {
          gnbList.children('li').eq(6).addClass('active');
      }
  });

  //'진단이력관리' 클릭시 로그인이 되어있지 않으면 로그인 페이지로 이동
  $('.gnb a[href*="solution_04_1"]').on('click', function(evt) {
    let token = sessionStorage.getItem("token");

    if (token == null || token == undefined) {   
        evt.preventDefault();
        alert('로그인이 필요합니다');
        location.href = getContextPath()+'/login';
    }
  });

  // Lnb
  $('.lnb').each(function(){
      var lnbHeight = $(this).find('>ul').outerHeight();
      $(this).find('>ul').css({height: 0});

      $(this).find('button').click(function(){
          if($(this).parent().hasClass('on') === true) {
              $(this).next().css({height: 0});
              $(this).parent().removeClass('on');
          } else {
              $(this).next().css({height: lnbHeight+'px'});
              $(this).parent().addClass('on');
          }
      });
  });

  // Tabs
  $('.tabs').each(function(){
      $(this).find('a').click(function(){
          var tabCont = $(this).attr('href');
          $(this).parent().addClass('active').siblings().removeClass('active');
          $('.tab_cont').hide();
          $(tabCont).fadeIn(100);
          return false;
      });
  });

  // Top button
  $( '.gotop' ).click( function() {
      $( 'html, body' ).animate( { scrollTop : 0 }, 300 );
      return false;
  });

  // FAQ
  $('.faq_list').each(function(){
      
      $('.faq_q').click(function(){
          var parentEl = $(this).parent();

          if(parentEl.hasClass('open') === true){
              parentEl.removeClass('open').find('.faq_a').slideUp();
          } else {
              parentEl.siblings().removeClass('open').find('.faq_a').slideUp();
              parentEl.addClass('open').find('.faq_a').slideDown();
          }
      });

  });

  //Popup Close
  $('.popup').each(function(){
      $(this).find('.btn_close').click(function(){
          $('.popup_bg, .popup').fadeOut();
      });
  });

  //input file style
  if (document.getElementById('input_file')) {
    $('#input_file').on('change',function(){
        var fileName = $('#input_file').val();
        $('.upload_name').val(fileName);
    });
  }
  

  // 회원가입 - 맞춤형화장품 조제관리사 자격증 등록
  $('input[name="join_radio_01"]').click(function(){
      var $this = $(this);
      if($this.val() == 'Y') {
          $this.closest('li').find('.addbox').show();
      } else {
          $this.closest('li').find('.addbox').hide();
      }
  });
  /*  
    function getContextPath() {
  	  var hostIndex = location.href.indexOf( location.host ) + location.host.length;
      alert("hostIndex:"+hostIndex)
      alert("location.href.indexOf('/', hostIndex + 1)"+location.href.substring(location.href.indexOf('/', hostIndex + 1)))
      alert("location.href.indexOf('/', hostIndex)"+location.href.substring(location.href.indexOf('/', hostIndex-1)))
  	  var contextPath = location.href.substring( hostIndex, location.href.indexOf('/', hostIndex + 1) );
  	
  	  return contextPath;
  };
*/

	//Popup Close
    $('.popup').each(function(){
        $(this).find('.btn_st2').click(function(){
            $('.popup_bg, .popup').fadeOut();
        });
    });


//   $("#weathers").click(function(e){
//       e.preventDefault();
//    //   window.open(getContextPath()+"/useinfo/weather", "_blank", "height:500, width:500"); 
//    $('#weatherShow').show();
//     //$('.popup_bg, .pop_weather').show();
//       //$('.popup_bg, .popup').fadeIn();
//   });

/*  
  $("#weathers").click(function(e){
    e.preventDefault();
 //   window.open(getContextPath()+"/useinfo/weather", "_blank", "height:500, width:500"); 
    $('.popup_bg, .pop_weather').show();
    //$('.popup_bg, .popup').fadeIn();
});
*/

    


    if(window.location.pathname.includes('solution') === false){

        for(let i =0; i < sessionStorage.length; i++){
            let key = sessionStorage.key(i);
            if(key.includes('check_step') === true){
            sessionStorage.removeItem(key)
            }

        }

    }




  
  //닫기 버튼을 눌렀을 때
  $(".window .close").click(function (e) {  
      //링크 기본동작은 작동하지 않도록 한다.
      e.preventDefault();  
      $("#mask, .window").hide();  
  });       

  //검은 막을 눌렀을 때
  $("#mask").click(function () {  
      $(this).hide();  
      $(".window").hide();  

  });  

  sessionStorage.setItem("contextpath",window.location.pathname.substring(0,window.location.pathname.indexOf("/",0)));
  




  loginCheck();  
  
  if($(".member").text()=="LOGOUT"){
    $(".member").click(function(){
        sessionStorage.removeItem("token");
        
        fetch(getContextPath+"/signout",{
            method:"POST",
            headers: {
                'content-Type': 'application/json',
            },
            // body: JSON.stringify({
                
            // })
        })
        .then(response => response.json())
        .then((data) =>{
            console.debug('성공', data);
            location.href = ctx+"/"
        })
        .catch((error) => {
            console.error('실패:', error)
        });

    });
  };
  $(".prepares").click(function(e){
    e.preventDefault();
    $('.popup_bg').show();
    $('.pop_prepares').show();
});
});




function getContextPath() {
    return sessionStorage.getItem("contextpath")
}


function loginCheck(){
    let token = sessionStorage.getItem("token");
    
    //1. token check 
    //2. token이 있다면 로그아웃 표시, 
    //3. token이 없다면 로그인, 회원가입 뜨게 하기 
            
    if(token != null & token != undefined){
        $(".member").html('<a href="'+getContextPath()+'/logout">LOGOUT</a>')
        //$(".member").html('<span>LOGOUT<span>')
    }else{
        $(".member").html('<a href ="'+getContextPath()+'/login">LOGIN</a>'
        + '<a href="'+getContextPath()+'/join/signUpTerms">회원가입</a>');
    }
}

