$(document).ready(function(){

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
        var gnb05 = $('body').hasClass('page_service');
        var gnb06 = $('body').hasClass('page_community');
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
                $(this).next().css({
                    height: lnbHeight+'px'
                });
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

    // FAQ, 인바디기술
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
    $('.filebox').each(function(){
        var labelFor = $(this).find('label').attr('for');
        var inputId =  $('#'+labelFor);
        
        inputId.on('change',function(){
            var fileName = inputId.val();
            $(this).closest('.filebox').find('.upload_name').val(fileName);
        });
    });


    // 회원가입 - 맞춤형화장품 조제관리사 자격증 등록
    $('input[name="certificate"]').change(function(){
        var $this = $(this);
        if($this.val() == '1') {
            $this.closest('li').find('.addbox').show();
        } else {
            $this.closest('li').find('.addbox').hide();
        }
    });

    // 회원정보 수정 - 맞춤형화장품판매업 신고필증 등록
    $('input[name="declaration"]').change(function(){
        var $this = $(this);
        if($this.val() == '1') {
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

    

  //'진단이력관리' 클릭시 로그인이 되어있지 않으면 로그인 페이지로 이동
//   $('.gnb a[href*="solution_04_1"]').on('click', function(evt) {
//     let token = sessionStorage.getItem("token");

//     if (token == null || token == undefined) {   
//         evt.preventDefault();
//         alert('로그인이 필요합니다');
//         location.href = getContextPath()+'/login';
//     }
//   });

// 바우만번호고치기
    const solutionLink = document.querySelector('.gnb a[href*="solution_04_2"]');
    if ( solutionLink != null ) {
        solutionLink.addEventListener('click', function(evt) {
            let token = sessionStorage.getItem("token");
            
            if (token == null || token == undefined) {   
                evt.preventDefault();
                alert('로그인이 필요합니다');
                location.href = getContextPath()+'/login';
            }
        });
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

    $(".prepares").click(function(e){
        e.preventDefault();
        $('.popup_bg').show();
        $('.pop_prepares').show();
    });

    // 달력
    $('.datepicker').datepicker({ dateFormat: 'yy-mm-dd' });

    // 달력아이콘 있는 스타일
    $( ".datepic_icon" ).datepicker({
        showOn: "button",
        buttonImage: ctxPath + "/resources/static/images/common/ico_calendar.png",
        buttonImageOnly: true,
        buttonText: "달력",
        dateFormat: 'yy-mm-dd'
    });
    
});


function getContextPath() {
    // return sessionStorage.getItem("contextpath")
    return ctxPath;
}

 function dologout() {
     //sessionStorage.removeItem("token");
     sessionStorage.removeItem("token");

     $.ajax({
         // url : ctxPath+"/signout",
         // type : "GET",
         // url : ctxPath+"/logout",
         url : ctxPath+"/api/logout",
         type : "POST",
         data : {email: name},
         dataType : 'json',
         success : function(data){
             console.debug('성공', data);
             sessionStorage.removeItem("member");
             sessionStorage.clear();
             location.href = ctxPath+"/"
         },
         error : function(error){
             console.error('실패:', error);
             sessionStorage.removeItem("member");
             sessionStorage.clear();
              location.href = ctxPath+"/"
         },
         done : function(error){
             sessionStorage.removeItem("member");
             sessionStorage.clear();
            location.href = ctxPath+"/"
            // console.error('실패:', error);
         },
     })
 }

function loginCheck(){
    let token = sessionStorage.getItem("token");
    console.log("token : " + token);
    //1. token check 
    //2. token이 있다면 로그아웃 표시,
    //3. token이 없다면 로그인, 회원가입 뜨게 하기
            
    if(token != null & token != undefined){
        $(".member").html('<a href="'+getContextPath()+'/" onclick="dologout()">LOGOUT</a>'
        // + '<a href="'+getContextPath()+'/join/updateUser">회원정보수정</a>');
        + '<a href="'+getContextPath()+'/member/update">회원정보수정</a>');
        //$(".member").html('<span>LOGOUT<span>')
    }else{
        $(".member").html('<a href ="'+getContextPath()+'/login" >LOGIN</a>'
        // + '<a href="'+getContextPath()+'/join/signUpTerms">회원가입</a>');
        + '<a href="'+getContextPath()+'/member/joinTypeSelect">회원가입</a>');
    }
}

/*
          * 날자 입력 제한 형식  " YYYYMMDD, YYYY-MM-DD, YYYY/MM/DD
          *  return  > 0: 정상, 1: 날자형식 아님.
          */
function isDate(yyyymmdd) {

    var yy, mm, dd, splitStr = '-';

    // 8자리로 입력된 경우,
    if (yyyymmdd.length == 8)
    {
        if (!yyyymmdd.match(/[0-9]{8}/g))
        {
            // alert('is not date');
            return false;    // 입력값 오류
        }
        yy = yyyymmdd.substring(0, 4);
        mm = yyyymmdd.substring(4, 6);
        dd = yyyymmdd.substring(6, 8);
    }
    // 10자리 입력
    else if (yyyymmdd.length == 10)
    {
        if (!yyyymmdd.match(/[0-9]{4}[-/][0-9]{2}[-/][0-9]{2}/g))
        {
            // alert('is not date');
            return false;    // 입력값 오류
        }

        if(yyyymmdd.indexOf('/')>0)  splitStr = '/';

        yy = yyyymmdd.split(splitStr)[0];
        mm = yyyymmdd.split(splitStr)[1];
        dd = yyyymmdd.split(splitStr)[2];
    }
    // 그외 .  입력형식 에러   YYYYMMDD, YYYY-MM-DD, YYYY/MM/DD  형태만가능
    else
    {
        return false;
    }

    // 1000년 이하인 경우 에러처리
    if(eval(yy)<1000)
    {
        // alert('is not year');
        return false;    // 입력값 오류
    }

    // 해당월이 1보다 작거나 12보다 큰 겨우.
    if (eval(mm) < 1 || eval(mm) > 12)
    {
        // alert('is not month');
        return false;
    }

    // 해당월의 마지막 날자
    var limit_day;
    switch (eval(mm))
    {
        case 2:
            if ((yy - 2008) % 4 == 0) limit_day = 29;
            else limit_day = 28;
            break;
        case 4:        case 6:        case 9:        case 11:
        limit_day = 30;
        break;
        default:  // 1 ,3, 5, 7, 8, 10, 12
            limit_day = 31;
            break;
    }
    // 해당월의 날자 초과  하거나, 해당일의 수가 1보다 작은 경우
    if (eval(dd) > limit_day || eval(dd) < 1)
    {
        // alert('is not day');
        return false;
    }
    return true;
}

