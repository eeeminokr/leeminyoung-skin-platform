<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="ko">
    <head>
        <meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>SKIN QURATOR</title>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/static/css_old/swiper.min.css" />
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/static/css_old/main.css" />
        <jsp:include page="common/common.jsp" />
    </head>
<body>
    <jsp:include page="common/header.jsp" />

<!-- Container -->
<section class="container">

    <!-- 메인 비주얼 슬라이드 -->
    <div class="main_visual swiper">
        <ul class="swiper-wrapper">
            <c:forEach var="item" items="${items}" varStatus="status">
                <c:if test="${item.priority.equals('1') }">
                    <li class="swiper-slide">
                        <div class="bg bg1" style="background-image: url(${pageContext.request.contextPath}/resources/static/images_old/upload/banner/${item.fileName});"></div>
                        <div class="inner">
                        <div class="txtbox">
                        <span class="txt1 ff_nm">My Skin Guide Platform</span>
                        <span class="txt2">맞춤형 화장품 분야 빅데이터</span>
                        </div>
                        </div>
                    </li>
                </c:if>
                <c:if test="${item.priority.equals('2')}">
                    <li class="swiper-slide">
                    <div class="bg bg2"style="background-image: url(${pageContext.request.contextPath}/resources/static/images_old/upload/banner/${item.fileName});"></div>
                    <div class="inner">
                        <div class="txtbox">
                            <span class="txt1 ff_nm">My Skin Guide Platform</span>
                            <span class="txt2">맞춤형 화장품 분야 빅데이터</span>
                        </div>
                    </div>
                    </li>
                </c:if>
            </c:forEach>
            <!--li class="swiper-slide">
                <div class="bg bg1" style="background-image: url(${pageContext.request.contextPath}/resources/static/images_old/upload/banner/main_visual01.jpg);"></div>
                <div class="inner">
                    <div class="txtbox">
                        <span class="txt1 ff_nm">My Skin Guide Platform</span>
                        <span class="txt2">맞춤형 화장품 분야 빅데이터</span>
                    </div>
                </div>
            </li>
            <li class="swiper-slide">
                <div class="bg bg2"></div>
                <div class="inner">
                    <div class="txtbox">
                        <span class="txt1 ff_nm">My Skin Guide Platform</span>
                        <span class="txt2">맞춤형 화장품 분야 빅데이터</span>
                    </div>
                </div>
            </li-->
        </ul>
        <div class="swiper-pagination"></div>
    </div>
    <!-- 메인 비주얼 슬라이드 -->

    <div class="main main_sq">
        <div class="inner of_h">
            <div class="fl txtst">
                <h3 class="ff_nm">SkinQurator</h3>
                <p class="txt1">스킨 큐레이터</p>
                <p class="txt2">최상의 빅데이터 기반 맞춤형 화장품 플랫폼 구축 <br />
                    개발을 위해 최선을 다하겠습니다.</p>
                <a class="btn_round ff_nm" href="${pageContext.request.contextPath}/cosmetic/cosmetic_03_1">view<em class="arrow"></em></a>
            </div>
            <div class="fr imgst mr_120">
                <img width="800" height="400" src="${pageContext.request.contextPath}/resources/static/images_old/main/img01.jpg" alt="" />
            </div>
        </div>
    </div>

    <div class="main main_bm">
        <div class="bg">
            <img src="${pageContext.request.contextPath}/resources/static/images_old/main/img02.jpg" alt="" />
        </div>
        <div class="inner">
            <div class="txtbox">
                <h3 class="ff_nm">Baumann Skin Type lndicator</h3>
                <p class="txt1">바우만 피부유형 검사</p>
                <a class="btn ff_nm" href="${pageContext.request.contextPath}/solution/solution_01_1">view</a>
            </div>
        </div>
    </div>

    <div class="main main_sl">
        <div class="inner of_h top">
            <div class="fl txtst">
                <h3 class="ff_nm">SkinLink</h3>
                <p class="txt1">맞춤형 화장품 피부진단 추천솔루션</p>
                <p class="txt2">3,000명 유전자 빅데이터를 기반으로 개발한 피부진단 <br />
                    및 제품 추천 알고리즘 플랫폼입니다.</p>
                <a class="btn_round ff_nm" href="${pageContext.request.contextPath}/solution/solution_02_1">view<em class="arrow"></em></a>
            </div>
            <div class="fr imgst mr_120">
                <img width="800" height="400" src="${pageContext.request.contextPath}/resources/static/images_old/main/img03.jpg" alt="" />
            </div>
        </div>

        <div class="inner of_h btm">
            <div class="fr txtst mr_120">
                <h3 class="ff_nm txt_s">Customized Cosmetic <br />
                    Skin lnfo Big Data</h3>
                <p class="txt1">맞춤형화장품 피부정보 빅데이터</p>
                <p class="txt2">개인 맞춤형 화장품 기반기술을 개발하고, 빅데이터 활용 <br />
                    맞춤형 화장품 플랫폼 서비스를 위하여 구축되었습니다.</p>
                <a class="btn_round ff_nm" href="${pageContext.request.contextPath}/business/business_04_2">view<em class="arrow"></em></a>
            </div>
            <div class="fl imgst">
                <img width="800" height="400" src="${pageContext.request.contextPath}/resources/static/images_old/main/img04.jpg" alt="" />
            </div>
        </div>
    </div>

    <div class="main main_notice">
        <div class="inner of_h">
            <div class="fl banner">
                <div class="txtbox">
                    <p class="txt1">2022 조제관리사를 위한 맞춤형 화장품 워크샵</p>
                    <p class="txt2">피부 건강을 위한 맞춤형 화장품 서비스 <br />
                        플랫폼 개발을 위하여  워크숍을 개최합니다.</p>
                </div>
            </div>
            <div class="fr noti_list mr_120">
                <h3 class="ff_nm bar">Notice</h3>
                <a class="btn_more" href="${pageContext.request.contextPath}/community/community_01"><span class="blind">공지사항</span>더보기</a>
                <ul>
                    <c:forEach var="item" items="${noticeItems}">
                        <li>
                                <a href="/community/community_01/${item.boardItemId}">${item.title}</a>
                                <span class="date">${item.dateTimeUpdatedFormatted}</span>
                        </li>
                    </c:forEach>
                </ul>
            </div>
        </div>
    </div>

</section>
<!-- //Container -->
    
   <jsp:include page="common/footer.jsp" />


 

   <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
   <script type="text/javascript" src="${pageContext.request.contextPath}/resources/static/js_old/swiper.min.js"></script>
   <script type="text/javascript" src="${pageContext.request.contextPath}/resources/static/js_old/main.js"></script>

</body>
</html>