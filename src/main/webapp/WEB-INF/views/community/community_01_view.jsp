<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>SKIN QURATOR</title>
    
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
                    <button type="button">공지사항</button>
                    <ul>
                        <li class="active"><a href="${pageContext.request.contextPath}/community/community_01">공지사항</a></li>
                        <li><a href="${pageContext.request.contextPath}/community/community_02_1">자료실</a></li>
                        <!-- <li><a href="${pageContext.request.contextPath}/community/community_03_1">맞춤형화장품 조제관리사 Network</a></li> -->
                        <li><a class="last" href="${pageContext.request.contextPath}/community/community_04">자주 묻는 질문</a></li>
                    </ul>
                </div>

                <ul class="depth_03">
                    <li></li>
                </ul>
            </div>
        </div>
        <!-- //컨텐츠 상단 서브 메뉴 -->

        <!-- 타이틀 -->
        <div class="title title_bg_06">
            <div class="inner">
                <div class="txtbox">
                    <div class="tit_s ff_nm">My Skin Guide Platform</div>
                    <h3 class="ff_nm">공지사항</h3>
                    <p>개인의 취향에 최적화된 맞춤형화장품 플랫폼 <br />
                        연구개발에 최선을 다하겠습니다.</p>
                </div>
            </div>
        </div>
        <!-- //타이틀 -->

        <!-- 컨텐츠 -->
        <div class="content notice_view">

            <div class="inner">

                <div class="board_content">
                    <div class="view_head">
                        ${item.title}
                    </div>
                    <div class="board_info">
                        <span class="board_date">${item.dateTimeUpdatedFormatted}</span>
                        <span class="board_view">View ${item.viewCount}</span>
                    </div>
                    <div class="view_body">
                        ${item.contents}
                    </div>

                    <c:if test="${not empty file}">
                        <div class="view_attach">
                            <span class="ico"><em class="blind">첨부파일</em></span>
                            <span class="file">
                                <a href="javascript:downloadFile(${file.fileId});">${file.fileName}</a>
                            </span>
                        </div>
                    </c:if>
                    

                    <ul class="view_paging">
                        <li class="prev1">
                            <span class="txt">이전글</span>
                            <p><a href="${pageContext.request.contextPath}/community/community_01/${prev.boardItemId}">${prev.title}</a></p>
                        </li>
                        <li class="next">
                            <span class="txt">다음글</span>
                            <p><a href="${pageContext.request.contextPath}/community/community_01/${next.boardItemId}">${next.title}</a></p>
                        </li>
                    </ul>
                </div>

                <div class="btn_wrap ta_c mb_100">
                    <a class="btn_list" href="${pageContext.request.contextPath}/community/community_01">목록</a>
                </div>
            </div>

        </div>
        <!-- //컨텐츠 -->

    </section>
    <!-- //Container -->
    <jsp:include page="../common/footer.jsp"/>
    <script>
        function downloadFile(fileId) {
            if (!fileId || isNaN(fileId) ) return;
            const url = "/api/v1/board/files/NOTICE/" + fileId ;                    
            const link = document.createElement('a');
            link.href = url;
            link.click();
            link.remove();
        }
    </script>
</body>
</html>