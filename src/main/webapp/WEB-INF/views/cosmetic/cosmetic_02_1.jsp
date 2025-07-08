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
                    <button type="button">맞춤형화장품 판매업</button>
                    <ul>
                        <li><a href="${pageContext.request.contextPath}/cosmetic/cosmetic_01_1">정의 및 History</a></li>
                        <li class="active"><a href="${pageContext.request.contextPath}/cosmetic/cosmetic_02_1">맞춤형화장품 판매업</a>
                            <ul>
                                <li><a href="${pageContext.request.contextPath}/cosmetic/cosmetic_02_1">맞춤형화장품 판매업</a></li>
                                <li class="active"><a href="${pageContext.request.contextPath}/cosmetic/cosmetic_02_2">맞춤형화장품 조제관리사</a></li>
                            </ul>
                        </li>
                        <li><a class="last" href="${pageContext.request.contextPath}/cosmetic/cosmetic_03_1">SkinQurator</a></li>
                    </ul>
                </div>

                <ul class="depth_03">
                    <li class="active"><a href="${pageContext.request.contextPath}/cosmetic/cosmetic_02_1">맞춤형화장품 판매업</a></li>
                    <li><a href="${pageContext.request.contextPath}/cosmetic/cosmetic_02_2">맞춤형화장품 조제관리사</a></li>
                </ul>
            </div>
        </div>
        <!-- //컨텐츠 상단 서브 메뉴 -->

        <!-- 타이틀 -->
        <div class="title title_bg_02">
            <div class="inner">
                <div class="txtbox">
                    <div class="tit_s ff_nm">My Skin Guide Platform</div>
                    <h3 class="ff_nm">맞춤형화장품 판매업</h3>
                    <p>맞춤형화장품을 판매하는 영업은 최고의 <br />
                        원료를 혼합하여 최상의 화장품을 제조 합니다.</p>
                </div>
            </div>
        </div>
        <!-- //타이틀 -->

    <!-- 컨텐츠 -->
    <div class="content sale">
        <div class="inner">

            <h2 class="ff_nm bar">맞춤형화장품 판매업</h2>
            <div class="box1">
                <div class="of_h mb_110">
                    <img class="fr" width="670" height="440" src="${pageContext.request.contextPath}/resources/static/images_old/cosmetic/sale_img01.jpg" alt="" />
                    <h3>맞춤형화장품 판매업의 개념</h3>
                    <p class="mb_30">화장품 영업에는 세가지 종류가 있습니다.</p>
                    <ol class="ol_number">
                        <li><span class="num">1</span>화장품제조업</li>
                        <li><span class="num">2</span>화장품책임판매업</li>
                        <li><span class="num">3</span>맞춤형화장품판매업</li>
                    </ol>
                </div>

                <div class="table_wrap mb_170">
                    <table class="tbl_st1 tbl_order1" summary="맞춤형 화장품의 개념 - 영업의 종류, 영업의 범위">
                        <caption>맞춤형 화장품의 개념을 정리한 표</caption>
                        <colgroup>
                            <col width="270px" />
                            <col width="930px" />
                        </colgroup>
                        <thead>
                            <tr>
                                <th>영업의 종류</th>
                                <th>영업의 범위</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>화장품 제조업</td>
                                <td>
                                    <ol class="ol_number ta_l">
                                        <li><span class="num">1</span>화장품을 직접 제조하는 영업</li>
                                        <li><span class="num">2</span>화장품 제조를 위탁받아 제조하는 영업</li>
                                        <li><span class="num">3</span>화장품의 포장(1차 포장만 해당)을 하는 영업</li>
                                    </ol>
                                </td>
                            </tr>
                            <tr>
                                <td>화장품 책임판매업</td>
                                <td>
                                    <ol class="ol_number ta_l">
                                        <li><span class="num">1</span>화장품 제조업자가 화장품을 직접 제조하여 유통·판매하는 영업</li>
                                        <li><span class="num">2</span>화장품 제조업자에게 위탁하여 제조된 화장품을 유통·판매하는 영업</li>
                                        <li><span class="num">3</span>수입된 화장품을 유통·판매하는 영업</li>
                                        <li><span class="num">4</span>수입대행형 거래를 목적으로 화장품을 알선·수여하는 영업</li>
                                    </ol>
                                </td>
                            </tr>
                            <tr>
                                <td>맞춤형화장품 판매업</td>
                                <td>
                                    <ol class="ol_number ta_l">
                                        <li><span class="num">1</span>제조 또는 수입된 화장품의 내용물에 다른 화장품의 내용물이나 식품의약품안전처장이 <br />
                                            정하여 고시하는 원료를 추가하여 혼합한 화장품을 판매하는 영업</li>
                                        <li><span class="num">2</span>제조 또는 수입된 화장품의 내용물을 소분한 화장품을 판매하는 영업</li>
                                    </ol>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>

                <p class="mb_30">맞춤형화장품 판매업이란 맞춤형화장품을 판매하는 영업으로서, 다음의 두 가지 중 하나 이상에 해당하는 영업을 할 수 있습니다.</p>
                <ol class="ol_number mb_80">
                    <li><span class="num">1</span>제조 또는 수입된 화장품의 내용물에 다른 화장품의 내용물이나 식약처장이 정하는 원료를 추가하여 혼합한 화장품을 판매하는 영업</li>
                    <li><span class="num">2</span>제조 또는 수입된 화장품의 내용물을 소분한 화장품을 판매하는 영업</li>
                </ol>

                <div class="table_wrap mb_140">
                    <table class="tbl_st1 tbl_order2" summary="맞춤형 화장품의 영업의 범위 - 구분, 맞춤형화장품판매업의 영업의 범위">
                        <caption>맞춤형 화장품의 개념을 정리한 표</caption>
                        <colgroup>
                            <col width="270px" />
                            <col width="930px" />
                        </colgroup>
                        <thead>
                            <tr>
                                <th>구분</th>
                                <th>맞춤형화장품판매업의 영업의 범위</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td rowspan="2">혼합</td>
                                <td>
                                    <div class="tbl_ico order1">
                                        <div class="left">
                                            <img src="${pageContext.request.contextPath}/resources/static/images_old/cosmetic/sale_icon01.png" alt="" />
                                            <span>내용물(벌크제품)</span>
                                        </div>
                                        <img class="center" src="${pageContext.request.contextPath}/resources/static/images_old/common/plus2.png" alt="+" />
                                        <div class="right">
                                            <img src="${pageContext.request.contextPath}/resources/static/images_old/cosmetic/sale_icon01.png" alt="" />
                                            <span>내용물(벌크제품)</span>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td class="border_l">
                                    <div class="tbl_ico order2">
                                        <div class="left">
                                            <img src="${pageContext.request.contextPath}/resources/static/images_old/cosmetic/sale_icon02.png" alt="" />
                                            <span>내용물(벌크제품)</span>
                                        </div>
                                        <img class="center" src="${pageContext.request.contextPath}/resources/static/images_old/common/plus2.png" alt="+" />
                                        <div class="right">
                                            <img src="${pageContext.request.contextPath}/resources/static/images_old/cosmetic/sale_icon02.png" alt="" />
                                            <span>특정 성분(단일 원료 또는 혼합 원료)</span>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td>소분</td>
                                <td>
                                    <div class="tbl_ico order3">
                                        <div class="left">
                                            <img src="${pageContext.request.contextPath}/resources/static/images_old/cosmetic/sale_icon03.png" alt="" />
                                            <span>내용물(벌크제품)</span>
                                        </div>
                                        <img class="center" src="${pageContext.request.contextPath}/resources/static/images_old/common/division.png" alt="÷" />
                                        <div class="right">
                                            <img src="${pageContext.request.contextPath}/resources/static/images_old/cosmetic/sale_icon04.png" alt="" />
                                            <span>소분</span>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                    <p class="txt_s ta_r">※ 참고사항 : 원료와 원료를 혼합하는 것은 맞춤형 화장품의 혼합이 아닌 '화장품 제조'에 해당</p>
                </div>

                <p class="mb_30">맞춤형화장품 판매업의 신고</p>
                <p class="mb_10">맞춤형화장품 판매업자의 결격사유가 없어야 하며, 맞춤형화장품 판매장에 맞춤형화장품 조제관리사를 두어야 합니다.</p>
                <ul class="bul_cir mb_130">
                    <li>맞춤형화장품 판매업자의 결격사유
                        <ol class="ol_number">
                            <li><span class="num">1</span>피성년후견인 또는 파산선고를 받고 복권되지 아니한 자</li>
                            <li><span class="num">2</span>화장품법 또는 「보건범죄 단속에 관한 특별조치법」을 위반하여 금고 이상의 형을 선고 받고 <br />
                                그 집행이 끝나지 아니하거나 그 집행을 받지 아니하기로 확정되지 아니한 자</li>
                            <li><span class="num">3</span>화장품법 제24조에 따라 등록이 취소되거나 영업소가 폐쇄된 날부터 1년이 지나지 아니한 자</li>
                        </ol>
                    </li>
                </ul>
            </div>

            <div class="box2">
                <div class="of_h mb_150">
                    <img class="fr" width="670" height="560" src="${pageContext.request.contextPath}/resources/static/images_old/cosmetic/sale_img02.jpg" alt="" />
                    <h3>맞춤형화장품 내용물 <br />및 원료의 범위</h3>
                    <h4 class="tit tit_type1"><span class="num">1</span>맞춤형화장품 혼합·소분에 <br />
                        사용되는 내용물의 범위</h4>

                    <p class="mb_30">맞춤형화장품의 혼합·소분에 사용할 목적으로 화장품책임 <br />
                        판매업자로부터 제공받은 것으로 다음 항목에 해당하지 않는 <br />
                        것이어야 합니다.</p>
                    <ol class="ol_number">
                        <li><span class="num">1</span>화장품책임판매업자가 소비자에게 그대로 <br />
                            유통·판매할 목적으로 제조 또는 수입한 화장품</li>
                        <li><span class="num">2</span>판매의 목적이 아닌 제품의 홍보·판매촉진 등을 <br />
                            위하여 미리 소비자가 시험·사용하도록 제조 <br />
                            또는 수입한 화장품</li>
                    </ol>
                </div>

                <div class="of_h mb_110">
                    <img class="fr" width="670" height="560" src="${pageContext.request.contextPath}/resources/static/images_old/cosmetic/sale_img03.jpg" alt="" />
                    <h4 class="tit"><span class="num">2</span>맞춤형화장품 혼합에 사용되는 원료의 범위</h4>
                    <p class="mb_30">맞춤형화장품의 혼합에 사용할 수 없는 원료를 다음과 같이 <br />
                        정하고 있으며 그 외의 원료는 혼합에 사용 가능</p>
                    <ol class="ol_number">
                        <li><span class="num">1</span>「화장품 안전기준 등에 관한 규정(식약처 고시)」<br />
                            [별표 1]의 ‘화장품에 사용할 수 없는 원료’</li>
                        <li><span class="num">2</span>「화장품 안전기준 등에 관한 규정(식약처 고시)」 <br />
                            [별표 2]의 ‘화장품에 사용상의 제한이 필요한 원료’</li>
                        <li><span class="num">3</span>식약처장이 고시(「기능성화장품 기준 및 시험방법」) <br />
                            한  ‘기능성화장품의 효능·효과를 나타내는 원료’.<br />
                            다만,「화장품법」 제4조에 따라 해당 원료를 포함하여 <br />
                            기능성화장품에 대한 심사를 받거나 보고서를 제출한 <br />
                            경우 사용 가능</li>
                    </ol>
                </div>

                <div class="linebox mb_130">
                    <ul class="bul_cir">
                        <li>원료의 품질유지를 위해 원료에 보존제가 포함된 경우에는 예외적으로 허용</li>
                        <li>원료의 경우 개인 맞춤형으로 추가되는 색소, 향, 기능성 원료 등이 해당되며 이를 위한 원료의 조합(혼합 원료)도 허용</li>
                        <li>기능성화장품의 효능·효과를 나타내는 원료는 내용물과 원료의 최종 혼합 제품을 기능성화장품으로 <br />
                            기 심사(또는 보고) 받은 경우에 한하여, 기 심사(또는 보고) 받은 조합·함량 범위 내에서만 사용 가능</li>
                    </ul>
                </div>


            </div>

            <div class="box3">
                <h3>클러스터 발전 비전 및 전략</h3>

                <div class="table_wrap mb_130">
                    <table class="tbl_st1" summary="클러스터 발전 비전 및 전략 - 세부 사항, 세부 내용">
                        <caption>클러스터 발전 비전 및 전략</caption>
                        <colgroup>
                            <col width="300px" />
                            <col width="900px" />
                        </colgroup>
                        <thead>
                            <tr>
                                <th>세부 사항</th>
                                <th>세부 내용</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>맞춤형화장품의 정의</td>
                                <td>
                                    <ul class="bul_cir ta_l">
                                        <li>제조 또는 수입된 화장품의 내용물에 다른 화장품의 내용물이나 <br />
                                            식품의약품안전처장이 정하는 원료를 추가하여 혼합한 화장품</li>
                                        <li>제조 또는 수입된 화장품의 내용물을 소분(小分)한 화장품</li>
                                        <li>제외 품목 : 고형(固形) 비누 등 총리령으로 정하는 화장품의 내용물을 단순 소분한 화장품</li>
                                    </ul>
                                </td>
                            </tr>
                            <tr>
                                <td>맞춤형화장품내 <br />혼합 및 소분 대상</td>
                                <td>
                                    <ul class="bul_cir ta_l">
                                        <li>원료 : 맞춤형화장품에 사용 가능한 원료</li>
                                        <li>내용물 : 제조 또는 수입된 화장품의 내용물 <br />
                                            * 원료와 원료를 혼합하는 것은 맞춤형화장품 혼합이 아닌 화장품 제조에 해당</li>
                                    </ul>
                                </td>
                            </tr>
                            <tr>
                                <td>맞춤형화장품 혼합 및 소분 범위</td>
                                <td>
                                    <ul class="bul_cir ta_l">
                                        <li>내용물과 내용물의 혼합</li>
                                        <li>내용물과 특성원료의 혼합</li>
                                        <li>내용물의 소분</li>
                                    </ul>
                                </td>
                            </tr>
                            <tr>
                                <td>맞춤형화장품 내용물 관리</td>
                                <td>
                                    <ul class="bul_cir ta_l">
                                        <li>유통화장품 안전관리 기준에 적합해야 합니다.</li>
                                        <li>맞춤형 화장품 혼합에 사용할 수 없는 원료에 해당하지 않아야 합니다.</li>
                                    </ul>
                                </td>
                            </tr>
                            <tr>
                                <td>맞춤형화장품 판매 영업 범위</td>
                                <td>
                                    <ul class="bul_cir ta_l">
                                        <li>제조 또는 수입된 화장품의 내용물에 다른 화장품의 내용물이나 식품의 약품안전처장이 정하여, <br />
                                            고시하는 원료를 추가하여 혼합한 화장품을 판매하는 영업</li>
                                        <li>제조 또는 수입된 화장품의 내용물을 소분(分)한 화장품을 판매하는 영업</li>
                                    </ul>
                                </td>
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
</body>
</html>