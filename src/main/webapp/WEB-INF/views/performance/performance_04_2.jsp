<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>SKIN QURATOR</title>
    <jsp:include page="../common/common.jsp"/>
    <script src="https://code.highcharts.com/highcharts.js"></script>
    <script src="/resources/static/js_old/skin-data-2019.js" type="text/javascript"></script>
    <script>
        $(document).ready(function() {
            _$chart_data_2019.drawMeasurmentDataChart_2019('bar-chart-holder', 'pi-chart-holder', function(data){                
                if (!!data) {
                    let total = 0;
                    data.forEach(el => {
                        total += el.count;
                    });
                    data.forEach(el => {
                        const td = document.getElementById('m-td-' + el.ageBand);
                        const td_p = document.getElementById('m-td-p-' + el.ageBand);
                        td.textContent = el.count.toLocaleString("en-US");
                        td_p.textContent = ((el.count / total) * 100).toFixed(2);
                    });
                    const td = document.getElementById('m-td-total');
                    const td_p = document.getElementById('m-td-p-total');
                    td.textContent = total.toLocaleString("en-US");;
                    td_p.textContent = 100;
                }
            }, function(){});

            _$chart_data_2019.drawInterviewDataChart_2019('bar-chart-holder2', 'pi-chart-holder2', function(data){                   
                console.debug('interview ==> ' + data);    
                if (!!data) {
                    let total = 0;
                    data.forEach(el => {
                        total += el.count;
                    });
                    data.forEach(el => {
                        const td = document.getElementById('i-td-' + el.ageBand);
                        const td_p = document.getElementById('i-td-p-' + el.ageBand);
                        td.textContent = el.count.toLocaleString("en-US");
                        td_p.textContent = ((el.count / total) * 100).toFixed(2);
                    });
                    const td = document.getElementById('i-td-total');
                    const td_p = document.getElementById('i-td-p-total');
                    td.textContent = total.toLocaleString("en-US");;
                    td_p.textContent = 100;
                                        
                }
            }, function(){});

            _$chart_data_2019.drawGeneDataChart_2019('bar-chart-holder3', 'pi-chart-holder3', function(data){                   
                console.debug('gene ==> ' + data);    
                if (!!data) {
                    let total = 0;
                    data.forEach(el => {
                        total += el.count;
                    });
                    data.forEach(el => {
                        const td = document.getElementById('g-td-' + el.ageBand);
                        const td_p = document.getElementById('g-td-p-' + el.ageBand);
                        td.textContent = el.count.toLocaleString("en-US");
                        td_p.textContent = ((el.count / total) * 100).toFixed(2);
                    });
                    const td = document.getElementById('g-td-total');
                    const td_p = document.getElementById('g-td-p-total');
                    td.textContent = total.toLocaleString("en-US");;
                    td_p.textContent = 100;
                }
            }, function(){});
        });
    </script>
