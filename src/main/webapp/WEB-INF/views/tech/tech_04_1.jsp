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
                    <button type="button">릴리커버</button>
                    <ul>
                        <li><a href="${pageContext.request.contextPath}/beautytech/tech_01_1">아람휴비스</a></li>
                        <li><a href="${pageContext.request.contextPath}/beautytech/tech_02_1">초위스컴퍼니</a></li>
                        <li><a href="${pageContext.request.contextPath}/beautytech/tech_03_1">룰루랩</a></li>
                        <li class="active"><a href="${pageContext.request.contextPath}/beautytech/tech_04_1">릴리커버</a>
                            <ul>
                                <li class="active"><a href="${pageContext.request.contextPath}/beautytech/tech_04_1">회사소개</a></li>
                                <li><a href="${pageContext.request.contextPath}/beautytech/tech_04_2">피부진단기 모델</a></li>
                            </ul>
                        </li>
                        <li><a href="${pageContext.request.contextPath}/beautytech/tech_05_1">링커버스</a></li>
                        <li><a href="${pageContext.request.contextPath}/beautytech/tech_06_1">에프앤디파트너스</a></li>
                        <li><a href="${pageContext.request.contextPath}/beautytech/tech_07_1">케이씨테크놀러지</a></li>
                        <li><a href="${pageContext.request.contextPath}/beautytech/tech_08_1">파이</a></li>
                        <li><a href="${pageContext.request.contextPath}/beautytech/tech_09_1">헬리오스</a></li>
                        <li><a class="last" href="${pageContext.request.contextPath}/beautytech/tech_10_1">인바디</a></li>
                    </ul>
                </div>

                <ul class="depth_03">
                    <li class="active"><a href="${pageContext.request.contextPath}/beautytech/tech_04_1">회사소개</a></li>
                    <li><a href="${pageContext.request.contextPath}/beautytech/tech_04_2">피부진단기 모델</a></li>
                </ul>
            </div>
        </div>
        <!-- //컨텐츠 상단 서브 메뉴 -->

        <!-- 타이틀 -->
        <div class="title title_bg_04">
            <div class="inner">
                <div class="txtbox">
                    <div class="tit_s ff_nm">My Skin Guide Platform</div>
                    <h3 class="ff_nm">릴리커버</h3>
                    <p>최첨단 피부진단기 기술력을 보유한 <br />
                        피부연구를 선도하는 회사들을 소개 해 드립니다. </p>
                </div>
            </div>
        </div>
        <!-- //타이틀 -->

        <!-- 컨텐츠 -->
        <div class="content lilly">
            <div class="inner">

                <h2 class="ff_nm bar">회사소개</h2>
                <div class="box1 mb_150">
                    <h3><span class="company_name">회사명</span>주식회사 릴리커버</h3>

                    <div class="company_info">
                        <span class="imgbox ta_c"><img width="201" height="111" src="${pageContext.request.contextPath}/resources/static/images_old/tech/lilly_logo.png" alt="릴리커버 로고" /></span>

                        <p class="txtlink ta_c"><a href="https://lillyshop.net" target="_blank" rel="noopener noreferrer">https://lillyshop.net</a></p>

                        <p class="txtinfo ta_c">(주)릴리커버는 2016년 설립된 IoT 및 BT 기술 기반 뷰티테크 기업으로서 <br />
                            빅데이터와 분석 알고리즘을 통한 피부 진단부터 솔루션까지 <br />
                            맞춤형 화장품의 원스탑 서비스 제공을 통해 사업을 전개하고 있습니다.</p>

                        <p class="mb_50">국내외 유수 기업의 투자와 지원을 받고 있으며 국내 백화점 내 팝업 스토어 입점을 비롯해 일본, 홍콩을 비롯한 해외 시장까지 진출하며 사업을 확장하고 있습니다.</p>
                        
                        <div class="company_tech">
                            <div class="company_tech_tit">기술현황</div>
                            <p>당사는 자체 개발한 휴대용 피부/두피 진단기기를 통해 세계 각국에서 수집된 135,000건의 피부데이터를 확보 중이며, 이를 활용한 AI분석 알고리즘과 즉석 맞춤형 화장품 조제장치 개발 및 운용을 통해 정밀 진단부터 맞춤형 제품 조제까지 원스탑 솔루션 제공이 가능합니다.  <br />
                            수많은 기업들이 맞춤형 화장품 시장에 진출하고 있지만 전 세계적으로 진단부터 조제까지 원스탑 솔루션 제공이 가능한 기업은 당사가 유일합니다.</p>
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