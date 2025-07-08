<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
<body class="page_community">
    <jsp:include page="../common/header.jsp"/>
  
  <!-- Container -->
  <section class="container">

    <!-- 컨텐츠 상단 서브 메뉴 -->
    <div class="lnb_wrap">
        <div class="inner">
            <div class="lnb">
                <button class="txt_s" type="button">맞춤형화장품 조제관리사 Network</button>
                <ul>
                    <li><a href="${pageContext.request.contextPath}/community/community_01">공지사항</a></li>
                    <li><a href="${pageContext.request.contextPath}/community/community_02_1">자료실</a></li>
                    <!-- <li class="active"><a href="${pageContext.request.contextPath}/community/community_03_1">맞춤형화장품 조제관리사 Network</a>
                        <ul>
                            <li><a href="${pageContext.request.contextPath}/community/community_03_1">전용게시판</a></li>
                            <li class="active"><a href="${pageContext.request.contextPath}/community/community_03_2">컨텐츠 기획 중</a></li>
                        </ul>
                    </li> -->
                    <li><a class="last" href="${pageContext.request.contextPath}/community/community_04">자주 묻는 질문</a></li>
                </ul>
            </div>

            <ul class="depth_03">
                <li><a href="${pageContext.request.contextPath}/community/community_03_1">전용게시판</a></li>
                <li class="active"><a href="${pageContext.request.contextPath}/community/community_03_2">컨텐츠 기획 중</a></li>
            </ul>
        </div>
    </div>
    <!-- //컨텐츠 상단 서브 메뉴 -->

    <!-- 타이틀 -->
    <div class="title title_bg_06">
        <div class="inner">
            <div class="txtbox">
                <div class="tit_s ff_nm">My Skin Guide Platform</div>
                <h3 class="ff_nm">맞춤형화장품 조제관리사 Network</h3>
                <p>개인의 취향에 최적화된 맞춤형화장품 플랫폼 <br />
                    연구개발에 최선을 다하겠습니다.</p>
            </div>
        </div>
    </div>
    <!-- //타이틀 -->

    <!-- 컨텐츠 -->
    <div class="content network_content">

        <div class="inner">

            <h2 class="ff_nm bar">컨텐츠 기획 중</h2>
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