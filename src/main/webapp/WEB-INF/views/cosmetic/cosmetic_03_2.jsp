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
                                <li><a href="${pageContext.request.contextPath}/cosmetic/cosmetic_03_1">브랜드 소개</a></li>
                                <li class="active"><a class="last" href="${pageContext.request.contextPath}/cosmetic/cosmetic_03_2">인증마크</a></li>
                            </ul>
                        </li>
                    </ul>
                </div>

                <ul class="depth_03">
                    <li><a href="${pageContext.request.contextPath}/cosmetic/cosmetic_03_1">브랜드 소개</a></li>
                    <li class="active"><a href="${pageContext.request.contextPath}/cosmetic/cosmetic_03_2">인증마크</a></li>
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
     <div class="content mark">
        <div class="inner">

            <h2 class="ff_nm bar">인증마크</h2>
            <div class="box1 mb_230">
                <h3>인증마크 타입</h3>
                <div class="bg_square">
                    <ul>
                        <li><img src="${pageContext.request.contextPath}/resources/static/images_old/cosmetic/SkinQurator_09.png" alt="" /><span class="txt">세로타입 (Brown)</span></li>
                        <li><img src="${pageContext.request.contextPath}/resources/static/images_old/cosmetic/SkinQurator_10.png" alt="" /><span class="txt">가로타입 (Brown)</span></li>
                        <li><img src="${pageContext.request.contextPath}/resources/static/images_old/cosmetic/SkinQurator_11.png" alt="" /><span class="txt">세로타입 (Gray)</span></li>
                        <li><img src="${pageContext.request.contextPath}/resources/static/images_old/cosmetic/SkinQurator_12.png" alt="" /><span class="txt">가로타입 (Gray)</span></li>
                    </ul>
                </div>
            </div>

            <div class="box2 mb_190">
                <h3>인증마크 적용가이드</h3>
                <p class="ta_c txt1">인증마크 활용시 적용가이드이며 제품 규격은 맞춤형 화장품마다 상이하므로 제품 상황에 따라 조정하여 적용 할 수 있다. <br />
                    적용시 위의 규정을 우선으로 하며 표기가 어렵다고 판단될 경우는 브랜드 관리자와 상호 협의하여 조정할 수 있다.</p>
                <div class="bg_square">
                    <img src="${pageContext.request.contextPath}/resources/static/images_old/cosmetic/SkinQurator_13.png" alt="" />
                    <span class="txt order1">스킨큐레이터의 인증마크는 항상 전면에 표기하되 <br />좌측상단에 표기하는 것을 우선으로 합니다.</span>
                    <span class="txt order2">해당 브랜드의 상 디자인이 위치합니다.</span>
                    <span class="txt order3">해당 제품의 명칭 또는 표기요소가 위치합니다.</span>
                    <span class="txt order4">해당 제품의 용량 등이 위치합니다.</span>
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