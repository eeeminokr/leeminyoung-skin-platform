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
                    <button type="button">SkinQurator</button>
                    <ul>
                        <li><a href="${pageContext.request.contextPath}/cosmetic/cosmetic_01_1">정의 및 History</a></li>
                        <li><a href="${pageContext.request.contextPath}/cosmetic/cosmetic_02_1">맞춤형화장품 판매업</a></li>
                        <li class="active"><a href="${pageContext.request.contextPath}/cosmetic/cosmetic_03_1">SkinQurator</a>
                            <ul>
                                <li class="active"><a href="${pageContext.request.contextPath}/cosmetic/cosmetic_03_1">브랜드 소개</a></li>
                                <li><a class="last" href="${pageContext.request.contextPath}/cosmetic/cosmetic_03_2">인증마크</a></li>
                            </ul>
                        </li>
                    </ul>
                </div>

                <ul class="depth_03">
                    <li class="active"><a href="${pageContext.request.contextPath}/cosmetic/cosmetic_03_1">브랜드 소개</a></li>
                    <li><a href="${pageContext.request.contextPath}/cosmetic/cosmetic_03_2">인증마크</a></li>
                </ul>
            </div>
        </div>
        <!-- //컨텐츠 상단 서브 메뉴 -->

        <!-- 타이틀 -->
        <div class="title title_bg_02">
            <div class="inner">
                <div class="txtbox">
                    <div class="tit_s ff_nm">My Skin Guide Platform</div>
                    <h3 class="ff_nm en">SkinQurator</h3>
                    <p>Skin + Qualified(자격있는) + Curator <br />
                        전문 큐레이터 같은 스킨, 맞춤 화장품 플랫폼</p>
                </div>
            </div>
        </div>
        <!-- //타이틀 -->

        <!-- 컨텐츠 -->
        <div class="content brand">
            <div class="inner">

                <h2 class="ff_nm bar">브랜드 소개</h2>
                <div class="box1">
                    <div class="of_h mb_150">
                        <img class="fr" width="670" height="354" src="${pageContext.request.contextPath}/resources/static/images_old/cosmetic/brand_info_img01.jpg" alt="" />
                        <h3>생산 고민해결</h3>
                        <p>SkinLink는 제주테크노파크, ㈜테라젠바이오, <br />
                            피엔케이피부임상연구센타㈜, ㈜마켓링크가 <br />
                            공동으로 3,000명 유전자 빅데이터를 기반으로 <br />
                            개발한 피부진단 및 제품 추천 알고리즘 플랫폼입니다.</p>
                    </div>

                    <div class="of_h mb_150">
                        <img class="fl" width="670" height="354" src="${pageContext.request.contextPath}/resources/static/images_old/cosmetic/brand_info_img02.jpg" alt="" />
                        <h3>유통 고민 해결</h3>
                        <p>고객 맞춤형화장품 상품 테스트도, 유통도, 홍보도 <br />
                            국내 최초 ICT 기반 맞춤형화장품 플랫폼 <br />
                            스킨큐레이터가 한Q에 해결해 드립니다.</p>
                    </div>

                    <div class="of_h mb_150">
                        <img class="fr" width="670" height="354" src="${pageContext.request.contextPath}/resources/static/images_old/cosmetic/brand_info_img03.jpg" alt="" />
                        <h3>개인별 피부타입 고민 해결</h3>
                        <p>부위별트러블? 유전적타입? 피부타입? <br />
                            한국최초 ICT 기반, 고객 맞춤형 화장품 플랫폼 <br />
                            스킨큐레이터가 한Q에 해결시켜 드립니다.</p>
                    </div>

                    <div class="of_h mb_200">
                        <img class="fl" width="670" height="354" src="/resources/static/images_old/cosmetic/brand_info_img04.jpg" alt="" />
                        <h3>맞춤형 화장품 <br />
                            구매 고민 해결</h3>
                        <p>내 피부에 딱 맞는 화장품 선택? <br />
                            국내 최초 ICT 기반 맞춤형화장품 플랫폼 <br />
                            스킨큐레이터 인증마크로 한Q에 해결하세요!</p>
                    </div>
                </div>

                <h2 class="ff_nm bar">심볼 마크</h2>
                <div class="box2 mb_190">
                    <p class="ta_c txt1">라운드 형태의 사각형에 SKIN 영문을 심플한 라인으로 표현하여 <br />
                        맞춤형 화장품 서비스 플랫폼으로서의 스킨큐레이터를 직관적으로 표현하였다.</p>
                    <div class="bg_square type1">
                        <img src="${pageContext.request.contextPath}/resources/static/images_old/cosmetic/SkinQurator_01.png" alt="" />
                    </div>
                    <p class="ta_c txt2">브랜드 컬러는 자연과 대지의 이미지를 표현할때 사용하는 브라운 색상을 메인으로 사용하였다. <br />
                        브라운 색상은 따뜻하면서 마음을 편안하게 만드는 색으로 클래식한 고급스러움을 보여주며 <br />
                        서브 컬러인 라이트 브라운은 자연스럽고 온화함을 보여준다.</p>
                </div>

                <h2 class="ff_nm bar">로고 타입</h2>
                <div class="box3 mb_200">
                    <div class="bg_square type2">
                        <ul>
                            <li><img src="${pageContext.request.contextPath}/resources/static/images_old/cosmetic/SkinQurator_02.png" alt="" /><span class="txt">영문A</span></li>
                            <li><img src="${pageContext.request.contextPath}/resources/static/images_old/cosmetic/SkinQurator_03.png" alt="" /><span class="txt">영문B</span></li>
                            <li><img src="${pageContext.request.contextPath}/resources/static/images_old/cosmetic/SkinQurator_04.png" alt="" /><span class="txt">한글</span></li>
                        </ul>
                    </div>
                </div>

                <h2 class="ff_nm bar">시그니쳐 타입</h2>
                <div class="box4">
                    <div class="bg_square type3">
                        <ul>
                            <li><img src="${pageContext.request.contextPath}/resources/static/images_old/cosmetic/SkinQurator_05.png" alt="" /></li>
                            <li><img src="${pageContext.request.contextPath}/resources/static/images_old/cosmetic/SkinQurator_06.png" alt="" /></li>
                            <li><img src="${pageContext.request.contextPath}/resources/static/images_old/cosmetic/SkinQurator_07.png" alt="" /></li>
                            <li><img src="${pageContext.request.contextPath}/resources/static/images_old/cosmetic/SkinQurator_08.png" alt="" /></li>
                        </ul>
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