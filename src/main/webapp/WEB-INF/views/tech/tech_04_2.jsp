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
                    <button type="button">릴리커버</button>
                    <ul>
                        <li><a href="${pageContext.request.contextPath}/beautytech/tech_01_1">아람휴비스</a></li>
                        <li><a href="${pageContext.request.contextPath}/beautytech/tech_02_1">초위스컴퍼니</a></li>
                        <li class="active"><a href="${pageContext.request.contextPath}/beautytech/tech_03_1">룰루랩</a>
                            <ul>
                                <li><a href="${pageContext.request.contextPath}/beautytech/tech_04_1">회사소개</a></li>
                                <li class="active"><a href="${pageContext.request.contextPath}/beautytech/tech_04_2">피부진단기 모델</a></li>
                            </ul>
                        </li>
                        <li><a href="${pageContext.request.contextPath}/beautytech/tech_04_1">릴리커버</a></li>
                        <li><a href="${pageContext.request.contextPath}/beautytech/tech_05_1">링커버스</a></li>
                        <li><a href="${pageContext.request.contextPath}/beautytech/tech_06_1">에프앤디파트너스</a></li>
                        <li><a href="${pageContext.request.contextPath}/beautytech/tech_07_1">케이씨테크놀러지</a></li>
                        <li><a href="${pageContext.request.contextPath}/beautytech/tech_08_1">파이</a></li>
                        <li><a href="${pageContext.request.contextPath}/beautytech/tech_09_1">헬리오스</a></li>
                        <li><a class="last" href="${pageContext.request.contextPath}/beautytech/tech_10_1">인바디</a></li>
                    </ul>
                </div>

                <ul class="depth_03">
                    <li><a href="${pageContext.request.contextPath}/beautytech/tech_04_1">회사소개</a></li>
                    <li class="active"><a href="${pageContext.request.contextPath}/beautytech/tech_04_2">피부진단기 모델</a></li>
                </ul>
            </div>
        </div>
        <!-- //컨텐츠 상단 서브 메뉴 -->

        <!-- 타이틀 -->
        <div class="title title_bg_04">
            <div class="inner">
                <div class="txtbox">
                    <div class="tit_s ff_nm">My Skin Guide Platform</div>
                    <h3 class="ff_nm">릴리커버</h3>
                    <p>최첨단 피부진단기 기술력을 보유한 <br />
                        피부연구를 선도하는 회사들을 소개 해 드립니다. </p>
                </div>
            </div>
        </div>
        <!-- //타이틀 -->

        <!-- 컨텐츠 -->
        <div class="content lilly">
            <div class="inner">

                <h2 class="ff_nm bar">피부진단기 모델</h2>
                <div class="box1 mb_70">
                    <h4 class="tit mb_80"><span class="num">1</span>피부진단기기 모델명: Muilli2 (LC-200)</h4>

                    <h4 class="tit"><span class="num">2</span>피부진단기기 기능</h4>
                    <div class="linebox model mb_120">
                        <p class="mb_90">휴대용 피부진단기기 뮬리는 60배율 카메라와 임피던스 센서를 통해 사용자의 피부 상태를 측정하며 쉬운 사용법으로 누구나 언제 어디서든 자신의 피부를 진단할 수 있습니다. 진단 및 분석 결과는 모바일 어플리케이션, 웹사이트 등을 통해 확인할 수 있습니다.</p>
                        <p class="ta_c mb_150 img1"><img width="914" height="595" src="${pageContext.request.contextPath}/resources/static/images_old/tech/lilly_model_img01.jpg" alt="Muilli2 (LC-200) 사진1" /></p>
                        <p class="ta_c mb_50 img2"><img width="914" height="452" src="${pageContext.request.contextPath}/resources/static/images_old/tech/lilly_model_img02.jpg" alt="Muilli2 (LC-200) 사진2" /></p>
                    </div>

                    <h4 class="tit"><span class="num">3</span>피부진단기기 사용 방법</h4>
                    <ol class="ol_number type model mb_70">
                        <li><span class="num">1</span>앱 실행: 휴대폰 및 태블릿에서 BALANX 앱을 실행 후 메뉴 > 맞춤 화장품 만들기 > 디바이스 진단 선택합니다.</li>
                        <li><span class="num">2</span>기기 실행: 전원 버튼을 2~3초 누른 후 점등 시 앱의 안내에 따라 기기와 앱을 연결합니다.</li>
                        <li><span class="num">3</span>카메라 진단: 앱의 안내에 따라 얼굴의 각 부위별 촬영합니다.</li>
                        <li><span class="num">4</span>임피던스 센서 진단: 앱의 안내에 따라 얼굴의 각 부위별 측정합니다.</li>
                    </ol>

                    <h4 class="tit"><span class="num">4</span>피부진단기기 측정 항목</h4>
                    <ul class="bul_cir">
                        <li>안면: 홍조, 민감도, 색소침착, 유수분도, 주름, 모공</li>
                        <li>두피: 모발 두께, 모발 밀집도, 모공 당 모발 수, 이마 넓이, 탈모 진행도, 유수분도</li>
                    </ul>
                </div>

            </div>
        </div>
        <!-- //컨텐츠 -->

    </section>
    <!-- //Container -->
    <jsp:include page="../common/footer.jsp"/>
</body>
</html>