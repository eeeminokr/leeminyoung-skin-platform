<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>SKIN QURATOR</title>
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>

    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/static/js_old/solution.js" > </script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/static/js_old/lib/jquery-3.6.1.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/static/js_old/lib/jquery-1.6.4.min.js"></script>
    <!-- jquery -->
	<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
	<!-- jquery-ui -->
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<!-- jquery-ui css -->
	<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css"> 
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
                    <button type="button">SkinLink</button>
                    <ul>
                        <li><a href="${pageContext.request.contextPath}/solution/solution_01_1">자가진단</a></li>
                        <li class="active"><a href="${pageContext.request.contextPath}/solution/solution_02_1">SkinLink</a>
                            <ul>
                                <li><a href="${pageContext.request.contextPath}/solution/solution_02_1">SkinLink 솔루션 개요</a></li>
                                <li class="active"><a href="${pageContext.request.contextPath}/solution/solution_02_2">SkinLink 피부진단</a></li>
                            </ul>
                        </li>
                        <li><a href="${pageContext.request.contextPath}/solution/solution_03_1">AI기반 피부진단</a></li>
                        <li><a class="last" href="${pageContext.request.contextPath}/solution/solution_04_1">진단이력관리</a></li>
                    </ul>
                </div>

                <ul class="depth_03">
                    <li><a href="${pageContext.request.contextPath}/solution/solution_02_1">SkinLink 솔루션 개요</a></li>
                    <li class="active"><a href="${pageContext.request.contextPath}/solution/solution_02_2">SkinLink 피부진단</a></li>
                </ul>
            </div>
        </div>
        <!-- //컨텐츠 상단 서브 메뉴 -->

        <!-- 타이틀 -->
        <div class="title title_bg_03">
            <div class="inner">
                <div class="txtbox">
                    <div class="tit_s ff_nm">My Skin Guide Platform</div>
                    <h3 class="ff_nm">SkinLink</h3>
                    <p>빅데이터를 기반으로 개발한 피부진단 및 <br />
                        제품 추천 알고리즘 플랫폼으로 고객의 <br />
                        피부고민에 적합한 제품을 추천 해 드립니다.</p>
                </div>
            </div>
        </div>
        <!-- //타이틀 -->

        <!-- 컨텐츠 -->
        <div class="content sllink">
            <div class="inner">

                <h2 class="ff_nm bar">SkinLink 피부진단</h2>

                <p class="txt_info ta_c mb_100">아래의 체험하기 버튼을 클릭하시면 SkinLink 피부진단, 추천 솔루션을 체험하실 수 있습니다.</p>

                <ul class="skinlink mb_100">
                    <li class="fl">
                        <div class="inbox">
                            <span class="sl_tit"><em class="num">1</em>피부진단 기반 제품추천</span>
                            <img width="346" height="209" src="${pageContext.request.contextPath}/resources/static/images_old/solution/sllink_img01.png" alt="SkinLink - All Valuable Link With Your Skin" />
                            <a class="btn" href="http://on.skinlink.co.kr/question/SKINLINK/report1?SID=20210907002B&MID=SKLK0001&CID=TEST1234" target="_blank" rel="noopener noreferrer" title="새창">체험하기</a>
                        </div>
                    </li>
                    <li class="fr">
                        <div class="inbox">
                            <span class="sl_tit"><em class="num">2</em>피부진단 기반 원료추천</span>
                            <img width="346" height="209" src="${pageContext.request.contextPath}/resources/static/images_old/solution/sllink_img02.png" alt="SkinLink - All Valuable Link With Your Skin" />
                            <a class="btn" href="http://on.skinlink.co.kr/question/SKINLINK/report2?MID=SKLK0001&SID=20220207001B&CID=TEST1234" target="_blank" rel="noopener noreferrer" title="새창">체험하기</a>
                        </div>
                    </li>
                </ul>


            </div>
        </div>
        <!-- //컨텐츠 -->

    </section>
    <!-- //Container -->

    
    <jsp:include page="../common/footer.jsp"/>
</body>
</html>