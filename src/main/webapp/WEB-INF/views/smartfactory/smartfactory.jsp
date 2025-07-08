<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>SKIN QURATOR</title>
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/static/images_old/smartfactory/favicon.ico" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/static/css_old/smartfactory/font.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/static/css_old/smartfactory/common.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/static/css_old/smartfactory/style.css" />
    
</head>
<body>
     <!-- Header -->
     <header class="header">
        <div class="logo">
            <a>SKIN QURATOR</a>
        </div>   
    </header>
    <!-- Container -->
    <section class="container">

        <!-- 타이틀 -->
        <div class="title">
            <div class="inner">
                <div class="txtbox">
                    <div class="tit_s ff_nm">My Skin Guide Platform</div>
                    <h3 class="ff_nm">진단이력관리</h3>
                    <p>합리적인 진단이력관리로 최적의 맞춤형화장품 플랫폼을 경험 해 보세요!</p>
                </div>
            </div>
        </div>
        <!-- //타이틀 -->

        <!-- 컨텐츠 -->
        <div class="content mgskin">
            <div class="inner">

                <li class="ff_nm" id="hello">피부진단 이력관리</li>

                <div class="tabs_company">
                    <div class="scroll_box">
                        <ul class="lists">
                            <li><a id="aram" href="">아람휴비스</a></li>
                            <li><a id="chowis" class="active" href="">초위스컴퍼니</a></li>
                            <li><a href="">룰루랩</a></li>
                            <li><a href="">릴리커버</a></li>
                            <li><a href="">링커버스</a></li>
                            <li><a href="">에프앤디파트너스</a></li>
                            <li><a href="">케이씨테크놀러지</a></li>
                        </ul>
                    </div>
                </div>
<!--class="active" -->
                <div class="tabcont_company">
                    <h3>초위스컴퍼니 <span class="txt_s fc_gold">피부측정 진단결과</span></h3>
                    <div class="table_wrap">
                        <table class="tbl_st" summary="피부측정 진단결과 - 피험자정보(customer_id/gender/age), 피부진단결과(moisture_u/moisture_t/sensitivity/sebum_u/sebum_t/spots/wrinkles/pores/keratin	porphiryn)">
                            <caption>초위스 피부측정 진단결과 정보 표</caption>
                            <colgroup>
                                <col width="7.7%">
                                <col width="7.7%">
                                <col width="7.7%">
                                <col width="7.69%">
                                <col width="7.69%">
                                <col width="7.69%">
                                <col width="7.69%">
                                <col width="7.69%">
                                <col width="7.69%">
                                <col width="7.69%">
                                <col width="7.69%">
                                <col width="7.69%">
                                <col width="7.69%">
                            </colgroup>
                            <thead>
                                <tr>
                                    <th colspan="3">피험자 정보</th>
                                    <th colspan="10">피부진단결과</th>
                                </tr>
                                <tr>
                                    <th class="border_bt_td txt_s">customer_id</th>
                                    <th class="border_bt_td txt_s">gender</th>
                                    <th class="border_bt_td txt_s">age</th>
                                    <th class="border_bt_td txt_s">moisture_u</th>
                                    <th class="border_bt_td txt_s">moisture_t</th>
                                    <th class="border_bt_td txt_s">sensitivity</th>
                                    <th class="border_bt_td txt_s">sebum_u</th>
                                    <th class="border_bt_td txt_s">sebum_t</th>
                                    <th class="border_bt_td txt_s">spots</th>
                                    <th class="border_bt_td txt_s">wrinkles</th>
                                    <th class="border_bt_td txt_s">pores</th>
                                    <th class="border_bt_td txt_s">keratin</th>
                                    <th class="border_bt_td txt_s">porphiryn</th>
                                </tr>
                            </thead>
                            <tbody>
                                <!-- <tr>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                </tr> -->
                            </tbody>
                        </table>
                    </div>
                </div>

            </div>
        </div>
        <!-- //컨텐츠 -->

    </section>
    <!-- //Container -->
</body>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/static/js_old/smartfactory/smartfactory.js"></script>
</html>