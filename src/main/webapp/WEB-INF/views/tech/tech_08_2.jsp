<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>SKIN QURATOR</title>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/static/js_old/lib/jquery-3.6.1.min.js" ></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/static/js_old/lib/jquery-1.6.4.min.js" ></script>

    <jsp:include page="../common/common.jsp"/>
</head>
<body class="page_tech">
    <jsp:include page="../common/header.jsp"/>

     <!-- Container -->
     <section class="container">

        <!-- 컨텐츠 상단 서브 메뉴 -->
        <div class="lnb_wrap">
            <div class="inner">
                <div class="lnb">
                    <button type="button">파이</button>
                    <ul>
                        <li><a href="${pageContext.request.contextPath}/beautytech/tech_01_1">아람휴비스</a></li>
                        <li><a href="${pageContext.request.contextPath}/beautytech/tech_02_1">초위스컴퍼니</a></li>
                        <li><a href="${pageContext.request.contextPath}/beautytech/tech_03_1">룰루랩</a></li>
                        <li><a href="${pageContext.request.contextPath}/beautytech/tech_04_1">릴리커버</a></li>
                        <li><a href="${pageContext.request.contextPath}/beautytech/tech_05_1">링커버스</a></li>
                        <li><a href="${pageContext.request.contextPath}/beautytech/tech_06_1">에프앤디파트너스</a></li>
                        <li><a href="${pageContext.request.contextPath}/beautytech/tech_07_1">케이씨테크놀러지</a></li>
                        <li class="active"><a href="${pageContext.request.contextPath}/beautytech/tech_08_1">파이</a>
                            <ul>
                                <li><a href="${pageContext.request.contextPath}/beautytech/tech_08_1">회사소개</a></li>
                                <li class="active"><a href="${pageContext.request.contextPath}/beautytech/tech_08_2">피부진단기 모델</a></li>
                            </ul>
                        </li>
                        <li><a href="${pageContext.request.contextPath}/beautytech/tech_09_1">헬리오스</a></li>
                        <li><a class="last" href="${pageContext.request.contextPath}/beautytech/tech_10_1">인바디</a></li>
                    </ul>
                </div>

                <ul class="depth_03">
                    <li><a href="${pageContext.request.contextPath}/beautytech/tech_08_1">회사소개</a></li>
                    <li class="active"><a href="${pageContext.request.contextPath}/beautytech/tech_08_2">피부진단기 모델</a></li>
                </ul>
            </div>
        </div>
        <!-- //컨텐츠 상단 서브 메뉴 -->

        <!-- 타이틀 -->
        <div class="title title_bg_04">
            <div class="inner">
                <div class="txtbox">
                    <div class="tit_s ff_nm">My Skin Guide Platform</div>
                    <h3 class="ff_nm">파이</h3>
                    <p>최첨단 피부진단기 기술력을 보유한 <br />
                        피부연구를 선도하는 회사들을 소개 해 드립니다. </p>
                </div>
            </div>
        </div>
        <!-- //타이틀 -->

        <!-- 컨텐츠 -->
        <div class="content pie_model">
            <div class="inner">

                <h2 class="ff_nm bar">피부진단기 모델</h2>

                <div class="box mb_50">
                    <h4 class="tit mb_50 of_h"><span class="num">1</span>피부진단기기 모델명: 
                        <span class="model_name fr">야누스 프로 하이브리드(JANUS Pro Hybrid), 야누스 프로 선라이크(JANUS Pro Sunlike) <br />
                        포커스킨(Focuskin), 두피 탈모 분석기 시프 프로(Sif Pro)</span></h4>

                    <h4 class="tit"><span class="num">2</span>피부진단기기 기능</h4>
                    <div class="linebox model mb_80">
                        <p class="txt1 mb_60">고해상도 카메라, 4가지 광원, 원터치 수납형 외광차단 후드, 13가지 항목 피부분석, 모바일 앱, 얼굴 자동 인식, 18개국어 지원, 피부분석 결과 QR코드 또는 이메일 전송</p>
                        <p class="ta_c"><img width="312" height="64"  height="80" src="${pageContext.request.contextPath}/resources/static/images_old/tech/pie_model_img01.jpg" alt="JANUS Pro" /></p>
                        <p class="ta_c txt2">안면 피부 분석기 <span class="vr">I</span> 5세대 야누스</p>
                        <p class="ta_c mb_60"><img width="1008" height="301" height="80" src="${pageContext.request.contextPath}/resources/static/images_old/tech/pie_model_img02.jpg" alt="JANUS Pro 피부진단기" /></p>
                    </div>

                    <h4 class="tit"><span class="num">3</span>피부진단기기 사용 방법</h4>
                    <ol class="ol_number type model mb_70">
                        <li><span class="num">1</span>고객정보 입력</li>
                        <li><span class="num">2</span>얼굴 촬영</li>
                        <li><span class="num">3</span>수분측정</li>
                        <li><span class="num">4</span>분석영역 설정(자동)</li>
                        <li><span class="num">5</span>결과 보기 및 상담</li>
                        <li><span class="num">6</span>결과 전송</li>
                    </ol>

                    <h4 class="tit"><span class="num">4</span>피부진단기기 측정 항목</h4>
                    <ul class="bul_cir">
                        <li>13항목(모공, 주름, 팔자주름, 탄력, 턱선각도, 색소침착, UV 색소침착, 피부결, 홍조, 피부톤, 피지, 포피린, 수분) , 피부타입, AI 피부지수</li>
                    </ul>
                </div>

            </div>
        </div>
        <!-- //컨텐츠 -->

    </section>
    <!-- //Container -->
 <!-- Footer -->
    <jsp:include page="../common/footer.jsp"/>
</body>
</html>