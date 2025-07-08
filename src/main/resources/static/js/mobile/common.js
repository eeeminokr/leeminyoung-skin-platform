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
            $('.gotop').addClass('fixed');

        } else {
            // Scroll Up 
            if(st + $(window).height() < $(document).height()) { 

            }

            if(st < headerH) { 
                $('.gotop').removeClass('fixed');
            }
        }

        lastScrollTop = st;
    }

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
    $('input[name="join_radio_01"]').click(function(){
        var $this = $(this);
        if($this.val() == 'Y') {
            $this.closest('li').find('.addbox').show();
        } else {
            $this.closest('li').find('.addbox').hide();
        }
    });

    // 회원정보 수정 - 조제관리사 자격증 등록, 맞춤형화장품판매업 신고필증 등록
    $('.mypage').each(function(){
        $('input[name="join_radio_01"], input[name="join_radio_02"]').click(function(){
            var $this = $(this);
            if($this.val() == 'Y') {
                $this.closest('li').find('.addbox').show();
            } else {
                $this.closest('li').find('.addbox').hide();
            }
        });
    });

    // 테이블 체크박스 All
    $('table').each(function(){
        var $prTable = $(this);
        var $checkAll = $prTable.find('.check_all');
        $checkAll.change(function () {
            var $this = $(this);
            var checked = $this.prop('checked');
            $prTable.find('input[name="table_check"]').prop('checked', checked);
        });

        var boxes = $prTable.find('input[name="table_check"]');
        boxes.change(function () {
            var boxLength = boxes.length;
            var checkedLength = $prTable.find('input[name="table_check"]:checked').length;
            var selectAll = (boxLength == checkedLength);
            $checkAll.prop('checked', selectAll);
        });
    });

    // 모바일 메뉴
    $('.m_menuBtn').click(function(){
        $('.mobile_menu').fadeIn();
        $('body').addClass('menuOpen');
    });

    $('.m_menuClose').click(function(){
        $('.mobile_menu').fadeOut(100);
        $('.mobile_menu').find('.m_gnb').find('.active').removeClass('active');
        $('body').removeClass('menuOpen');
        $('.mobile_menu').find('.m_gnb').find('.dep_02').slideUp()
    });

    $('.m_gnb').find('.dep_01>li>a').click(function(){
        var parentEl = $(this).parent();
        if(parentEl.hasClass('active') === true){
            parentEl.removeClass('active').find('.dep_02').slideUp();
        } else {
            parentEl.siblings().removeClass('active').find('.dep_02').slideUp();
            parentEl.addClass('active').find('.dep_02').slideDown();
        }
        return false;
    });

    // box_scroll - 손모양 생성과 스크롤링으로 사라짐 효과
    $('.box_scroll').each(function () {
        var boxWidth = $(this).outerWidth();
        var boxInnerWidth = $(this).find('>*').outerWidth();
        if(boxWidth < boxInnerWidth){
            $(this).append('<span class="icon"></span>');
        }
    });
	$('.box_scroll').scroll(function () {
		var xPoint = $(this).scrollLeft();
        if(xPoint > 0) {
            $(this).find('.icon').css('opacity','0');
        } else {
            $(this).find('.icon').css('opacity','1');
        }
	});

    // #subTop이 있는 경우 위치로 이동
    var subTop = $('#subTop');
    if (subTop.length){
        var offset = subTop.offset(); 
        $("html, body").scrollTop(offset.top);
    }

    // 3뎁스 메뉴 스크롤링하면 상단에 픽스
    var lnbDepth = $('.lnb_depth');
    if (lnbDepth.length){
        var rectTop = lnbDepth.offset().top;
    }
    $(window).scroll(function(){
        if ($(window).scrollTop() > rectTop) {
            lnbDepth.addClass('fixed');
        } else {
            lnbDepth.removeClass('fixed');
        }
    });

    // 3뎁스 스크롤링
    if (lnbDepth.length){
        var tabSwiper = new Swiper('.tabSwiper', {
            slidesPerView: 'auto',
            spaceBetween: 30,
        });

        $('.tabSwiper').each(function(){
            var activeIndex = $(this).find('.active').index();
            tabSwiper.slideTo(activeIndex);
        });
    }

    sessionStorage.setItem("contextpath",window.location.pathname.substring(0,window.location.pathname.indexOf("/",0)));
    loginCheck();  

    // 달력
    var datePicker = $('.datepicker');
    if (datePicker.length){
        $('.datepicker').datepicker({ dateFormat: 'yy-mm-dd' });
    }

    // 달력아이콘 있는 스타일
    var datepicIocn = $('.datepic_icon');
    if (datepicIocn.length){
        $('.datepic_icon').datepicker({
            showOn: 'button',
            buttonImage: '/resources/static/images/common/ico_calendar.png',
            buttonImageOnly: true,
            buttonText: '달력',
            dateFormat: 'yy-mm-dd'
        });
    }


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
        $(".m_member").html('<a href="'+getContextPath()+'/" onclick="dologout()">LOGOUT</a>'
        // + '<a href="'+getContextPath()+'/join/updateUser">회원정보수정</a>');
        + '<a href="'+getContextPath()+'/member/update">회원정보수정</a>');
        //$(".member").html('<span>LOGOUT<span>')
    }else{
        $(".m_member").html('<a href ="'+getContextPath()+'/login" >LOGIN</a>'
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
