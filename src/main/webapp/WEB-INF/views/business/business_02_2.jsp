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
<body class="page_business">
    <jsp:include page="../common/header.jsp"/>

     <!-- Container -->
     <section class="container">

        <!-- 컨텐츠 상단 서브 메뉴 -->
        <div class="lnb_wrap">
            <div class="inner">
                <div class="lnb">
                    <button type="button">기관소개</button>
                    <ul>
                        <li><a href="${pageContext.request.contextPath}/business/business_01_1">사업소개</a></li>
                        <li class="active"><a href="${pageContext.request.contextPath}/business/business_02_1">기관소개</a>
                            <ul>
                                <li><a href="${pageContext.request.contextPath}/business/business_02_1">제주테크노파크</a></li>
                                <li class="active"><a href="${pageContext.request.contextPath}/business/business_02_2">한국전자통신연구원</a></li>
                                <li><a class="last" href="${pageContext.request.contextPath}/business/business_02_3">제주대학교 산학협력단</a></li>
                            </ul>
                        </li>
                    </ul>
                </div>

                <ul class="depth_03">
                    <li><a href="${pageContext.request.contextPath}/business/business_02_1">제주테크노파크</a></li>
                    <li class="active"><a href="${pageContext.request.contextPath}/business/business_02_2">한국전자통신연구원</a></li>
                    <li><a href="${pageContext.request.contextPath}/business/business_02_3">제주대학교 산학협력단</a></li>
                </ul>
            </div>
        </div>
        <!-- //컨텐츠 상단 서브 메뉴 -->

        <!-- 타이틀 -->
        <div class="title title_bg_01">
            <div class="inner">
                <div class="txtbox">
                    <div class="tit_s ff_nm">My Skin Guide Platform</div>
                    <h3 class="ff_nm">기관소개</h3>
                    <p>데이터 활용 맞춤형화장품 기반 조성으로 <br />
                        K-뷰티산업을 선도 하겠습니다.</p>
                </div>
            </div>
        </div>
        <!-- //타이틀 -->

        <!-- 컨텐츠 -->
        <div class="content etri">
            <div class="inner">
                
                <h2 class="ff_nm bar">한국전자통신연구원</h2>
                <div class="box1 mb_200">
                    <h3 class="ta_c mb_100">한국전자통신연구원(ETRI)</h3>
                    <div class="img_wrap ta_c mb_100">
                        <a href="https://etri.re.kr/kor/main/main.etri" target="_blank" title="새창">
                            <img class="img1" width="584" height="68" src="${pageContext.request.contextPath}/resources/static/images_old/business/logo_etri.png" alt="한국전자통신연구원 로고" />
                        </a>
                    </div>
                    <p class="mb_40">한국전자통신연구원(ETRI)은 국내 최고의 ICT 전문연구기관으로서, 지난 47년간 국가 경제발전과 국민의 삶의 질 향상을 위해 쉼 없이 연구에 매진 해 왔습니다.</p>
                    <p class="mb_40">1가구 1전화 시대를 연 전전자교환기(TDX), 반도체 강국의 신화를 창조한 DRAM 반도체, 이동통신 선진국으로의 발판을 마련한 CDMA, 내 손안의 인터넷 세상을 연 WiBro, 전자정부의 기반을 만든 행정전산망용 주전산기 II (타이컴), 스마트선박기술(SAN), 몰입감을 극대화한 실감미디어, 인간의 언어를 이해하는 SW인 엑소브레인(Exo-브레인), 자율주행용 프로세스 칩 알데바란, 세계 최초의 UHD 모바일 방송기술, 차세대 5G 이동통신, 시각지능 딥뷰(Deep View), 미래 ICT를 선도할 양자컴퓨팅 등 헤아리기 힘들 만큼 많은 최고기술을 개발하였으며, 우리나라를 독보적인 ICT 최강국으로 견인하였습니다. </p>
                    <p>ETRI는 현재 인공지능, 5G·6G통신 등 ICT 핵심·전략기술개발을 통해 대한민국의 디지털 전환을 주도하며, 4차 산업혁명의 중심으로 자리 잡고 있습니다. <br />
                    2021년부터는 제주테크노파크와 제주대학교와 손을 잡고, 빅데이터 기반 맞춤형 화장품 플랫폼 사업을 수행하고 있으며, 이를 통해 ETRI는 포스트 코로나 시대, 대한민국 뷰티산업 경쟁력을 높이고, 새로운 미래 핵심성장동력을 만들어 나가는데 연구역량을 집중할 계획입니다.</p>
                </div>
                
            </div>
        </div>
        <!-- //컨텐츠 -->

    </section>
    <!-- //Container -->

    <jsp:include page="../common/footer.jsp"/>
</body>
</html>