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
                    <button type="button">헬리오스</button>
                    <ul>
                        <li><a href="${pageContext.request.contextPath}/beautytech/tech_01_1">아람휴비스</a></li>
                        <li><a href="${pageContext.request.contextPath}/beautytech/tech_02_1">초위스컴퍼니</a></li>
                        <li><a href="${pageContext.request.contextPath}/beautytech/tech_03_1">룰루랩</a></li>
                        <li><a href="${pageContext.request.contextPath}/beautytech/tech_04_1">릴리커버</a></li>
                        <li><a href="${pageContext.request.contextPath}/beautytech/tech_05_1">링커버스</a></li>
                        <li><a href="${pageContext.request.contextPath}/beautytech/tech_06_1">에프앤디파트너스</a></li>
                        <li><a href="${pageContext.request.contextPath}/beautytech/tech_07_1">케이씨테크놀러지</a></li>
                        <li><a href="${pageContext.request.contextPath}/beautytech/tech_08_1">파이</a>
                        <li class="active"><a href="${pageContext.request.contextPath}/beautytech/tech_09_1">헬리오스</a>
                            <ul>
                                <li class="active"><a href="${pageContext.request.contextPath}/beautytech/tech_09_1">회사소개</a></li>
                                <li><a href="${pageContext.request.contextPath}/beautytech/tech_09_2">피부진단기 모델</a></li>
                            </ul>
                        </li>
                        <li><a class="last" href="${pageContext.request.contextPath}/beautytech/tech_10_1">인바디</a></li>
                    </ul>
                </div>

                <ul class="depth_03">
                    <li class="active"><a href="${pageContext.request.contextPath}/beautytech/tech_09_1">회사소개</a></li>
                    <li><a href="${pageContext.request.contextPath}/beautytech/tech_09_2">피부진단기 모델</a></li>
                </ul>
            </div>
        </div>
        <!-- //컨텐츠 상단 서브 메뉴 -->

        <!-- 타이틀 -->
        <div class="title title_bg_04">
            <div class="inner">
                <div class="txtbox">
                    <div class="tit_s ff_nm">My Skin Guide Platform</div>
                    <h3 class="ff_nm">헬리오스</h3>
                    <p>최첨단 피부진단기 기술력을 보유한 <br />
                        피부연구를 선도하는 회사들을 소개 해 드립니다. </p>
                </div>
            </div>
        </div>
        <!-- //타이틀 -->

        <!-- 컨텐츠 -->
        <div class="content helios">
            <div class="inner">
                <h2 class="ff_nm bar">회사소개</h2>

                <div class="box1 mb_150">
                    <h3><span class="company_name">회사명</span>주식회사 헬리오스</h3>

                    <div class="company_info">
                        <span class="imgbox ta_c"><img width="252" height="84" src="${pageContext.request.contextPath}/resources/static/images_old/tech/helios_logo.png" alt="HELIOS 로고" /></span>

                        <p class="txtlink ta_c"><a href="https://naturalkeep.co.kr" target="_blank" rel="noopener noreferrer">https://naturalkeep.co.kr</a></p>

                        <p class="txtinfo ta_c">주식회사 헬리오스는 2004년 개설한 전문 스파센터를 <br />
                            시작으로 재탄생한 독립 법인 사업체 입니다.</p>

                        <p class="mb_50">웰니스산업에 널리 쓰이는 스파 & 코스메티컬 화장품 및 홈스킨케어 제품 등을 개발 ∙ 판매 수출에 이르기까지 ONE – STOP 서비스 시스템을 갖추고 있으며 특히, 기존의 화장품과는 차별화하고자 전문 스파센터 및 뷰티 & 클리닉과도 연계 ∙ 협력하여 특화된 제품만을 개발하고 있습니다. 또한 제품에 쓰이는 소재 역시 청정제주의 산과 들, 바다 등 천연소재를 사용하여 제품의 정직한 효능 ∙ 효과를 피부로 느낄 수 있도록하고 피부 본연의 아름다움을 지켜드리기 위해 끊임없이 노력하는 제주도 화장품 기업입니다.</p>
                        
                        <div class="company_tech">
                            <div class="company_tech_tit">기술현황</div>
                            <ul class="bul_cir_s mb_50">
                                <li>제주 전통 발효기술이 적용된 화장품 원료와 이 원료를 활용하여 스킨 케어 제품 개발</li>
                                <li>PEG 프리 제주화장품 인증을 받은 클렌징 티슈 제품 개발.</li>
                                <li>제주산 소재를 이용한 미백 및 항노화 기능성 소재 개발 및 이를 함유하는 용해성 마이크로니들 패치와 병용화장품 제품 개발 <br />
                                   (제주 체리블라썸 래피드 솔루션 앰플&패치, 제주 체리블라썸 래피드 솔루션 딥케어 아이크림&패치)</li>
                                <li>장내 유익균 및 제주 천연추출물을 활용한 여성청결 패키지 제품 개발(락토큐어 인텐시브 케어 클렌저&티슈)</li>
                                <li>제주산 소재인 청귤을 이용한 진정 효과가 있는 마스크팩의 개발 및 생산(킵 그린 시트러스 릴리프 텐셀 마스크팩)</li>
                                <li>제주산 소재인 동백을 이용한 보습력 강화 마스크팩 개발 및 생산(킵 카멜리아 글로스 모이스쳐라이징 텐셀 마스크팩)</li>
                                <li>감귤 추출물에 함유되어 있는 헤스피리딘(항산화물질)을 유효성분으로 안정화 시키기 어려운 순수 비타민C 안정화 기술 개발 <br />
                                    (아웃핏 리얼 비타민C 앰플)</li>
                                <li>제주 옥수수수염으로부터 추출한 식물성 콜라겐이 함유되어 피부미용에 도움을 주는 콜라겐 젤리 개발 및 생산(이너핏 V 콜라겐 젤리)</li>
                                <li>바우만 박사의 16가지 피부 타입으로 분류된 자신의 피부 타입을 알려주면 피부 타입 맞춤 제춤 추천까지 가능한 피부 진단기기 개발</li>
                            </ul>
                            <span class="ct_tit">특허</span>
                            <ul class="bul_cir_s mb_50">
                                <li>2019.11 쉰다리 및 참꽃나무 꽃잎 혼합추출물을 이용한 피부 미백용 조성물 특허 등록(제 10-2045293호)</li>
                                <li>2020.05 왕벚나무 잎 생물전환추출물의 제조방법 및 이를 함유하는 피부미백용 화장품 조성물 특허 등록(제 2111648호)</li>
                                <li>2020.06 왕벚나무 생물전환 추출물을 포함하는 항염용 조성물 특허 등록(제 10-2127282호)</li>
                                <li>2022.03 헤스피리딘을 유효성분으로 하는 비타민 C 안정화 화장료 조성물 특허 출원(제 10-2022-0039229)</li>
                            </ul>
                            <span class="ct_tit">지식재산권</span>
                            <ul class="bul_cir_s">
                                <li>국내 - 상표 10건, 디자인 3건</li>
                                <li>해외 - 상표 15건, 디자인 1건</li>
                            </ul>
                        </div>

                    </div>
                </div>

            </div>
        </div>
        <!-- //컨텐츠 -->

    </section>
    <!-- //Container -->

     <!-- Footer -->
    <jsp:include page="../common/footer.jsp"/>
</body>
</html>