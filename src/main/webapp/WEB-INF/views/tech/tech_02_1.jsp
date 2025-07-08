<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>SKIN QURATOR</title>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/static/js_old/lib/jquery-3.6.1.min.js" ></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/static/js_old/lib/jquery-1.6.4.min.js" ></script>

    <jsp:include page="../common/common.jsp"/>
</head>
<body class="page_tech">
    <jsp:include page="../common/header.jsp"/>



    <!-- Container -->
    <section class="container">

        <!-- 컨텐츠 상단 서브 메뉴 -->
        <div class="lnb_wrap">
            <div class="inner">
                <div class="lnb">
                    <button type="button">초위스컴퍼니</button>
                    <ul>
                        <li><a href="${pageContext.request.contextPath}/beautytech/tech_01_1">아람휴비스</a></li>
                        <li class="active"><a href="${pageContext.request.contextPath}/beautytech/tech_02_1">초위스컴퍼니</a>
                            <ul>
                                <li class="active"><a href="${pageContext.request.contextPath}/beautytech/tech_02_1">회사소개</a></li>
                                <li><a href="${pageContext.request.contextPath}/beautytech/tech_02_2">피부진단기 모델</a></li>
                            </ul>
                        </li>
                        <li><a href="${pageContext.request.contextPath}/beautytech/tech_03_1">룰루랩</a></li>
                        <li><a href="${pageContext.request.contextPath}/beautytech/tech_04_1">릴리커버</a></li>
                        <li><a href="${pageContext.request.contextPath}/beautytech/tech_05_1">링커버스</a></li>
                        <li><a href="${pageContext.request.contextPath}/beautytech/tech_06_1">에프앤디파트너스</a></li>
                        <li><a href="${pageContext.request.contextPath}/beautytech/tech_07_1">케이씨테크놀러지</a></li>
                        <li><a href="${pageContext.request.contextPath}/beautytech/tech_08_1">파이</a></li>
                        <li><a href="${pageContext.request.contextPath}/beautytech/tech_09_1">헬리오스</a></li>
                        <li><a class="last" href="${pageContext.request.contextPath}/beautytech/tech_10_1">인바디</a></li>
                    </ul>
                </div>

                <ul class="depth_03">
                    <li class="active"><a href="${pageContext.request.contextPath}/beautytech/tech_02_1">회사소개</a></li>
                    <li><a href="${pageContext.request.contextPath}/beautytech/tech_02_2">피부진단기 모델</a></li>
                </ul>
            </div>
        </div>
        <!-- //컨텐츠 상단 서브 메뉴 -->

        <!-- 타이틀 -->
        <div class="title title_bg_04">
            <div class="inner">
                <div class="txtbox">
                    <div class="tit_s ff_nm">My Skin Guide Platform</div>
                    <h3 class="ff_nm">초위스컴퍼니</h3>
                    <p>최첨단 피부진단기 기술력을 보유한 <br />
                        피부연구를 선도하는 회사들을 소개 해 드립니다. </p>
                </div>
            </div>
        </div>
        <!-- //타이틀 -->

       <!-- 컨텐츠 -->
       <div class="content chowis">
        <div class="inner">

            <h2 class="ff_nm bar">회사소개</h2>

            <div class="box1 mb_150">
                <h3><span class="company_name">회사명</span>초위스컴퍼니</h3>

                <div class="company_info">
                    <span class="imgbox ta_c"><img width="284" height="80" src="${pageContext.request.contextPath}/resources/static/images_old/tech/chowis_logo.png" alt="Chowis 로고" /></span>

                    <p class="txtlink ta_c"><a href="https://www.chowis.com" target="_blank" rel="noopener noreferrer">https://www.chowis.com</a></p>

                    <p class="txtinfo ta_c">초위스컴퍼니는 광학, 비디오 이미지 처리 기술 및 소프트웨어 개발을 <br />
                        전문으로 하는 피부 및 모발·두피 진단 기술 기업입니다.</p>

                    <p class="mb_50">2012년 ‘Science to Home’을 슬로건 삼아 설립한 이래 스마트 모바일 진단 솔루션을 구축하여 전 세계 고객에 제공하고 있습니다.
                        고도화된 광학 장비와 과학적으로 입증된 영상 분석 프로그램, 독보적인 AI 알고리즘 및 빅데이터 기술로 설계된 초위스컴퍼니의 모바일 진단 솔루션은 진보된 기술력으로 다양한 모바일 플랫폼을 지원함으로써, 글로벌 화장품 및 의료 그룹 등 최첨단 피부 및 모발·두피 진단 솔루션을 찾는 고객에게 최적의 비즈니스 파트너로 활약하고 있습니다.</p>

                    <div class="company_tech of_h">
                        <div class="company_tech_tit">기술현황</div>
                        <div class="fl">
                            <span class="ct_tit">2012</span>
                            <ul class="bul_cir_s mb_30">
                                <li>㈜초위스컴퍼니 설립</li>
                                <li>P&G 공식 제공업체(Supply) 등록</li>
                            </ul>
                            <span class="ct_tit">2013</span>
                            <ul class="bul_cir_s mb_30">
                                <li>P&G 피부 각질 분석 테이프 공급권 획득</li>
                                <li>㈜초위스컴퍼니 기업부설연구소 설립</li>
                                <li>로레알 R&I(Research&Incubation) <br />
                                    피부진단기기 개발 계약 체결</li>
                                <li>P&G 일본 피부 광채 분석 기기 독점 납품</li>
                                <li>㈜초위스컴퍼니 본사 이전</li>
                                <li>P&G 미국, 유럽 외 10개국 피부 광채 분석 기기 독점 납품</li>
                            </ul>
                            <span class="ct_tit">2014</span>
                            <ul class="bul_cir_s mb_30">
                                <li>P&G 연구소, 신규 피부 분석 시스템 프로토 타입 <br />
                                    개발 납품 계약 체결</li>
                                <li>로레알 R&I 2차 계약 개발 프로젝트 체결</li>
                            </ul>
                            <span class="ct_tit">2015</span>
                            <ul class="bul_cir_s mb_30">
                                <li>로레알 연구소 합작 진행, 뉴욕·파리·아시아(일본, 한국) <br />
                                    인종별 피부 분석 임상 연구 진행</li>
                                <li>로레알 R&I 3차 계약 신규 개발 프로젝트 체결</li>
                                <li>㈜초위스컴퍼니 본사 이전</li>
                            </ul>
                            <span class="ct_tit">2016</span>
                            <ul class="bul_cir_s mb_30">
                                <li>BEIERSDORF(니베아-NIVEA) 가정용 피부 진단 <br />
                                    연구 과제 수주(미국, 독일, 한국 3개 국)</li>
                                <li>건국대학교 협력 과제 진행</li>
                            </ul>
                        </div>
                        <div class="fr">
                            <span class="ct_tit">2017</span>
                            <ul class="bul_cir_s mb_30">
                                <li>LOREAL LANCOME JAPAN 론칭</li>
                            </ul>
                            <span class="ct_tit">2018</span>
                            <ul class="bul_cir_s mb_30">
                                <li>MTG JAPAN 개발 수주, 협력 과제 진행</li>
                                <li>피에르파브르, IOS 기반의 전문가형 두피 진단 시스템 론칭</li>
                            </ul>
                            <span class="ct_tit">2019</span>
                            <ul class="bul_cir_s mb_30">
                                <li>중국 진출, 현지 ManZheYen, Yalijie, SiYanLee 피부 및 <br />
                                    모발·두피 진단 시스템 제공</li>
                            </ul>
                            <span class="ct_tit">2020</span>
                            <ul class="bul_cir_s mb_30">
                                <li>성균관대학교, AI 기반의 피부 진단 시스템 개발</li>
                                <li>중국 지사 설립</li>
                                <li>㈜초위스컴퍼니 본사 이전</li>
                            </ul>
                            <span class="ct_tit">2021</span>
                            <ul class="bul_cir_s mb_30">
                                <li>경동대학교, 전안 진단 AI 시스템 개발 협업</li>
                                <li>인도공과대학교(IIT), 피부 및 모발·두피 진단, 신체와 <br />
                                    감정 표현 분석을 포함한 AI/AR 알고리즘 모델 개선 및 개발</li>
                                <li>Keune, 모발 및 두피 진단 시스템 20개국 론칭</li>
                            </ul>
                            <span class="ct_tit">2022</span>
                            <ul class="bul_cir_s mb_30">
                                <li>분당차병원, 공동프로젝트를 통한 AI 기반 피부·두피·감정·자세 <br />
                                    원스텝 분석 키오스크 부스 개발</li>
                            </ul>
                        </div>
                    </div>

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