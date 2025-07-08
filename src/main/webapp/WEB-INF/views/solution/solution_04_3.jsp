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
<body class="page_solution">
    <jsp:include page="../common/header.jsp"/>


 <!-- Container -->
 <section class="container">

   <!-- Container -->
   <section class="container">

    <!-- 컨텐츠 상단 서브 메뉴 -->
    <div class="lnb_wrap">
        <div class="inner">
            <div class="lnb">
                <button type="button">진단이력관리</button>
                <ul>
                    <li><a href="${pageContext.request.contextPath}/solution/solution_01_1">자가진단</a></li>
                    <li><a href="${pageContext.request.contextPath}/solution/solution_02_1">SkinLink</a></li>
                    <li><a href="${pageContext.request.contextPath}/solution/solution_03_1">AI기반 피부진단</a></li>
                    <li class="active"><a href="${pageContext.request.contextPath}/solution/solution_04_1">진단이력관리</a>
                        <ul>
                            <!-- <li><a href="${pageContext.request.contextPath}/solution/solution_04_1">바우만 테스트 이력관리</a></li> -->
                            <li><a href="${pageContext.request.contextPath}/solution/solutionList_04_2">피부진단 이력관리</a></li>
                            <li class="active"><a class="last" href="${pageContext.request.contextPath}/solution/solution_04_3">솔루션 이력관리</a></li>
                        </ul>
                    </li>
                </ul>
            </div>

            <ul class="depth_03">
                <!-- <li><a href="${pageContext.request.contextPath}/solution/solution_04_1">바우만 테스트 이력관리</a></li> -->
                <li><a href="${pageContext.request.contextPath}/solution/solution_04_2">피부진단 이력관리</a></li>
                <li class="active"><a href="${pageContext.request.contextPath}/solution/solution_04_3">솔루션 이력관리</a></li>
            </ul>
        </div>
    </div>
    <!-- //컨텐츠 상단 서브 메뉴 -->

    <!-- 타이틀 -->
    <div class="title title_bg_03">
        <div class="inner">
            <div class="txtbox">
                <div class="tit_s ff_nm">My Skin Guide Platform</div>
                <h3 class="ff_nm">진단이력관리</h3>
                <p>합리적인 진단이력관리로 최적의 맞춤형화장품 <br />
                    플랫폼을 경험 해 보세요!</p>
            </div>
        </div>
    </div>
    <!-- //타이틀 -->

    <!-- 컨텐츠 -->
    <div class="content mgsolution">
        <div class="inner">

            <h2 class="ff_nm bar">솔루션 이력관리</h2>
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