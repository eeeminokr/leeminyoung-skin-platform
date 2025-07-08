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
<body class="page_solution">
    <jsp:include page="../common/header.jsp"/>


    <!-- Container -->
    <section class="container">

        <!-- 컨텐츠 상단 서브 메뉴 -->
        <div class="lnb_wrap">
            <div class="inner">
                <div class="lnb">
                    <button type="button">자가진단</button>
                    <ul>
                        <li class="active"><a href="${pageContext.request.contextPath}/solution/solution_01_1">자가진단</a>
                            <ul>
                                <li><a href="${pageContext.request.contextPath}/solution/solution_01_1">바우만 모델 개요</a></li>
                                <li class="active"><a href="${pageContext.request.contextPath}/solution/solution_01_2">자가진단</a></li>
                            </ul>
                        </li>
                        <li><a href="${pageContext.request.contextPath}/solution/solution_02_1">SkinLink</a></li>
                        <li><a href="${pageContext.request.contextPath}/solution/solution_03_1">AI기반 피부진단</a></li>
                        <li><a class="last" href="${pageContext.request.contextPath}/solution/solution_04_1">진단이력관리</a></li>
                    </ul>
                </div>

                <ul class="depth_03">
                    <li><a href="${pageContext.request.contextPath}/solution/solution_01_1">바우만 모델 개요</a></li>
                    <li class="active"><a href="${pageContext.request.contextPath}/solution/solution_01_2">자가진단</a></li>
                </ul>
            </div>
        </div>
        <!-- //컨텐츠 상단 서브 메뉴 -->

        <!-- 타이틀 -->
        <div class="title title_bg_02">
            <div class="inner">
                <div class="txtbox">
                    <div class="tit_s ff_nm">My Skin Guide Platform</div>
                    <h3 class="ff_nm">자가진단</h3>
                    <p>소중한 내 피부, 타입을 체크해 보세요! <br />
                        피부 타입 MBTI 자가진단 테스트로 <br />
                        아름다운 피부 관리에 도움을 드리겠습니다.</p>
                </div>
            </div>
        </div>
        <!-- //타이틀 -->

        <!-- 컨텐츠 -->
        <div class="content self">

            <div class="inner" id="self_top">
                <h2 class="ff_nm bar">자가진단</h2>
                <h3 class="tit_l ta_c">바우만 피부타입 테스트 결과</h3>
            </div>

            <div class="self_result type_oily">
                <div class="inner">
                    <div class="bg bg_02"></div>

                    <h3>OSPT</h3>
                    <dl>
                        <dt>지성</dt>
                        <dd>민감<span class="up"><em class="blind">Up</em></span></dd>
                        <dd>색소<span class="up"><em class="blind">Up</em></span></dd>
                        <dd>주름<span class="down"><em class="blind">Down</em></span></dd>
                    </dl>
                    <p class="txt">여드름과 색소침착이 있지만 주름은 쉽게 지지 않는 피부</p>
                    <ul>
                        <li>
                            <span class="txt">Strength</span>
                            <p>끝까지 탄력을 잃지 않는 편, 개선의 여지가 존재</p>
                        </li>
                        <li>
                            <span class="txt">Weakness</span>
                            <p>피지 염증, 색소침착의 악순환 반복</p>
                        </li>
                        <li>
                            <span class="txt">solution</span>
                            <p>반드시 민감성 제품만 사용할 것. 필링은 가급적 자제. <br />피부 장벽 강화 성분, 오일 베이스 및 워터프루프 제품 사용 자제</p>
                        </li>
                    </ul>
                    <a class="btn solutionBtn" href="${pageContext.request.contextPath}/solution/solution_01_2"><span class="arrow_r"></span>피부타입 테스트 다시하기</a>
                </div>
            </div>

        </div>
        <!-- //컨텐츠 -->

    </section>
    <!-- //Container -->
    <jsp:include page="../common/footer.jsp"/>
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/static/js_old/solution.js" > </script>
</body>
</html>