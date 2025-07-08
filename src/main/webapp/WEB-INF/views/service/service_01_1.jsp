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
                    <button type="button">스마트미러</button>
                    <ul>
                        <li class="active"><a href="${pageContext.request.contextPath}/service/service_01_1">스마트미러</a>
                            <ul>
                                <li class="active"><a href="${pageContext.request.contextPath}/service/service_01_1">스마트미러&amp;피부진단 시스템</a></li>
                                <li><a href="${pageContext.request.contextPath}/service/service_01_2">맞춤형화장품 플래그십 스토어</a></li>
                            </ul>
                        </li>
                        <li><a class="last" href="${pageContext.request.contextPath}/service/service_02_1">스마트팩토리</a></li>
                    </ul>
                </div>

                <ul class="depth_03">
                    <li class="active"><a href="${pageContext.request.contextPath}/service/service_01_1">스마트미러&amp;피부진단 시스템</a></li>
                    <li><a href="${pageContext.request.contextPath}/service/service_01_2">맞춤형화장품 플래그십 스토어</a></li>
                </ul>
            </div>
        </div>
        <!-- //컨텐츠 상단 서브 메뉴 -->

        <!-- 타이틀 -->
        <div class="title title_bg_05">
            <div class="inner">
                <div class="txtbox">
                    <div class="tit_s ff_nm">My Skin Guide Platform</div>
                    <h3 class="ff_nm">스마트미러</h3>
                    <p>맞춤형화장품용 스마트미러는 개인 맞춤형 <br />
                        화장품 분야를 선도하는 앞서가는 기술력으로 <br />
                        제작된 광학 피부 시스템입니다.</p>
                </div>
            </div>
        </div>
        <!-- //타이틀 -->
    <!-- 컨텐츠 -->
    <div class="content factory">
        <div class="inner">

            <h2 class="ff_nm bar">스마트미러&amp;피부진단 시스템</h2>
            <div class="box1 mb_200">
                <img width="1200" height="231" src="${pageContext.request.contextPath}/resources/static/images_old/common/preparing.jpg" alt="페이지 준비중입니다." />
            </div>

        </div>
    </div>
    <!-- //컨텐츠 -->

    </section>
    <!-- //Container -->

    <jsp:include page="../common/footer.jsp"/>
</body>
</html>