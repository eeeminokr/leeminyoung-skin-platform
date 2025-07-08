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
    <jsp:include page="../common/common.jsp"/>
</head>
<body >
    <jsp:include page="../common/header.jsp"/>

<!-- Container -->
<section class="container">

    <!-- 컨텐츠 상단 서브 메뉴 -->
    <div class="lnb_wrap">
        <div class="inner">
            <div class="lnb">
                <button type="button">진단이력관리</button>
                <ul>
                    <li><a href="${pageContext.request.contextPath}/solution/solution_01_1">자가진단</a></li>
                    <li><a href="${pageContext.request.contextPath}/solution/solution_02_2">SkinLink</a></li>
                    <li><a href="${pageContext.request.contextPath}/solution/solution_03_1">AI기반 피부진단</a></li>
                    <li class="active"><a href="${pageContext.request.contextPath}/solution/solution_04_1">진단이력관리</a>
                        <ul>
                            <!-- <li><a href="${pageContext.request.contextPath}/solution/solution_04_1">바우만 테스트 이력관리</a></li> -->
                            <li class="active"><a href="${pageContext.request.contextPath}/solution/solutionList_04_2">피부진단 이력관리</a></li>
                            <li><a class="last" href="${pageContext.request.contextPath}/solution/solution_04_3">솔루션 이력관리</a></li>
                        </ul>
                    </li>
                </ul>
            </div>

            <ul class="depth_03">
                <!-- <li><a href="${pageContext.request.contextPath}/solution/solution_04_1">바우만 테스트 이력관리</a></li> -->
                <li class="active"><a href="${pageContext.request.contextPath}/solution/solutionList_04_2">피부진단 이력관리</a></li>
                <li><a href="${pageContext.request.contextPath}/solution/solution_04_3">솔루션 이력관리</a></li>
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
    <div class="content mgskin">
        <div class="inner">

            <h2 class="ff_nm bar">피부진단 이력관리</h2>

            <div class="tabs_company">
                <div class="scroll_box">
                    <ul>
                        <li><a class="active" href="#tabcont_aram">아람휴비스</a></li>
                        <li><a href="#tabcont_chowis">초위스컴퍼니</a></li>
                        <li><a href="#tabcont_lulu">룰루랩</a></li>
                        <li><a href="#tabcont_lilly">릴리커버</a></li>
                        <li><a href="#tabcont_linker">링커버스</a></li>
                        <li><a href="#tabcont_fnd">에프앤디파트너스</a></li>
                        <li><a href="#tabcont_kctech">케이씨테크놀러지</a></li>
                        <li><a href="#tabcont_pie">파이</a></li>
                        <li><a href="#tabcont_helios">헬리오스</a></li>
                    </ul>
                </div>
                <a class="tabs_prev" href=""><span class="blind">이전</span></a>
                <a class="tabs_next on" href=""><span class="blind">다음</span></a>
            </div>

            <div class="tabcont_company mb_150">
                <h3 class="mb_20">초위스컴퍼니 <span class="txt_s fc_gold">피부측정 진단결과</span></h3>
                <div class="table_wrap">
                    <table class="tbl_st2 st st3" summary="피부측정 진단결과 - 피험자 정보(이름/성별/만나이), 초위스 피부측정 진단결과(측정일/수분/모공/잡티/주름/피지/민감도)">
                        <caption>초위스 피부측정 진단결과 정보 표</caption>
                        <colgroup>
                            <col width="14%">
                            <col width="5%">
                            <col width="7%">
                            <col width="14%">
                            <col width="5%">
                            <col width="5%">
                            <col width="5%">
                            <col width="5%">
                            <col width="5%">
                            <col width="5%">
                            <col width="5%">
                            <col width="5%">
                            <col width="5%">
                            <col width="5%">
                            <col width="5%">
                            <col width="5%">
                        </colgroup>
                        <thead>
                            <tr>
                                <th colspan="3">피험자 정보</th>
                                <th colspan="13">초위스 피부측정 진단결과</th>
                            </tr>
                            <tr>
                                <th rowspan="2" class="border_bt_td">이름</th>
                                <th rowspan="2" class="border_bt_td">성별</th>
                                <th rowspan="2" class="border_bt_td">나이(만)</th>
                                <th rowspan="2" class="border_bt_td border_r_th">측정일</th>
                                <th colspan="2">수분</th>
                                <th colspan="2">모공</th>
                                <th colspan="2">잡티</th>
                                <th colspan="2">주름</th>
                                <th colspan="2">피지</th>
                                <th colspan="2">민감도</th>
                            </tr>
                            <tr>
                                <th class="border_bt_td">Range</th>
                                <th class="border_bt_td">Level</th>
                                <th class="border_bt_td">Range</th>
                                <th class="border_bt_td">Level</th>
                                <th class="border_bt_td">Range</th>
                                <th class="border_bt_td">Level</th>
                                <th class="border_bt_td">Range</th>
                                <th class="border_bt_td">Level</th>
                                <th class="border_bt_td">Range</th>
                                <th class="border_bt_td">Level</th>
                                <th class="border_bt_td">Range</th>
                                <th class="border_bt_td">Level</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td rowspan="2">홍O동</td>
                                <td rowspan="2">여</td>
                                <td rowspan="2">32</td>
                                <td rowspan="2">2022-12-28</td>
                                <td></td>
                                <td>3</td>
                                <td>100</td>
                                <td>3</td>
                                <td>100</td>
                                <td>3</td>
                                <td>100</td>
                                <td>3</td>
                                <td>100</td>
                                <td>3</td>
                                <td>100</td>
                                <td>3</td>
                            </tr>
                            <tr>
                                <td colspan="2" class="ta_l">text</td>
                                <td colspan="2" class="ta_l">text</td>
                                <td colspan="2" class="ta_l">text</td>
                                <td colspan="2" class="ta_l">text</td>
                                <td colspan="2" class="ta_l">text</td>
                                <td colspan="2" class="ta_l">text</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>

        </div>
    </div>
    <!-- //컨텐츠 -->

</section>
<!-- //Container -->
<jsp:include page="../common/footer.jsp"/>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/static/js_old/solutionList.js"></script>
</body>
</html>