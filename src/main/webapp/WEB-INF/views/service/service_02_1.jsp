<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>SKIN QURATOR</title>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/static/js_old/lib/jquery-3.6.1.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/static/js_old/lib/jquery-1.6.4.min.js"></script>

    <jsp:include page="../common/common.jsp"/>
</head>
<body class="page_solution">
    <jsp:include page="../common/header.jsp"/>


  <!-- Container -->
    <section class="container">

        <!-- 컨텐츠 상단 서브 메뉴 -->
        <div class="lnb_wrap">
            <div class="inner">
                <div class="lnb">
                    <button type="button">스마트팩토리</button>
                    <ul>
                        <li><a href="${pageContext.request.contextPath}/service/service_01_1">스마트미러</a></li>
                        <li class="active"><a class="last" href="${pageContext.request.contextPath}/service/service_02_1">스마트팩토리</a></li>
                    </ul>
                </div>

                <ul class="depth_03">
                    <li class="active"><a href="${pageContext.request.contextPath}/service/service_02_1">맞춤형화장품용 스마트팩토리</a></li>
                </ul>
            </div>
        </div>
        <!-- //컨텐츠 상단 서브 메뉴 -->

        <!-- 타이틀 -->
        <div class="title title_bg_05">
            <div class="inner">
                <div class="txtbox">
                    <div class="tit_s ff_nm">My Skin Guide Platform</div>
                    <h3 class="ff_nm">스마트팩토리</h3>
                    <p>맞춤형화장품용 스마트팩토리는 개인 맞춤형 <br />
                        화장품 분야를 선도하는 앞서가는 기술력으로 <br />
                        제작된 광학 피부 시스템입니다.</p>
                </div>
            </div>
        </div>
        <!-- //타이틀 -->

        <!-- 컨텐츠 -->
        <div class="content factory">
            <div class="inner">

                <h2 class="ff_nm bar">맞춤형화장품용 스마트팩토리</h2>
                <div class="box1">
                    <p class="txt1 ta_c mb_90">맞춤형화장품(기초화장품)을 제조하기 위하여 베이스 제형이 충진 된 전용용기에 <br />
                        고민 원료를 자동 충진하고 혼합하여 완제품을 제공하는 장비입니다.</p>
                    <div class="of_h mb_150">
                        <div class="fl">
                            <div class="txt2 ta_c ff_nm">Smart Factory 1</div>
                            <img width="490" height="689" src="${pageContext.request.contextPath}/resources/static/images_old/service/factory_img01.jpg" alt="" />
                        </div>
                        <div class="fr">
                            <div class="txt2 ta_c ff_nm">Smart Factory 2</div>
                            <img width="490" height="689" src="${pageContext.request.contextPath}/resources/static/images_old/service/factory_img02.jpg" alt="" />
                        </div>
                    </div>
                </div>

                <div class="box2 mb_150">
                    <h3>제조 공정</h3>
                    <ul class="factory_process">
                        <li><div>피부진단<br />처방확인<span>(맞춤형화장품 ICT<br />융복합 플랫폼 연동)</span></div></li>
                        <li>제형 타입<br />및 고민원료<br />선택</li>
                        <li>고민원료<br />충진</li>
                        <li>혼합</li>
                        <li>캡핑</li>
                        <li>완제품 제공</li>
                    </ul>
                </div>

                <div class="box3">
                    <div class="of_h mb_150">
                        <img class="fr" width="670" height="560" src="${pageContext.request.contextPath}/resources/static/images_old/service/factory_img03.jpg" alt="" />
                        <h3>Specification</h3>
                        <ol class="ol_number">
                            <li><span class="num">1</span>혼합 장치 회전속도: 100 ~ 800 RPM <br />
                                (자전, 공전 회전방식의 페이스트 믹싱 방식 사용)</li>
                            <li><span class="num">2</span>생산 가능 제형 : 세럼/엠플 50ml, 크림 50ml</li>
                            <li><span class="num">3</span>피부고민 개선물질 카트리지 적재 가능 수: 12종</li>
                            <li><span class="num">4</span>피부고민 개선물질 1회 토출량: 0.1g</li>
                            <li><span class="num">5</span>내부 오염 방지용 UV램프 탑재</li>
                            <li><span class="num">6</span>온/습도 관리 장치 탑재</li>
                            <li><span class="num">7</span>터치스크린 방식의 사용 조작 패널 탑재</li>
                        </ol>
                    </div>
                </div>

                <div class="box4 mb_80">
                    <h3>설치위치</h3>
                    <p>제주테크노파크 바이오융합센터 1호관 품질관리지원동 203호 스마트제조랩</p>
                </div>

            </div>
        </div>
        <!-- //컨텐츠 -->

    </section>
    <!-- //Container -->

    <jsp:include page="../common/footer.jsp"/>
</body>
</html>