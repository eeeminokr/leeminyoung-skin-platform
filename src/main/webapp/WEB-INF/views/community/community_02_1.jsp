<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="totalCount" value="${total}"></c:set>
<c:set var="rowsPerPage" value="${total}"></c:set>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>SKIN QURATOR</title>
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <jsp:include page="../common/common.jsp"/>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/static/js_old/samesite.js" > </script>
</head>
<script>
    document.cookie = "cookie1=soo; SameSite=Lax"; 
    document.cookie = "cookie2=soo"; 
    document.cookie = "cookie3=hoo; SameSite=None; Secure";
   </script>
<body class="page_community">
    <jsp:include page="../common/header.jsp"/>
  

   <!-- Container -->
   <section class="container">

    <!-- 컨텐츠 상단 서브 메뉴 -->
    <div class="lnb_wrap">
        <div class="inner">
            <div class="lnb">
                <button type="button">자료실</button>
                <ul>
                    <li><a href="${pageContext.request.contextPath}/community/community_01">공지사항</a></li>
                    <li class="active"><a href="${pageContext.request.contextPath}/community/community_02_1">자료실</a>
                        <ul>
                            <li class="active"><a href="${pageContext.request.contextPath}/community/community_02_1">동영상 자료</a></li>
                            <li><a href="${pageContext.request.contextPath}/community/community_02_2">기타자료실</a></li>
                        </ul>
                    </li>
                    <!-- <li><a href="${pageContext.request.contextPath}/community/community_03_1">맞춤형화장품 조제관리사 Network</a></li> -->
                    <li><a class="last" href="${pageContext.request.contextPath}/community/community_04">자주 묻는 질문</a></li>
                </ul>
            </div>

            <ul class="depth_03">
                <li class="active"><a href="${pageContext.request.contextPath}/community/community_02_1">동영상 자료</a></li>
                <li><a href="${pageContext.request.contextPath}/community/community_02_2">기타자료실</a></li>
            </ul>
        </div>
    </div>
    <!-- //컨텐츠 상단 서브 메뉴 -->

    <!-- 타이틀 -->
    <div class="title title_bg_06">
        <div class="inner">
            <div class="txtbox">
                <div class="tit_s ff_nm">My Skin Guide Platform</div>
                <h3 class="ff_nm">자료실</h3>
                <p>개인의 취향에 최적화된 맞춤형화장품 플랫폼 <br />
                    연구개발에 최선을 다하겠습니다.</p>
            </div>
        </div>
    </div>
    <!-- //타이틀 -->

       <!-- 컨텐츠 -->
       <div class="content data_video">

        <div class="inner">

            <h2 class="ff_nm bar">동영상 자료</h2>

            <!--ul class="board">
                <li>
                    <div class="fl">
                        <div class="board_video">
                            <iframe width="407" height="228" src="https://www.youtube.com/embed/A_oOOqfM-k8" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
                        </div>
                        <p class="board_subject">2021년 맞춤형 화장품 전문가 포럼</p>
                    </div>
                    <div class="fr">
                        <div class="board_video">
                            <iframe width="407" height="228" src="https://www.youtube.com/embed/51JonSkSbz0" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
                        </div>
                        <p class="board_subject">2022 맞춤형 화장품 융복합 기술지원 사업설명회</p>
                    </div>
                </li>
                <li>
                    <div class="fl">
                        <div class="board_video">
                            <iframe width="407" height="228" src="https://www.youtube.com/embed/yMHsCFD7lCE" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
                        </div>
                        <p class="board_subject">제주테크노파크의 ‘빅데이터 활용 개인 맞춤형 화장품 기반기술 개발’을 소개합니다!!</p>
                    </div>
                    <div class="fr">
                        <div class="board_video">
                            <iframe width="407" height="228" src="https://www.youtube.com/embed/A_oOOqfM-k8" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
                        </div>
                        <p class="board_subject">2021년 맞춤형 화장품 전문가 포럼</p>
                    </div>
                </li>
                <li>
                    <div class="fl">
                        <div class="board_video">
                            <iframe width="407" height="228" src="https://www.youtube.com/embed/vabZ51LhzNo" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
                        </div>
                        <p class="board_subject">2022년 맞춤형 화장품 서비스 플랫폼,SkinQurator(스킨큐레이터) 활용 설명회</p>
                    </div>
                    <div class="fr">
                        <div class="board_video">
                            <iframe width="407" height="228" src="https://www.youtube.com/embed/1a7qsizWrWo" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
                        </div>
                        <p class="board_subject">2021 제11회 제주산업발전포럼_스마트 아일랜드 제주에 메타버스 바람이 불다.</p>
                    </div>
                </li>
            </ul-->
            <ul class="board">
                <li>
                <c:forEach var="item" items="${items}" varStatus="status">
                        <c:if test="${(status.count % 2) == 1 }">
                        <div class="fl">
                            <div class="board_video">${item.contents}</div>
                            <p class="board_subject">${item.title}</p>
                        </div>
                        </c:if>
                        <c:if test="${(status.count % 2) == 0 }">
                        <div class="fr">
                            <div class="board_video">${item.contents}</div>
                            <p class="board_subject">${item.title}</p>
                        </div>
                        </c:if>
                </c:forEach>
                </li>
            </ul>
            
            <div class="pagination" style="display: none;">
                <ul>
                    <li class="first"><a href=""><span class="blind">처음페이지</span></a></li>
                    <li class="prev"><a href=""><span class="blind">이전페이지</span></a></li>
                    <li class="active"><a href="">1</a></li>
                    <li><a href="">2</a></li>
                    <li><a href="">3</a></li>
                    <li><a href="">4</a></li>
                    <li><a href="">5</a></li>
                    <li><a href="">6</a></li>
                    <li class="next"><a href=""><span class="blind">다음페이지</span></a></li>
                    <li class="last"><a href=""><span class="blind">마지막페이지</span></a></li>
                </ul>
            </div>

        </div>

    </div>
    <!-- //컨텐츠 -->


</section>
<!-- //Container -->
    <jsp:include page="../common/footer.jsp"/>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/static/js_old/samesite.js" > </script>
</body>
</html>