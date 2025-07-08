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
                    <button type="button">파이</button>
                    <ul>
                        <li><a href="${pageContext.request.contextPath}/beautytech/tech_01_1">아람휴비스</a></li>
                        <li><a href="${pageContext.request.contextPath}/beautytech/tech_02_1">초위스컴퍼니</a></li>
                        <li><a href="${pageContext.request.contextPath}/beautytech/tech_03_1">룰루랩</a></li>
                        <li><a href="${pageContext.request.contextPath}/beautytech/tech_04_1">릴리커버</a></li>
                        <li><a href="${pageContext.request.contextPath}/beautytech/tech_05_1">링커버스</a></li>
                        <li><a href="${pageContext.request.contextPath}/beautytech/tech_06_1">에프앤디파트너스</a></li>
                        <li><a href="${pageContext.request.contextPath}/beautytech/tech_07_1">케이씨테크놀러지</a></li>
                        <li class="active"><a href="${pageContext.request.contextPath}/beautytech/tech_08_1">파이</a>
                            <ul>
                                <li class="active"><a href="${pageContext.request.contextPath}/beautytech/tech_08_1">회사소개</a></li>
                                <li><a href="${pageContext.request.contextPath}/beautytech/tech_08_2">피부진단기 모델</a></li>
                            </ul>
                        </li>
                        <li><a href="${pageContext.request.contextPath}/beautytech/tech_09_1">헬리오스</a></li>   
                        <li><a class="last" href="${pageContext.request.contextPath}/beautytech/tech_10_1">인바디</a></li>
                    </ul>
                </div>

                <ul class="depth_03">
                    <li class="active"><a href="${pageContext.request.contextPath}/beautytech/tech_08_1">회사소개</a></li>
                    <li><a href="${pageContext.request.contextPath}/beautytech/tech_08_2">피부진단기 모델</a></li>
                </ul>
            </div>
        </div>
        <!-- //컨텐츠 상단 서브 메뉴 -->

        <!-- 타이틀 -->
        <div class="title title_bg_04">
            <div class="inner">
                <div class="txtbox">
                    <div class="tit_s ff_nm">My Skin Guide Platform</div>
                    <h3 class="ff_nm">파이</h3>
                    <p>최첨단 피부진단기 기술력을 보유한 <br />
                        피부연구를 선도하는 회사들을 소개 해 드립니다. </p>
                </div>
            </div>
        </div>
        <!-- //타이틀 -->

        <!-- 컨텐츠 -->
        <div class="content pie">
            <div class="inner">
                <h2 class="ff_nm bar">회사소개</h2>

                <div class="box1 mb_150">
                    <h3><span class="company_name">회사명</span>파이 주식회사</h3>

                    <div class="company_info">
                        <span class="imgbox ta_c"><img width="276" height="80" src="${pageContext.request.contextPath}/resources/static/images_old/tech/pie_logo.png" alt="PIE 로고" /></span>

                        <p class="txtlink ta_c"><a href="https://www.pie.co.kr" target="_blank" rel="noopener noreferrer">https://www.pie.co.kr</a></p>

                        <p class="txtinfo ta_c">당사는 2006년 안면 피부분석기 ‘야누스(JANUS)’를 개발한 이후 <br />
                            2021년 5세대 ‘야누스 프로(JANUS Pro)’ 를 개발한 피부분석 전문기업입니다.</p>

                        <p class="mb_50">2021년 런칭한 5세대 안면피부측정기 ‘야누스 프로’는 피부과, 임상평가기관, 연구소 및 화장품 업체에서 널리 사용하고 있으며 가성비 높은 
                            ‘포커스킨(Focuskin)’ 은 에스테틱이나 화장품샵등에서 주로 사용되며 특히 신뢰할 수 있는 결과로 맞춤형 화장품 시장을 견인하고 있습니다.</p>
                        
                        <div class="company_tech">
                            <div class="company_tech_tit">기술현황</div>
                            <ul class="bul_cir_s mb_20">
                                <li>특허 등록 : 7건 , 디자인 등록 : 5건 , 상표등록 : 5건</li>
                                <li>ISO : 9001, 13485</li>
                                <li>CE : 8건 , FCC : 6건 , KC : 8건</li>
                                <li>벤처기업 인증, 이노비즈 인증</li>
                                <li>기업 부설연구소 인증</li>
                            </ul>
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