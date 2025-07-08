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
                                <li class="active"><a href="${pageContext.request.contextPath}/performance/performance_04_1">데이터 개요 및 구축과정</a></li>
                                <li><a class="last" href="${pageContext.request.contextPath}/performance/performance_04_2">데이터 상세</a></li>
                            </ul>
                        </li>
                    </ul>
                </div>

                <ul class="depth_03">
                    <li class="active"><a href="${pageContext.request.contextPath}/performance/performance_04_1">데이터 개요 및 구축과정</a></li>
                    <li><a href="${pageContext.request.contextPath}/performance/performance_04_2">데이터 상세</a></li>
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
        <div class="content data_intro">
            <div class="inner">

                <h2 class="ff_nm bar">데이터 개요 및 구축과정</h2>

                <div class="box1">
                    <div class="box_head">
                        <h4 class="tit"><span class="num">1</span>데이터 개요</h4>
                      <!--
                        <select class="select" name="" id="">
                            <option value="">맞춤형 화장품 분야 빅데이터 1차</option>
                            <option value="">맞춤형 화장품 분야 빅데이터 2차</option>
                        </select>
                        -->
                    </div>
                    <div class="box_cont mb_160">
                        <table class="tbl_st2" summary="피부정보 데이터 개요 - 데이터명, 관리기관, 생성기관, 데이터 관리담당자, 구축데이터량, 버전, 데이터 유형, 저작권 및 이용정책, 데이터 코드북">
                            <caption>피부정보 데이터 개요 정보 표</caption>
                            <colgroup>
                                <col width="16%" />
                                <col width="30%" />
                                <col width="16%" />
                                <col width="13%" />
                                <col width="25%" />
                            </colgroup>
                            <thead class="blind">
                                <tr>
                                    <th>제목</th>
                                    <th colspan="4">상세내용</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <th>데이터명</th>
                                    <td colspan="4" class="ta_l">맞춤형 화장품 분야 빅데이터</td>
                                </tr>
                                <tr>
                                    <th>관리기관</th>
                                    <td class="ta_l">(재)제주테크노파크</td>
                                    <th rowspan="3">데이터 관리 담당자</th>
                                    <td class="bg">담당자</td>
                                    <td class="ta_l">김수환 연구원</td>
                                </tr>
                                <tr>
                                    <th>생성기관</th>
                                    <td class="ta_l">(재)제주테크노파크</td>
                                    <td class="bg ta_c">전화번호</td>
                                    <td class="ta_l">064-720-2355</td>
                                </tr>
                                <tr>
                                    <th>구축데이터량</th>
                                    <td class="ta_l">7,157 건</td>
                                    <td class="bg ta_c">이메일</td>
                                    <td class="ta_l"><a href="mailto:sswan85@jejutp.or.kr;">sswan85@jejutp.or.kr</a></td>
                                </tr>
                                <tr>
                                    <th>버전</th>
                                    <td class="ta_l">1.0</td>
                                    <th class="border_bt_td">데이터 유형</th>
                                    <td colspan="2" class="ta_l">텍스트</td>
                                </tr>
                                <tr>
                                    <th>저작권 및 이용정책</th>
                                    <td colspan="4" class="ta_l">본 데이터는 산업통상자원부가 지원하는 ‘빅데이터 활용 개인 맞춤형 화장품 기반기술 개발’로 구축된 데이터입니다.</td>
                                </tr>
                                <tr>
                                    <th class="border_bt_none">데이터 코드북</th>
                                    <td class="border_bt_none ta_l" colspan="4"><a class="downfile" href="${pageContext.request.contextPath}/resources/static/download_old/맞춤형화장품 빅데이터 코드북_v20220215.xlsx" target="_blank" rel="noopener noreferrer" title="새창">맞춤형화장품 빅데이터 코드북_v20220215.xlsx</a></td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>

                <div class="box2">
                    <h4 class="tit mb_20"><span class="num">2</span>데이터 구축과정</h4>
                    <p>20대 ~ 60대 연령대 한국여성을 대상으로 피부정밀측정 및 설문·문진 대상자 3000명, 유전자 채취 대상자 1157명을 선정하여 해당 데이터를 
                        수집하고 전처리 과정인 개인정보를 제거하는 비식별화 처리를 진행하였으며, 데이터 구축 처리과정은 아래와 같습니다.</p>
                    <dl class="data_process mb_100">
                        <dt>맞춤형 화장품 분야 빅데이터 구축 프로세스</dt>
                        <dd>수집 데이터 후보 선별</dd>
                        <dd>피부측정/설문·문진 조사/유전자채취</dd>
                        <dd>데이터 추출</dd>
                        <dd>비식별화(성명, 생년월일 등 제거)</dd>
                        <dd>Excel 파일로 취합</dd>
                    </dl>
                </div>

            </div>
        </div>
        <!-- //컨텐츠 -->

    </section>
    <!-- //Container -->

    <jsp:include page="../common/footer.jsp"/>
</body>
</html>