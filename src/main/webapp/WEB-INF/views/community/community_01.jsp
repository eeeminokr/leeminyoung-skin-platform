<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="totalCount" value="${total}"></c:set>
<c:set var="rowsPerPage" value="20"></c:set>
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
        <div class="content notice">

            <div class="inner">

                <div class="board_top">
                    <p class="bul">전체 게시글 <span class="fc_gold">${totalCount}</span>건</p>
                </div>

                <ul class="board">
                    <c:forEach var="item" items="${items}">
                        <li>
                            <div class="board_info">
                                <span class="board_date">${item.dateTimeUpdatedFormatted}</span>
                                <span class="board_view">View ${item.viewCount}</span>
                            </div>
                            <p class="board_subject">
                                <a href="community_01/${item.boardItemId}">${item.title}</a>
                            </p>
                        </li>
                    </c:forEach>                    
                </ul>

                <div class="pagination">
                    <ul id="paging-holder">
                        
                    </ul>
                </div>

            </div>

        </div>
        <!-- //컨텐츠 -->

    </section>
    <!-- //Container -->
    <jsp:include page="../common/footer.jsp"/>
    <script>
        let __JUMP_URL = undefined;
        $(function() {
            paging();
        });

        function paging() {
            __JUMP_URL = '/community/community_01?offset=' + ${rowsPerPage} + "page=" + ${page};
            const holderId = 'paging-holder';
            const rowsPage = ${rowsPerPage};
            const pagingCount = 10;
            const totalCount = ${totalCount};    
            const pageNo = ${page};
            const totalPages = Math.ceil(totalCount / rowsPage);    
            let firstPageNo = 1;
            let lastPageNo = 1;

            const holder = $('#' + holderId);
            holder.empty();

            if (pageNo < 1) {
                pageNo = 1;
            }
            else if (pageNo > totalPages) {
                pageNo = totalPages;
            }

            if (totalPages <= pagingCount) {
                firstPageNo = 1;
                lastPageNo = totalPages;
            }
            else {
                const bundle = Math.ceil(pageNo / pagingCount);
                firstPageNo = (bundle - 1) * pagingCount + 1;
                lastPageNo = firstPageNo + pagingCount - 1;
                if (lastPageNo > totalPages) lastPageNo = totalPages;
            }

            const prevBundleNo = firstPageNo > pagingCount && firstPageNo * pagingCount < totalCount ? firstPageNo - pagingCount : undefined;
            const nextBundleNo = lastPageNo >= pagingCount && lastPageNo * rowsPage < totalCount ? lastPageNo + 1 : undefined;
            const prevPageNo = pageNo - 1 <= 0 ? undefined : pageNo - 1;
            const nextPageNo = (pageNo * rowsPage) >= totalCount ? undefined : pageNo + 1;

            if (!!prevBundleNo) {
                const el = '<li class="first"><a href="#" onclick="jump(' + prevBundleNo + ')"><span class="blind">이전</span></a></li>';
                holder.append(el);
            }
            else {
                const el = '<li class="first"><span class="blind">이전</span></a></li>';
                holder.append(el);
            }
            // if (!!prevPageNo) {
            //     const el = '<li class="prev"><a href="#" onclick="jump(' + prevBundleNo + ')"><span class="blind">이전페이지</span></a></li>';
            //     holder.append(el);
            // }
            // else {
            //     const el = '<span class="prev disabled"><em>prev</em></span>';
            //     holder.append(el);
            // }
            
            const count = lastPageNo - firstPageNo + 1;
            for (let i=0; i<count; i++) {
                let numStyle = 'normal';
                const no = firstPageNo + i;
                if (pageNo == no) {
                    const el = '<li class="active"><a href="">' + no + '</a></li>';
                    holder.append(el);
                }
                else {
                    const el = '<li><a href="">' + no + '</a></li>';
                    holder.append(el);
                }
            }

            // if (!!nextPageNo) {
            //     const el = '<li class="next"><a href="#" onclick="jump(' + nextPageNo + ')"><span class="blind">다음페이지</span></a></li>';
            //     holder.append(el);
            // }
            // else {
            //     const el = '<li class="next"><span class="blind">다음페이지</span></li>';
            //     holder.append(el);
            // }
            if (!!nextBundleNo) {
                const el = '<li class="last"><a href="#" onclick="jump(' + nextBundleNo + ')"><span class="blind">다음</span></a></li>';
                holder.append(el);
            }
            else {
                const el = '<li class="last"><span class="blind">다음</span></li>';
                holder.append(el);
            }            
        }

        function jump(no) {
            if (!__JUMP_URL) {
                console.error("No url to jump provided. (wrong __JUMP_URL)");
                return;
            }
            const url = __JUMP_URL + no;
            location.assign(url);
        }
    </script>
</body>
</html>