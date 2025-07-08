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
<body class="page_cosmetic">
    <jsp:include page="../common/header.jsp"/>


    <!-- Container -->
    <section class="container">

        <!-- 컨텐츠 상단 서브 메뉴 -->
        <div class="lnb_wrap">
            <div class="inner">
                <div class="lnb">
                    <button type="button">정의 및 History</button>
                    <ul>
                        <li class="active"><a href="${pageContext.request.contextPath}/cosmetic/cosmetic_01_1">정의 및 History</a>
                            <ul>
                                <li class="active"><a href="${pageContext.request.contextPath}/cosmetic/cosmetic_01_1">맞춤형화장품 정의</a></li>
                   				 <li><a href="${pageContext.request.contextPath}/cosmetic/cosmetic_01_2">맞춤형화장품 기술개발 동향</a></li>
                   				 <li><a href="${pageContext.request.contextPath}/cosmetic/cosmetic_01_3">맞춤형화장품 시장동향</a></li>
                            </ul>
                        </li>
                        <li><a href="${pageContext.request.contextPath}/cosmetic/cosmetic_02_1">맞춤형화장품 판매업</a></li>
                        <li><a class="last" href="${pageContext.request.contextPath}/cosmetic/cosmetic_03_1">SkinQurator</a></li>
                    </ul>
                </div>

                <ul class="depth_03">
                         <li class="active"><a href="${pageContext.request.contextPath}/cosmetic/cosmetic_01_1">맞춤형화장품 정의</a></li>
                    <li><a href="${pageContext.request.contextPath}/cosmetic/cosmetic_01_2">맞춤형화장품 기술개발 동향</a></li>
                    <li><a href="${pageContext.request.contextPath}/cosmetic/cosmetic_01_3">맞춤형화장품 시장동향</a></li>
                </ul>
            </div>
        </div>
        <!-- //컨텐츠 상단 서브 메뉴 -->

        <!-- 타이틀 -->
        <div class="title title_bg_02">
            <div class="inner">
                <div class="txtbox">
                    <div class="tit_s ff_nm">My Skin Guide Platform</div>
                    <h3 class="ff_nm">정의 및 History</h3>
                    <p>맞춤형화장품 소개</p>
                </div>
            </div>
        </div>
        <!-- //타이틀 -->

        <!-- 컨텐츠 -->
        <div class="content history">
            <div class="inner">
                <h2 class="ff_nm bar">맞춤형화장품 정의</h2>

                <div class="box1">
                    <div class="of_h mb_120">
                        <img class="fr" width="670" height="560" src="${pageContext.request.contextPath}/resources/static/images_old/cosmetic/history_img01.jpg" alt="" />
                        <h3>맞춤형화장품 정의 및 개념</h3>
                        <h4 class="tit"><span class="num">1</span>맞춤형화장품 정의</h4>
                        <p>일반적으로 ‘맞춤형화장품’이란 개인별 피부 문제점을 효과적으로 개선하고, 개인이 선호하는 취향을 제품에 반영하기 위한 목적으로, 고객 개인별 피부 특성, 색,향등의 취향에 따라 맞춤형화장품 조제관리사가 기존 화장품에 각종 영양성분이나 색소·향료 등을 조합해 판매하는 화장품으로 알려져 있습니다.</p>
                        <p>특히 개별 고객을 대상으로 고객의 요구 및 취향에 따라 즉석에서 혼합하여 소량 생산할 경우 맞춤형화장품 개념이 적용됩니다. 즉 맞춤형화장품이란 개인별 피부 문제점을 효과적으로 개선하고, 개인이 선호하는 취향을 제품에 반영하여 조합해 판매하는 화장품을 말합니다.</p>
                    </div>

                    <div class="of_h mb_80">
                        <img class="fr" width="670" height="560" src="${pageContext.request.contextPath}/resources/static/images_old/cosmetic/history_img02.jpg" alt="" />
                        <h4 class="tit"><span class="num">2</span>화장품법에 근거한 맞춤형화장품 정의</h4>
                        <p>2018년 3월 개정·공포된 화장품법에 따르면, 맞춤형화장품 판매업을 신설하고, 이를 신고제로 운영하며, 맞춤형화장품 혼합·소분 업무에 종사하는 조제관리사 제도 도입을 아래와 같이 명문화하고 있습니다.</p>
                        <p>화장품법에 근거하여 맞춤형화장품을 정하면, 맞춤형화장품판매업소에서 맞춤형화장품조제관리사 자격증을 가진 자가 고객 개인별 피부 특성 및 색·향등 취향에 따라, 제조 또는 수입된 화장품의 내용물에 다른 화장품의 내용물이나 색소, 향료 등 식약처장이 정하는 원료를 추가하여 혼합한 화장품 제조 또는 수입된 화장품의 내용물을 소분(小分)한 화장품을 말합니다. 단, 화장 비누(고체 형태의 세안용 비누)를 단순 소분한 화장품은 제외 입니다.</p>
                    </div>

                    <div class="table_wrap mb_140">
                        <table class="tbl_st1" summary="화장품의 정의 및 주요내용을 표로 안내 - 구분, 정의 및주요내용, 비고">
                            <caption>화장품의 정의 및 주요내용</caption>
                            <colgroup>
                                <col width="20%" />
                                <col width="62%" />
                                <col width="18%" />
                            </colgroup>
                            <thead>
                                <tr>
                                    <th>구분</th>
                                    <th>정의 및 주요내용</th>
                                    <th>비고</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>화장품</td>
                                    <td class="ta_l">
                                        <ul class="bul_cir">
                                            <li>인체를 청결·미화하여 매력을 더하고 용모를 밝게 변화시키거나 피부·모발의 건강을 유지 또는 증진하기 위하여 인체에 바르고 문지르거나 뿌리는 등 이와 유사한 방법으로 사용되는 물품으로서 인체에 대한 작용이 경미한 것을 말합니다.</li>
                                            <li>「약사법」 제2조 제4호의 의약품에 해당하는 물품 제외</li>
                                        </ul>
                                    </td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>화장품</td>
                                    <td class="ta_l">
                                        <ul class="bul_cir">
                                            <li>제조 또는 수입된 화장품의 내용물에 다른 화장품의 내용물이나 식품의약품안전처장이 정하는 화장품의 내용물을 단순 소분한 화장품은 제외합니다.</li>
                                            <li>제조 또는 수입된 화장품의 내용물을 소분(小分)한 화장품 입니다. <br />
                                                다만, 고형(固形)비누 등 총리령으로 정하는 화장품의 내용물을 단순 소분한 화장품은 제외합니다.</li>
                                        </ul>
                                    </td>
                                    <td>(실행일) 2020.03.14</td>
                                </tr>
                                <tr>
                                    <td>화장품</td>
                                    <td class="ta_l">
                                        <ul class="bul_cir">
                                            <li>맞춤형화장품을 판매하는 영업</li>
                                            <li>맞춤형화장품판매업을 신고한 자(맞춤형화장품판매업자)는 맞춤형화장품의 혼합·소분 업무에 종사하는자(맞춤형화장품조제관리사)를 두어야 합니다.</li>
                                        </ul>
                                    </td>
                                    <td>(실행일) 2020.03.14</td>
                                </tr>
                            </tbody>
                        </table>
                        <p class="txt_s ta_r">[자료 : 화장품법, 법률 제 15488호, 2018. 3. 13 개정]</p>
                    </div>
                </div>

                <div class="box2">
                    <div class="of_h mb_110">
                        <img class="fr" width="670" height="560" src="${pageContext.request.contextPath}/resources/static/images_old/cosmetic/history_img03.jpg" alt="" />
                        <h3>맞춤형화장품 제도 <br />
                            신설 배경</h3>
                        <p>맞춤형화장품 제도 시행 이전 화장품 분야는 생산자 중심으로 미리 제품을 대량 생산하여, 일반적인 소비자에게 판매하는 방식이었습니다.</p>
                        <p>개성과 다양성을 중시하는 소비자의 요구가 증가함에 따라 제조업시설 등록이 없이도 개인 피부타입 및 취향을 반영하여 판매장에서 즉석으로 화장품을 만들어 제공하는 제도 도입 필요성이 대두 되었습니다.</p>
                        <p>이에 맞춤형화장품 판매의 범위, 위생상의 주의사항, 소비자 안내 요령, 판매 사후관리 등에 대한 내용을 법제화하여 정함으로 소비자의 안전관리를 확보하는 범위 내에서 맞춤형화장품 판매 행위가 이루어지도록 관리 하고자 관련 제도를 신설, 운영 중 입니다.</p>
                        <p>맞춤형화장품은 소비자 중심으로 소비자의 특성 및 기호에 따라 즉석에서 제품을 혼합 소분하여 판매하는 소량생산 방식을 기본으로 합니다.</p>
                    </div>

                    <div class="table_wrap">
                        <table class="tbl_st1" summary="맞춤형 화장품 관련 내용를 표로 안내 - 관점, 개념, 맞춤형 화장품의 주요 특성">
                            <caption>맞춤형 화장품의 주요 특성</caption>
                            <colgroup>
                                <col width="13%" />
                                <col width="21%" />
                                <col width="11%" />
                                <col width="55%" />
                            </colgroup>
                            <thead>
                                <tr>
                                    <th>관점</th>
                                    <th>개념</th>
                                    <th colspan="2">맞춤형 화장품의 주요 특성</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td rowspan="3">중심</td>
                                    <td rowspan="3">생산자<span class="arrow_r">-></span>소비자</td>
                                    <td>대상</td>
                                    <td>
                                        <span class="txt">불특정 다수 소비자</span>
                                        <span class="arrow_r">-></span>
                                        <span class="txt">개별 소비자</span>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="border_l">제품</td>
                                    <td>
                                        <span class="txt">공통적으로 원하는 제품</span>
                                        <span class="arrow_r">-></span>
                                        <span class="txt">나만의 개성있는 제품 <br />미리 생산</span>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="border_l">생산 시기</td>
                                    <td>
                                        <span class="txt">미리 제품을 대량생산</span>
                                        <span class="arrow_r">-></span>
                                        <span class="txt">즉석에서 소량생산 <br />소비자 요구에 따른 즉석 혼합</span>
                                    </td>
                                </tr>
                                <tr>
                                    <td>행위</td>
                                    <td>화장품의 혼합·판매</td>
                                    <td colspan="2">화장품의 새로운 판매형태 최종 판매장/소비자요구/즉석/혼합·판매</td>
                                </tr>
                            </tbody>
                        </table>
                        <p class="txt_s ta_r">[자료 : 식약처 화장품정책과, 2016, 맞춤형화장품 판매 시범사업 설명회 자료]</p>
                    </div>
                </div>

            </div>
        </div>
        <!-- //컨텐츠 -->

    </section>
    <!-- //Container -->


    <jsp:include page="../common/footer.jsp"/>
</body>
</html>