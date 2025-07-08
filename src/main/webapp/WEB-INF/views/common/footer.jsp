<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!-- Footer -->
    <footer class="footer">
        <div class="banner">
            <div class="inner">
                <ul>
                    <li><a href="http://www.motie.go.kr/" target="_blank"><img width="220" height="59" src="${pageContext.request.contextPath}/resources/static/images_old/common/banner_01.png" alt="산업통상자원부" /></a></li>
                    <li><a href="https://www.jeju.go.kr/" target="_blank"><img width="204" height="59" src="${pageContext.request.contextPath}/resources/static/images_old/common/banner_02.png" alt="제주특별자치도" /></a></li>
                    <li><a href="https://www.kiat.or.kr/" target="_blank"><img width="230" height="59" src="${pageContext.request.contextPath}/resources/static/images_old/common/banner_03.png" alt="한국산업기술진흥원" /></a></li>
                    <li><a href="http://jj.irpe.or.kr/" target="_blank"><img width="208" height="59" src="${pageContext.request.contextPath}/resources/static/images_old/common/banner_04.png" alt="(재) 제주지역사업평가단" /></a></li>
                    <li><a href="https://www.jejutp.or.kr/      " target="_blank"><img width="188" height="59" src="${pageContext.request.contextPath}/resources/static/images_old/common/banner_05.png" alt="제주테크노파크" /></a></li>
                    <li><a href="http://kpcda.org/" target="_blank"><img width="184" height="59" src="${pageContext.request.contextPath}/resources/static/images_old/common/banner_06.png" alt="대한맞춤형화장품조제관리사협회" /></a></li>
                </ul>
            </div>
        </div>
       
        <div class="ft_cont">
            <div class="inner">
                <h1><a href="/">SKIN QURATOR</a></h1>
                <div class="ft_info">
                    <p><span>상호명 : (재)제주테크노파크</span><span>대표자 : 원장 태성길</span><span>사업자번호 : 616-82-15584</span></p>
                    <p>(63208) 제주시 중앙로 217 (이도이동) 제주벤처마루 9F</p>       
                    <p><span>TEL : (064)720-2300</span><span>FAX : (064)751-3443</span><span>플랫폼 문의 : (064)720-2355</span></p>
                    <p>Copyright(c)2022 JEJU TECHNOPARK. All rights reserved.</p>
                </div>
                <ul class="policy_link">
                    <li><a href="${pageContext.request.contextPath}/common/terms">이용약관</a></li>
                    <li><a href="${pageContext.request.contextPath}/common/policy">개인정보처리방침</a></li>
                </ul>
            </div>
        </div>

        <div class="gotop_wrap">
            <a class="gotop" href="">TOP</a>
        </div>
    </footer>
<!--
 <div id="weatherShow" style="display: none;">
        <jsp:include page="../useinfo/weather.jsp"/>
    </div>
    <div id="toursInfoShow" style="display: none;">
        <jsp:include page="../useinfo/toursInfo.jsp"/>
    </div>
    <div id="medicalShow" style="display: none;">
        <jsp:include page="../useinfo/medical.jsp"/>
    </div>
 -->



<div class="popup_bg" style="display: none;"></div>
<div class="popup pop_prepares" style="display: none;">
    <div class="pop_head">
        <button type="button" class="btn_close"><span class="blind">팝업창 닫기</span></button>
    </div>
    <div class="pop_cont">
        <div class="pop_inner">
            <div class="box1 mb_200">
                <img width="1200" height="231" src="${pageContext.request.contextPath}/resources/static/images_old/common/preparing.jpg" alt="페이지 준비중입니다." />
            </div>

        </div>
    </div>
</div>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<!-- <script type="text/javascript" src="${pageContext.request.contextPath}/resources/static/js_old/subweather.js"> </script> -->
<!-- //Footer -->
<script>

$("#weathers").click(function(e){
      e.preventDefault();
   //   window.open(getContextPath()+"/useinfo/weather", "_blank", "height:500, width:500"); 
   $('#weatherShow').show();

  });


</script>