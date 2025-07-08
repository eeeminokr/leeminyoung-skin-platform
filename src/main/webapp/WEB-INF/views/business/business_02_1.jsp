<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>SKIN QURATOR</title>
    <jsp:include page="../common/common.jsp"/>
</head>
<body class="page_business">
    <jsp:include page="../common/header.jsp"/>

    <!-- Container -->
    <section class="container">

<!-- Container -->
<section class="container">

    <!-- 컨텐츠 상단 서브 메뉴 -->
    <div class="lnb_wrap">
        <div class="inner">
            <div class="lnb">
                <button type="button">기관소개</button>
                <ul>
                    <li><a href="${pageContext.request.contextPath}/business/business_01_1">사업소개</a></li>
                    <li class="active"><a href="${pageContext.request.contextPath}/business/business_02_1">기관소개</a>
                        <ul>
                            <li class="active"><a href="${pageContext.request.contextPath}/business/business_02_1">제주테크노파크</a></li>
                            <li><a href="${pageContext.request.contextPath}/business/business_02_2">한국전자통신연구원</a></li>
                            <li><a class="last" href="${pageContext.request.contextPath}/business/business_02_3">제주대학교 산학협력단</a></li>
                        </ul>
                    </li>
                </ul>
            </div>

            <ul class="depth_03">
                <li class="active"><a href="${pageContext.request.contextPath}/business/business_02_1">제주테크노파크</a></li>
                <li><a href="${pageContext.request.contextPath}/business/business_02_2">한국전자통신연구원</a></li>
                <li><a href="${pageContext.request.contextPath}/business/business_02_3">제주대학교 산학협력단</a></li>
            </ul>
        </div>
    </div>
    <!-- //컨텐츠 상단 서브 메뉴 -->

    <!-- 타이틀 -->
    <div class="title title_bg_01">
        <div class="inner">
            <div class="txtbox">
                <div class="tit_s ff_nm">My Skin Guide Platform</div>
                <h3 class="ff_nm">기관소개</h3>
                <p>데이터 활용 맞춤형화장품 기반 조성으로 <br />
                    K-뷰티산업을 선도 하겠습니다.</p>
            </div>
        </div>
    </div>
    <!-- //타이틀 -->

    <!-- 컨텐츠 -->
    <div class="content jeju_park">
        <div class="inner">
            <h2 class="ff_nm bar">제주테크노파크</h2>

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