</head>
<body class="page_performance">
    <jsp:include page="../common/header.jsp"/>
   

    <!-- Container -->
    <section class="container">

        <!-- 컨텐츠 상단 서브 메뉴 -->
        <div class="lnb_wrap">
            <div class="inner">
                <div class="lnb">
                    <button type="button">피부정보 데이터 소개</button>
                    <ul>
                        <li><a href="${pageContext.request.contextPath}/performance/performance_03_1">융복합 기술개발 성과</a></li>
                        <li class="active"><a href="${pageContext.request.contextPath}/performance/performance_04_1">피부정보 데이터 소개</a>
                            <ul>
                                <li><a href="${pageContext.request.contextPath}/performance/performance_04_1">데이터 개요 및 구축과정</a></li>
                                <li class="active"><a class="last" href="${pageContext.request.contextPath}/performance/performance_04_2">데이터 상세</a></li>
                            </ul>
                        </li>
                    </ul>
                </div>

                <ul class="depth_03">
                    <li><a href="${pageContext.request.contextPath}/performance/performance_04_1">데이터 개요 및 구축과정</a></li>
                    <li class="active"><a href="${pageContext.request.contextPath}/performance/performance_04_2">데이터 상세</a></li>
                </ul>
            </div>
        </div>
        <!-- //컨텐츠 상단 서브 메뉴 -->

        <!-- 타이틀 -->
        <div class="title title_bg_01">
            <div class="inner">
                <div class="txtbox">
                    <div class="tit_s ff_nm">My Skin Guide Platform</div>
                    <h3 class="ff_nm">피부정보 데이터 소개</h3>
                    <p>데이터 활용 맞춤형화장품 기반 조성으로 <br />
                        K-뷰티산업을 선도 하겠습니다.</p>
                </div>
            </div>
        </div>
        <!-- //타이틀 -->

        <!-- 컨텐츠 -->
        <div class="content data_detail">
            <div class="inner">

                <h2 class="ff_nm bar">데이터 상세</h2>

                <div class="box1 mb_150">
                    <div class="box_head">
                        <h4 class="tit"><span class="num">1</span>피부정밀측정데이터</h4>
                        <!--
                        <select class="select" name="" id="">
                            <option value="">맞춤형 화장품 분야 빅데이터 1차</option>
                            <option value="">맞춤형 화장품 분야 빅데이터 2차</option>
                        </select>
                        -->
                    </div>
                    <p>20대~60대 한국여성 3,000명을 대상으로 색소, 주름, 보습, 유분, 민감성에 대한 피부임상기관 수준의 정밀피부측정수치, 민감성평가 수치를 측정하고, 이를 DB화하여 구성하였다.</p>
                    <div class="box_cont">
                        <table class="tbl_st2 st" summary="피부정밀측정데이터 - 구분, 성별 인원(20대/30대/40대/50대/60대), 합계">
                            <caption>피부정보 데이터 개요 정보 표</caption>
                            <colgroup>
                                <col width="19%" />
                                <col width="13.5%" />
                                <col width="13.5%" />
                                <col width="13.5%" />
                                <col width="13.5%" />
                                <col width="13.5%" />
                                <col width="13.5%" />
                            </colgroup>
                            <thead>
                                <tr>
                                    <th rowspan="2" class="border_bt_td">구분</th>
                                    <th colspan="5">성별 인원(명)</th>
                                    <th rowspan="2" class="border_bt_td">합계</th>
                                </tr>
                                <tr>
                                    <th class="border_bt_td">20대</th>
                                    <th class="border_bt_td">30대</th>
                                    <th class="border_bt_td">40대</th>
                                    <th class="border_bt_td">50대</th>
                                    <th class="border_bt_td border_r_th">60대</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>인원수(명)</td>
                                    <td id="m-td-20"></td>
                                    <td id="m-td-30"></td>
                                    <td id="m-td-40"></td>
                                    <td id="m-td-50"></td>
                                    <td id="m-td-60"></td>
                                    <td id="m-td-total"></td>
                                </tr>
                               <tr>
                                    <td class="border_bt_none">비율(%)</td>
                                    <td id="m-td-p-20" class="border_bt_none"></td>
                                    <td id="m-td-p-30" class="border_bt_none"></td>
                                    <td id="m-td-p-40" class="border_bt_none"></td>
                                    <td id="m-td-p-50" class="border_bt_none"></td>
                                    <td id="m-td-p-60" class="border_bt_none"></td>
                                    <td id="m-td-p-total" class="border_bt_none"></td>
                               </tr>
                            </tbody>
                        </table>

                        <div class="box_chart of_h">
                            <div class="fl">
                                <div id="bar-chart-holder" style="width:419px; height:347px;margin:0 4em;"></div>
                            </div>
                            <div class="fr">
                                <div id="pi-chart-holder" style="width:419px; height:347px;margin:0 4em;"></div>
                            </div>
                        </div>

                        <table class="tbl_st2 st st2" summary="피부정밀측정데이터 - 연번, 항목(코드명/변수명), 타입, 비고">
                            <caption>피부정보 데이터 개요 정보 표</caption>
                            <colgroup>
                                <col width="12%" />
                                <col width="14%" />
                                <col width="46%" />
                                <col width="16%" />
                                <col width="12%" />
                            </colgroup>
                            <thead>
                                <tr>
                                    <th rowspan="2" class="border_bt_td">연번</th>
                                    <th colspan="2">항목</th>
                                    <th rowspan="2" class="border_bt_td">타입</th>
                                    <th rowspan="2" class="border_bt_td">비고</th>
                                </tr>
                                <tr>
                                    <th class="border_bt_td">코드명</th>
                                    <th class="border_bt_td border_r_th">변수명</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>1</td>
                                    <td>ID</td>
                                    <td class="ta_l">샘플링아이디</td>
                                    <td>STRING</td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>2</td>
                                    <td>Age</td>
                                    <td class="ta_l">만 나이</td>
                                    <td>INT</td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>3</td>
                                    <td>W201</td>
                                    <td class="ta_l">주름 : 눈가 (우측) 평균 거칠기</td>
                                    <td>FLOAT</td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>4</td>
                                    <td>W202</td>
                                    <td class="ta_l">주름 : 눈가 (우측) 최대 깊이</td>
                                    <td>FLOAT</td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>5</td>
                                    <td>W203</td>
                                    <td class="ta_l">주름 : 미간 평균 거칠기</td>
                                    <td>FLOAT</td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>6</td>
                                    <td>W204</td>
                                    <td class="ta_l">주름 : 미간 최대 깊이</td>
                                    <td>FLOAT</td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>7</td>
                                    <td>W101</td>
                                    <td class="ta_l">주름 : 눈가 (우측) 평균 거칠기</td>
                                    <td>FLOAT</td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>8</td>
                                    <td>W102</td>
                                    <td class="ta_l">주름 : 눈가 (우측) 최대 깊이</td>
                                    <td>FLOAT</td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>9</td>
                                    <td>W103</td>
                                    <td class="ta_l">주름 : 미간 평균 거칠기</td>
                                    <td>FLOAT</td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>10</td>
                                    <td>W104</td>
                                    <td class="ta_l">주름 : 미간 최대 깊이</td>
                                    <td>FLOAT</td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>11</td>
                                    <td>A101</td>
                                    <td class="ta_l">수분 : 미간 수분량</td>
                                    <td>FLOAT</td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>12</td>
                                    <td>A102</td>
                                    <td class="ta_l">수분 : 볼 (우측) 수분량</td>
                                    <td>FLOAT</td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>13</td>
                                    <td>A201</td>
                                    <td class="ta_l">수분 : 미간 수분증발량</td>
                                    <td>FLOAT</td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>14</td>
                                    <td>A202</td>
                                    <td class="ta_l">수분 : 볼 (우측) 수분증발량</td>
                                    <td>FLOAT</td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>15</td>
                                    <td>M101</td>
                                    <td class="ta_l">멜라닌양 : 색소침착부위</td>
                                    <td>FLOAT</td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>16</td>
                                    <td>M102</td>
                                    <td class="ta_l">멜라닌양 : 비색소 침착부위</td>
                                    <td>FLOAT</td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>17</td>
                                    <td>R101</td>
                                    <td class="ta_l">홍반량 : 비색소 침착부위</td>
                                    <td>FLOAT</td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>18</td>
                                    <td>R201</td>
                                    <td class="ta_l">피부밝기 : 색소침착</td>
                                    <td>FLOAT</td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>19</td>
                                    <td>R202</td>
                                    <td class="ta_l">피부밝기 : 비색소침착 부위</td>
                                    <td>FLOAT</td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>20</td>
                                    <td>L101</td>
                                    <td class="ta_l">유분 : 미간</td>
                                    <td>FLOAT</td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>21</td>
                                    <td>L102</td>
                                    <td class="ta_l">유분 : 우측 볼</td>
                                    <td>FLOAT</td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>22</td>
                                    <td>S101</td>
                                    <td class="ta_l">민감성평가</td>
                                    <td>INT</td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>23</td>
                                    <td>S102</td>
                                    <td class="ta_l">민감성평가</td>
                                    <td>INT</td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>24</td>
                                    <td>S103</td>
                                    <td class="ta_l">민감성평가</td>
                                    <td>INT</td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td class="border_bt_none">25</td>
                                    <td class="border_bt_none">S104</td>
                                    <td class="border_bt_none ta_l">민감성평가</td>
                                    <td class="border_bt_none">INT</td>
                                    <td class="border_bt_none"></td>
                                </tr>
                              </tbody>
                        </table>
                    </div>
                </div>

                <div class="box2 mb_150">
                    <div class="box_head">
                        <h4 class="tit"><span class="num">2</span>설문‧문진데이터</h4>
                        <!--
                        <select class="select" name="" id="">
                            <option value="">맞춤형 화장품 분야 빅데이터 1차</option>
                            <option value="">맞춤형 화장품 분야 빅데이터 2차</option>
                        </select>
                        -->
                    </div>
                    <p>피부타입 진단을 위한 문항을 선정하고 이를 20대~60대 한국여성 3,000명에게 조사한 데이터를 DB화하여 구성하였다.</p>
                    <div class="box_cont">
                        <table class="tbl_st2 st" summary="피부정밀측정데이터 - 구분, 성별 인원(20대/30대/40대/50대/60대), 합계">
                            <caption>피부정보 데이터 개요 정보 표</caption>
                            <colgroup>
                                <col width="19%" />
                                <col width="13.5%" />
                                <col width="13.5%" />
                                <col width="13.5%" />
                                <col width="13.5%" />
                                <col width="13.5%" />
                                <col width="13.5%" />
                            </colgroup>
                            <thead>
                                <tr>
                                    <th rowspan="2" class="border_bt_td">구분</th>
                                    <th colspan="5">성별 인원(명)</th>
                                    <th rowspan="2" class="border_bt_td">합계</th>
                                </tr>
                                <tr>
                                    <th class="border_bt_td">20대</th>
                                    <th class="border_bt_td">30대</th>
                                    <th class="border_bt_td">40대</th>
                                    <th class="border_bt_td">50대</th>
                                    <th class="border_bt_td border_r_th">60대</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>인원수(명)</td>
                                    <td id="i-td-20"></td>
                                    <td id="i-td-30"></td>
                                    <td id="i-td-40"></td>
                                    <td id="i-td-50"></td>
                                    <td id="i-td-60"></td>
                                    <td id="i-td-total"></td>
                                </tr>
                               <tr>
                                    <td class="border_bt_none">비율(%)</td>
                                    <td id="i-td-p-20" class="border_bt_none"></td>
                                    <td id="i-td-p-30" class="border_bt_none"></td>
                                    <td id="i-td-p-40" class="border_bt_none"></td>
                                    <td id="i-td-p-50" class="border_bt_none"></td>
                                    <td id="i-td-p-60" class="border_bt_none"></td>
                                    <td id="i-td-p-total" class="border_bt_none"></td>
                               </tr>
                            </tbody>
                        </table>

                        <div class="box_chart of_h">
                            <div class="fl">
                                <div id="bar-chart-holder2" style="width:419px; height:347px;margin:0 4em;"></div>
                            </div>
                            <div class="fr">
                                <div id="pi-chart-holder2" style="width:419px; height:347px;margin:0 4em;"></div>
                            </div>
                        </div>

                        <table class="tbl_st2 st st2" summary="피부정밀측정데이터 - 연번, 항목(코드명/변수명), 타입, 비고">
                            <caption>피부정보 데이터 개요 정보 표</caption>
                            <colgroup>
                                <col width="12%" />
                                <col width="14%" />
                                <col width="46%" />
                                <col width="16%" />
                                <col width="12%" />
                            </colgroup>
                            <thead>
                                <tr>
                                    <th rowspan="2" class="border_bt_td">연번</th>
                                    <th colspan="2">항목</th>
                                    <th rowspan="2" class="border_bt_td">타입</th>
                                    <th rowspan="2" class="border_bt_td">비고</th>
                                </tr>
                                <tr>
                                    <th class="border_bt_td">코드명</th>
                                    <th class="border_bt_td border_r_th">변수명</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>1</td>
                                    <td>ID</td>
                                    <td class="ta_l">샘플링아이디</td>
                                    <td>STRING</td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>2</td>
                                    <td>Age</td>
                                    <td class="ta_l">만 나이</td>
                                    <td>INT</td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>3</td>
                                    <td>Q01S1</td>
                                    <td class="ta_l">건성</td>
                                    <td>FLOAT</td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>4</td>
                                    <td>Q01S2</td>
                                    <td class="ta_l">복합성</td>
                                    <td>FLOAT</td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>5</td>
                                    <td>Q01S3</td>
                                    <td class="ta_l">지성</td>
                                    <td>FLOAT</td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>6</td>
                                    <td>Q01S4</td>
                                    <td class="ta_l">중성</td>
                                    <td>FLOAT</td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>7</td>
                                    <td>Q01S5</td>
                                    <td class="ta_l">중건성</td>
                                    <td>FLOAT</td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>8</td>
                                    <td>Q01S6</td>
                                    <td class="ta_l">중지성</td>
                                    <td>FLOAT</td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>9</td>
                                    <td>Q02S1</td>
                                    <td class="ta_l">피부고민:과색소침착</td>
                                    <td>FLOAT</td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>10</td>
                                    <td>Q02S2</td>
                                    <td class="ta_l">피부고민:수분부족</td>
                                    <td>FLOAT</td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>11</td>
                                    <td>Q02S3</td>
                                    <td class="ta_l">피부고민:탄력</td>
                                    <td>FLOAT</td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>12</td>
                                    <td>Q02S4</td>
                                    <td class="ta_l">피부고민:주름</td>
                                    <td>FLOAT</td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>13</td>
                                    <td>Q02S5</td>
                                    <td class="ta_l">피부고민:모공</td>
                                    <td>FLOAT</td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>14</td>
                                    <td>Q02S6</td>
                                    <td class="ta_l">피부고민:각질</td>
                                    <td>FLOAT</td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>15</td>
                                    <td>Q02S7</td>
                                    <td class="ta_l">피부고민:여드름, 뾰루지</td>
                                    <td>FLOAT</td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>16</td>
                                    <td>Q02S8</td>
                                    <td class="ta_l">피부고민:블랙헤드</td>
                                    <td>FLOAT</td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>17</td>
                                    <td>Q02S9</td>
                                    <td class="ta_l">피부고민:민감</td>
                                    <td>FLOAT</td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>18</td>
                                    <td>Q02S10</td>
                                    <td class="ta_l">피부고민:유분 과다</td>
                                    <td>FLOAT</td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>19</td>
                                    <td>Q02S11</td>
                                    <td class="ta_l">피부고민:홍조</td>
                                    <td>FLOAT</td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>20</td>
                                    <td>Q03S1</td>
                                    <td class="ta_l">세안 후 당김</td>
                                    <td>FLOAT</td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>21</td>
                                    <td>Q03S2</td>
                                    <td class="ta_l">세안 후 당김</td>
                                    <td>FLOAT</td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>22</td>
                                    <td>Q04S1</td>
                                    <td class="ta_l">화장이 쉽게 지워짐</td>
                                    <td>INT</td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>23</td>
                                    <td>Q04S2</td>
                                    <td class="ta_l">화장이 잘 들뜸</td>
                                    <td>INT</td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>24</td>
                                    <td>Q05S1</td>
                                    <td class="ta_l">T존 건조</td>
                                    <td>INT</td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>25</td>
                                    <td>Q05S2</td>
                                    <td class="ta_l">T존 유분</td>
                                    <td>INT</td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>26</td>
                                    <td>Q06S1</td>
                                    <td class="ta_l">U존 건조</td>
                                    <td>INT</td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>27</td>
                                    <td>Q06S2</td>
                                    <td class="ta_l">U존 유분</td>
                                    <td>INT</td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>28</td>
                                    <td>Q07S1</td>
                                    <td class="ta_l">모공상태</td>
                                    <td>INT</td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>29</td>
                                    <td>Q08S1</td>
                                    <td class="ta_l">피부 윤기 없음</td>
                                    <td>INT</td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>30</td>
                                    <td>Q08S2</td>
                                    <td class="ta_l">피부 윤기 과다</td>
                                    <td>INT</td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>31</td>
                                    <td>Q09S1</td>
                                    <td class="ta_l">화장품 변화 트러블</td>
                                    <td>INT</td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>32</td>
                                    <td>Q10S1</td>
                                    <td class="ta_l">날씨 피부 발적</td>
                                    <td>INT</td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>33</td>
                                    <td>Q11S1</td>
                                    <td class="ta_l">알러지성 발진</td>
                                    <td>INT</td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>34</td>
                                    <td>Q12S1</td>
                                    <td class="ta_l">스트레스 피부 트러블</td>
                                    <td>INT</td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>35</td>
                                    <td>Q13S1</td>
                                    <td class="ta_l">실핏줄</td>
                                    <td>INT</td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>36</td>
                                    <td>Q14S1</td>
                                    <td class="ta_l">기미, 점, 주근깨</td>
                                    <td>INT</td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>37</td>
                                    <td>Q15S1</td>
                                    <td class="ta_l">칙칙함</td>
                                    <td>INT</td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>38</td>
                                    <td>Q16S1</td>
                                    <td class="ta_l">균일한 톤</td>
                                    <td>INT</td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>39</td>
                                    <td>Q17S1</td>
                                    <td class="ta_l">태양민감</td>
                                    <td>INT</td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>40</td>
                                    <td>Q18S1</td>
                                    <td class="ta_l">색소침착</td>
                                    <td>INT</td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>41</td>
                                    <td>Q019S1</td>
                                    <td class="ta_l">잔주름</td>
                                    <td>INT</td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>42</td>
                                    <td>Q20S1</td>
                                    <td class="ta_l">굵은주름</td>
                                    <td>INT</td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>43</td>
                                    <td>Q21S1</td>
                                    <td class="ta_l">목주름</td>
                                    <td>INT</td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>44</td>
                                    <td>Q22S1</td>
                                    <td class="ta_l">피부탄력도</td>
                                    <td>INT</td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>45</td>
                                    <td>Q23S1</td>
                                    <td class="ta_l">피부 자국</td>
                                    <td>INT</td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>46</td>
                                    <td>Q24S1</td>
                                    <td class="ta_l">피부 노화</td>
                                    <td>INT</td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>47</td>
                                    <td>Q25S1</td>
                                    <td class="ta_l">피부 동안</td>
                                    <td>INT</td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>48</td>
                                    <td>Q26S1</td>
                                    <td class="ta_l">모공크기 및 모양</td>
                                    <td>INT</td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>49</td>
                                    <td>Q27S1</td>
                                    <td class="ta_l">얼굴 처짐</td>
                                    <td>INT</td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>50</td>
                                    <td>Q28S1</td>
                                    <td class="ta_l">얼굴 볼륨</td>
                                    <td>INT</td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>51</td>
                                    <td>Q29S1</td>
                                    <td class="ta_l">화장품선택:성분</td>
                                    <td>INT</td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>52</td>
                                    <td>Q29S2</td>
                                    <td class="ta_l">화장품선택:사용감</td>
                                    <td>INT</td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>53</td>
                                    <td>Q29S3</td>
                                    <td class="ta_l">화장품선택:느낌</td>
                                    <td>INT</td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>54</td>
                                    <td>Q29S4</td>
                                    <td class="ta_l">화장품선택:광고성(사전에 정보가 있음)</td>
                                    <td>INT</td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>55</td>
                                    <td>Q29S5</td>
                                    <td class="ta_l">화장품선택:브랜드</td>
                                    <td>INT</td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>56</td>
                                    <td>Q29S6</td>
                                    <td class="ta_l">화장품선택:가격</td>
                                    <td>INT</td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>57</td>
                                    <td>Q29S7</td>
                                    <td class="ta_l">화장품선택:향</td>
                                    <td>INT</td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>58</td>
                                    <td>Q29S8</td>
                                    <td class="ta_l">화장품선택:색깔</td>
                                    <td>INT</td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>59</td>
                                    <td>Q29S9</td>
                                    <td class="ta_l">화장품선택:디자인</td>
                                    <td>INT</td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>60</td>
                                    <td>Q30S1</td>
                                    <td class="ta_l">화장품 향:약한 향</td>
                                    <td>INT</td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>61</td>
                                    <td>Q30S2</td>
                                    <td class="ta_l">화장품 향:향 없음</td>
                                    <td>INT</td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>62</td>
                                    <td>Q30S3</td>
                                    <td class="ta_l">화장품 향:향수처럼 개성있는 느낌의 향</td>
                                    <td>INT</td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>63</td>
                                    <td>Q30S4</td>
                                    <td class="ta_l">화장품 향:비누향</td>
                                    <td>INT</td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>64</td>
                                    <td>Q30S5</td>
                                    <td class="ta_l">화장품 향:유아제품 향</td>
                                    <td>INT</td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>65</td>
                                    <td>Q31S1</td>
                                    <td class="ta_l">화장품 바르는 느낌 : 촉촉함</td>
                                    <td>INT</td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>66</td>
                                    <td>Q31S2</td>
                                    <td class="ta_l">화장품 바르는 느낌 : 금방 흡수되는 느낌</td>
                                    <td>INT</td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>67</td>
                                    <td>Q31S3</td>
                                    <td class="ta_l">화장품 바르는 느낌 : 보통</td>
                                    <td>INT</td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>68</td>
                                    <td>Q31S4</td>
                                    <td class="ta_l">화장품 바르는 느낌 : 영양감</td>
                                    <td>INT</td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>69</td>
                                    <td>Q31S5</td>
                                    <td class="ta_l">화장품 바르는 느낌 : 물기가 없고 부드러운 느낌</td>
                                    <td>INT</td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>70</td>
                                    <td>Q32S1</td>
                                    <td class="ta_l">화장품 물성 : 쫀쫀함</td>
                                    <td>INT</td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>71</td>
                                    <td>Q32S2</td>
                                    <td class="ta_l">화장품 물성 : 보통</td>
                                    <td>INT</td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>72</td>
                                    <td>Q32S3</td>
                                    <td class="ta_l">화장품 물성 : 가벼움</td>
                                    <td>INT</td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>73</td>
                                    <td>Q32S4</td>
                                    <td class="ta_l">화장품 물성 : 꾸덕한 느낌</td>
                                    <td>INT</td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>74</td>
                                    <td>Q32S5</td>
                                    <td class="ta_l">화장품 물성 : 물처럼 매끄러운 타입</td>
                                    <td>INT</td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>75</td>
                                    <td>Q33S1</td>
                                    <td class="ta_l">기름지고 단 음식</td>
                                    <td>INT</td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>76</td>
                                    <td>Q34S1</td>
                                    <td class="ta_l">야외활동</td>
                                    <td>INT</td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>77</td>
                                    <td>Q35S1</td>
                                    <td class="ta_l">자외선 차단제</td>
                                    <td>INT</td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>78</td>
                                    <td>Q36S1</td>
                                    <td class="ta_l">피부악화(다이어트)</td>
                                    <td>INT</td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>79</td>
                                    <td>Q37S1</td>
                                    <td class="ta_l">음주량</td>
                                    <td>INT</td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>80</td>
                                    <td>Q38S1</td>
                                    <td class="ta_l">흡연량</td>
                                    <td>INT</td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>81</td>
                                    <td>Q39S1</td>
                                    <td class="ta_l">스트레스</td>
                                    <td>INT</td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>82</td>
                                    <td>Q40S1</td>
                                    <td class="ta_l">피부과 시술</td>
                                    <td>INT</td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>83</td>
                                    <td>Q41S1</td>
                                    <td class="ta_l">임신 출산 경험</td>
                                    <td>INT</td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>84</td>
                                    <td>Q42S1</td>
                                    <td class="ta_l">피부악화(임신, 출산)</td>
                                    <td>INT</td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>85</td>
                                    <td>Q43S1</td>
                                    <td class="ta_l">수면시간</td>
                                    <td>INT</td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>86</td>
                                    <td>Q44S1</td>
                                    <td class="ta_l">각질관리</td>
                                    <td>INT</td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>87</td>
                                    <td>Q45S1</td>
                                    <td class="ta_l">손톱자국</td>
                                    <td>INT</td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>88</td>
                                    <td>Q46S1</td>
                                    <td class="ta_l">화장품 트러블</td>
                                    <td>INT</td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>89</td>
                                    <td>Q47S1</td>
                                    <td class="ta_l">T존 U존 트러블</td>
                                    <td>INT</td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td class="border_bt_none">90</td>
                                    <td class="border_bt_none">Q48S1</td>
                                    <td class="border_bt_none ta_l">스트레스 트러블</td>
                                    <td class="border_bt_none">INT</td>
                                    <td class="border_bt_none"></td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>

                <div class="box3 mb_150">
                    <div class="box_head">
                        <h4 class="tit"><span class="num">3</span>유전자데이터</h4>
                        <select class="select" name="" id="">
                            <option value="">맞춤형 화장품 분야 빅데이터 1차</option>
                            <option value="">맞춤형 화장품 분야 빅데이터 2차</option>
                        </select>
                    </div>
                    <p>20대~60대 한국여성 1,157명을 대상으로 채취한 유전체에서 얻어낸 약 80만개 SNP를 활용하여 전장유전체상관분석을 수행하고 이를 통해 주름, 색소, 보습, 유분, 민감성과 유의미한 관련을 갖는 SNP를 유전변이지표로 선정한 데이터를 DB화하여 구성하였다.</p>
                    <div class="box_cont">
                        <table class="tbl_st2 st" summary="피부정밀측정데이터 - 구분, 성별 인원(20대/30대/40대/50대/60대), 합계">
                            <caption>피부정보 데이터 개요 정보 표</caption>
                            <colgroup>
                                <col width="19%" />
                                <col width="13.5%" />
                                <col width="13.5%" />
                                <col width="13.5%" />
                                <col width="13.5%" />
                                <col width="13.5%" />
                                <col width="13.5%" />
                            </colgroup>
                            <thead>
                                <tr>
                                    <th rowspan="2" class="border_bt_td">구분</th>
                                    <th colspan="5">성별 인원(명)</th>
                                    <th rowspan="2" class="border_bt_td">합계</th>
                                </tr>
                                <tr>
                                    <th class="border_bt_td">20대</th>
                                    <th class="border_bt_td">30대</th>
                                    <th class="border_bt_td">40대</th>
                                    <th class="border_bt_td">50대</th>
                                    <th class="border_bt_td border_r_th">60대</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>인원수(명)</td>
                                    <td id="g-td-20"></td>
                                    <td id="g-td-30"></td>
                                    <td id="g-td-40"></td>
                                    <td id="g-td-50"></td>
                                    <td id="g-td-60"></td>
                                    <td id="g-td-total"></td>
                                </tr>
                               <tr>
                                    <td class="border_bt_none">비율(%)</td>
                                    <td id="g-td-p-20" class="border_bt_none"></td>
                                    <td id="g-td-p-30" class="border_bt_none"></td>
                                    <td id="g-td-p-40" class="border_bt_none"></td>
                                    <td id="g-td-p-50" class="border_bt_none"></td>
                                    <td id="g-td-p-60" class="border_bt_none"></td>
                                    <td id="g-td-p-total" class="border_bt_none"></td>
                               </tr>
                            </tbody>
                        </table>

                        <div class="box_chart of_h">
                            <div class="fl">
                                <div id="bar-chart-holder3" style="width:419px; height:347px;margin:0 4em;"></div>
                            </div>
                            <div class="fr">
                                <div id="pi-chart-holder3" style="width:419px; height:347px;margin:0 4em;"></div>
                            </div>
                        </div>

                        <table class="tbl_st2 st st2" summary="피부정밀측정데이터 - 연번, 항목(코드명/변수명), 타입, 비고">
                            <caption>피부정보 데이터 개요 정보 표</caption>
                            <colgroup>
                                <col width="12%" />
                                <col width="14%" />
                                <col width="46%" />
                                <col width="16%" />
                                <col width="12%" />
                            </colgroup>
                            <thead>
                                <tr>
                                    <th rowspan="2" class="border_bt_td">연번</th>
                                    <th colspan="2">항목</th>
                                    <th rowspan="2" class="border_bt_td">타입</th>
                                    <th rowspan="2" class="border_bt_td">비고</th>
                                </tr>
                                <tr>
                                    <th class="border_bt_td">코드명</th>
                                    <th class="border_bt_td border_r_th">변수명</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>1</td>
                                    <td>ID</td>
                                    <td class="ta_l">샘플링아이디</td>
                                    <td>STRING</td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>2</td>
                                    <td>Age</td>
                                    <td class="ta_l">만 나이</td>
                                    <td>INT</td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>3</td>
                                    <td>Wrinkle1</td>
                                    <td class="ta_l">유전변이 지표(주름)</td>
                                    <td>INT</td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>4</td>
                                    <td>Wrinkle2</td>
                                    <td class="ta_l">유전변이 지표(주름)</td>
                                    <td>INT</td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>5</td>
                                    <td>Wrinkle3</td>
                                    <td class="ta_l">유전변이 지표(주름)</td>
                                    <td>INT</td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>6</td>
                                    <td>Wrinkle4</td>
                                    <td class="ta_l">유전변이 지표(주름)</td>
                                    <td>INT</td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>7</td>
                                    <td>Moisture1</td>
                                    <td class="ta_l">유전변이 지표(수분)</td>
                                    <td>INT</td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>8</td>
                                    <td>Moisture2</td>
                                    <td class="ta_l">유전변이 지표(수분)</td>
                                    <td>INT</td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>9</td>
                                    <td>Moisture3</td>
                                    <td class="ta_l">유전변이 지표(수분)</td>
                                    <td>INT</td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>10</td>
                                    <td>Moisture4</td>
                                    <td class="ta_l">유전변이 지표(수분)</td>
                                    <td>INT</td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>11</td>
                                    <td>Moisture5</td>
                                    <td class="ta_l">유전변이 지표(수분)</td>
                                    <td>INT</td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>12</td>
                                    <td>Moisture6</td>
                                    <td class="ta_l">유전변이 지표(수분)</td>
                                    <td>INT</td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>13</td>
                                    <td>Melanin1</td>
                                    <td class="ta_l">유전변이 지표(멜라닌)</td>
                                    <td>INT</td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>14</td>
                                    <td>Melanin2</td>
                                    <td class="ta_l">유전변이 지표(멜라닌)</td>
                                    <td>INT</td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>15</td>
                                    <td>Melanin3</td>
                                    <td class="ta_l">유전변이 지표(멜라닌)</td>
                                    <td>INT</td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>16</td>
                                    <td>Melanin4</td>
                                    <td class="ta_l">유전변이 지표(멜라닌)</td>
                                    <td>INT</td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>17</td>
                                    <td>Melanin5</td>
                                    <td class="ta_l">유전변이 지표(멜라닌)</td>
                                    <td>INT</td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>18</td>
                                    <td>Melanin6</td>
                                    <td class="ta_l">유전변이 지표(멜라닌)</td>
                                    <td>INT</td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>19</td>
                                    <td>Oil1</td>
                                    <td class="ta_l">유전변이 지표(유분)</td>
                                    <td>INT</td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>20</td>
                                    <td>Oil2</td>
                                    <td class="ta_l">유전변이 지표(유분)</td>
                                    <td>INT</td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>21</td>
                                    <td>Oil3</td>
                                    <td class="ta_l">유전변이 지표(유분)</td>
                                    <td>INT</td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>22</td>
                                    <td>Oil4</td>
                                    <td class="ta_l">유전변이 지표(유분)</td>
                                    <td>INT</td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>23</td>
                                    <td>Oil5</td>
                                    <td class="ta_l">유전변이 지표(유분)</td>
                                    <td>INT</td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>24</td>
                                    <td>Oil6</td>
                                    <td class="ta_l">유전변이 지표(유분)</td>
                                    <td>INT</td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>25</td>
                                    <td>Sensitivity1</td>
                                    <td class="ta_l">유전변이 지표(민감성)</td>
                                    <td>INT</td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td class="border_bt_none">26</td>
                                    <td class="border_bt_none">Sensitivity1</td>
                                    <td class="border_bt_none ta_l">유전변이 지표(민감성)</td>
                                    <td class="border_bt_none">INT</td>
                                    <td class="border_bt_none"></td>
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