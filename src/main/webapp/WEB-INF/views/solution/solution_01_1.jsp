<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>SKIN QURATOR</title>
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>

    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/static/js_old/solution.js" > </script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/static/js_old/lib/jquery-3.6.1.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/static/js_old/lib/jquery-1.6.4.min.js"></script>
    <!-- jquery -->
	<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
	<!-- jquery-ui -->
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<!-- jquery-ui css -->
	<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css"> 
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
                                <li class="active"><a href="${pageContext.request.contextPath}/solution/solution_01_1">바우만 모델 개요</a></li>
                                <li><a href="${pageContext.request.contextPath}/solution/solution_01_2">자가진단</a></li>
                            </ul>
                        </li>
                        <li><a href="${pageContext.request.contextPath}/solution/solution_02_1">SkinLink</a></li>
                        <li><a href="${pageContext.request.contextPath}/solution/solution_03_1">AI기반 피부진단</a></li>
                        <li><a class="last" href="${pageContext.request.contextPath}/solution/solution_04_1">진단이력관리</a></li>
                    </ul>
                </div>

                <ul class="depth_03">
                    <li class="active"><a href="s${pageContext.request.contextPath}/solution/solution_01_1">바우만 모델 개요</a></li>
                    <li><a href="${pageContext.request.contextPath}/solution/solution_01_2">자가진단</a></li>
                </ul>
            </div>
        </div>
        <!-- //컨텐츠 상단 서브 메뉴 -->

        <!-- 타이틀 -->
        <div class="title title_bg_03">
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
        <div class="content baumann">

            <div class="inner">
                <h2 class="ff_nm bar">바우만 모델 개요</h2>

                <h3 class="ta_c">바우만 피부 타입 테스트</h3>
                <p class="txt1 ta_c mb_60">바우만 피부 타입 테스트는 미국 피부과 의사 레슬리 바우만의 ‘The skin Type Solution’이라는 <br />
                    저서에서 제시한 16가지의 부타입 분류와 각각의 특성에 따른 화장품 선택 및 피부 관리법입니다.</p>
                <p class="txt2 ta_c mb_150">오일지수 진단, 민감성 진단, 색소 진단, 주름 및 탄력 진단을 통해 새로운 16가지의 피부 유형을 제시하였습니다.<br />
                    이는 피부 교과서에도 실린 분류법으로 가장 과학적인 피부 타입 분류법으로 인정받고 있고, <br />
                    먼저 자신의 피부를 4단계에 걸쳐 파악하고 분석한 뒤, 각 이니셜을 조합하면 16가지 피부 타입 중 한 가지 유형으로 결정됩니다.</p>
                
                <ul class="bm_type mb_240">
                    <li class="order1">
                        <div class="inbox">
                            <span class="type">DRPT</span>
                            <span class="number">13</span>
                            <span class="txt">DRY I RESISTANT<br />
                                PIGMENTED I TIGHT</span>
                        </div>
                    </li>
                    <li class="order2">
                        <div class="inbox">
                            <span class="type">DRNT</span>
                            <span class="number">14</span>
                            <span class="txt">DRY I RESISTANT<br />
                                NON-PIGMENTED I TIGHT</span>
                        </div>
                    </li>
                    <li class="order3">
                        <div class="inbox">
                            <span class="type">DSPT</span>
                            <span class="number">1</span>
                            <span class="txt">DRY I SENSITIVE<br />
                                PIGMENTED I TIGHT</span>
                        </div>
                    </li>
                    <li class="order4">
                        <div class="inbox">
                            <span class="type">DSNT</span>
                            <span class="number">2</span>
                            <span class="txt">DRY I RESISTANT<br />
                                NON-PIGMENTED I TIGHT</span>
                        </div>
                    </li>
                    <li class="order5">
                        <div class="inbox">
                            <span class="type">DRPW</span>
                            <span class="number">15</span>
                            <span class="txt">DRY I RESISTANT<br />
                                PIGMENTED<br />
                                WRINKLE PRONE</span>
                        </div>
                    </li>
                    <li class="order6">
                        <div class="inbox">
                            <span class="type">DRNW</span>
                            <span class="number">16</span>
                            <span class="txt">DRY I RESISTANT<br />
                                NON-PIGMENTED<br />
                                WRINKLE PRONE</span>
                        </div>
                    </li>
                    <li class="order7">
                        <div class="inbox">
                            <span class="type">DSPW</span>
                            <span class="number">3</span>
                            <span class="txt">DRY I SENSITIVE<br />
                                PIGMENTED<br />
                                WRINKLE PRONE</span>
                        </div>
                    </li>
                    <li class="order8">
                        <div class="inbox">
                            <span class="type">DSNW</span>
                            <span class="number">4</span>
                            <span class="txt">DRY I SENSITIVE<br />
                                NON-PIGMENTED<br />
                                WRINKLE PRONE</span>
                        </div>
                    </li>
                    <li class="order9">
                        <div class="inbox">
                            <span class="type">ORPT</span>
                            <span class="number">9</span>
                            <span class="txt">OILY I RESISTANT<br />
                                PIGMENTED<br />
                                TIGHT</span>
                        </div>
                    </li>
                    <li class="order10">
                        <div class="inbox">
                            <span class="type">ORNT</span>
                            <span class="number">10</span>
                            <span class="txt">OILY I RESISTANT<br />
                                NON-PIGMENTED<br />
                                TIGHT</span>
                        </div>
                    </li>
                    <li class="order11">
                        <div class="inbox">
                            <span class="type">OSPT</span>
                            <span class="number">5</span>
                            <span class="txt">OILY I SENSITIVE<br />
                                PIGMENTED<br />
                                TIGHT</span>
                        </div>
                    </li>
                    <li class="order12">
                        <div class="inbox">
                            <span class="type">OSNT</span>
                            <span class="number">6</span>
                            <span class="txt">OILY I SENSITIVE<br />
                                NON-PIGMENTED<br />
                                TIGHT</span>
                        </div>
                    </li>
                    <li class="order13">
                        <div class="inbox">
                            <span class="type">ORPW</span>
                            <span class="number">11</span>
                            <span class="txt">OILY I RESISTANT<br />
                                PIGMENTED<br />
                                WRINKLE PRONE</span>
                        </div>
                    </li>
                    <li class="order14">
                        <div class="inbox">
                            <span class="type">ORNW</span>
                            <span class="number">12</span>
                            <span class="txt">OILY I RESISTANT<br />
                                NON-PIGMENTED<br />
                                WRINKLE PRONE</span>
                        </div>
                    </li>
                    <li class="order15">
                        <div class="inbox">
                            <span class="type">OSPW</span>
                            <span class="number">7</span>
                            <span class="txt">OILY I SENSITIVE<br />
                                PIGMENTED<br />
                                WRINKLE PRONE</span>
                        </div>
                    </li>
                    <li class="order16">
                        <div class="inbox">
                            <span class="type">OSNW</span>
                            <span class="number">8</span>
                            <span class="txt">OILY I SENSITIVE<br />
                                NON-PIGMENTED<br />
                                WRINKLE PRONE</span>
                        </div>
                    </li>
                </ul>

                <dl class="bm_step mb_240">
                    <dt>Bauman 스킨 타이핑 시스템의 4글자의 의미는</dt>
                    <dd>
                        <span class="step">Step1</span>
                        <span class="eng">D</span>
                        <span class="txt">탈수 또는 건성 피부 또는 O= 지성 피부 또는 정상 피부</span>
                    </dd>
                    <dd>
                        <span class="step">Step2</span>
                        <span class="eng">S</span>
                        <span class="txt">민감한 피부 또는 R= 저항성 피부</span>
                    </dd>
                    <dd>
                        <span class="step">Step3</span>
                        <span class="eng">P</span>
                        <span class="txt">불균일한 피부 색소 (얼굴에 검은 반점) 또는 N= 검은 반점 없음</span>
                    </dd>
                    <dd>
                        <span class="step">Step4</span>
                        <span class="eng">W</span>
                        <span class="txt">주름이 생기기 쉬운 피부 또는 T= 탱탱한 주름 없는 피부 & 건강한 습관</span>
                    </dd>
                </dl>

                <dl class="bm_skin mb_240">
                    <dt>바우만 피부타입</dt>
                    <dd class="order1">오일지수 진단</dd>
                    <dd class="order2">민감성 진단</dd>
                    <dd class="order3">색소 진단</dd>
                    <dd class="order4">주름 및 탄력 진단</dd>
                </dl>

                <ul class="bm_skin2 mb_150">
                    <li>
                        <div class="inbox">
                            <div class="top">
                                <span class="txt_ko">건성</span>
                                <span class="txt_en">Dry</span>
                                <span class="bg">D</span>
                            </div>
                            <span class="step_round">Step1</span>
                            <span class="step_txt">오일지수진단</span>
                            <div class="btm">
                                <span class="bg">O</span>
                                <span class="txt_ko">지성</span>
                                <span class="txt_en">Oily</span>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="inbox">
                            <div class="top">
                                <span class="txt_ko">민감성</span>
                                <span class="txt_en">Sensitive</span>
                                <span class="bg">S</span>
                            </div>
                            <span class="step_round">Step2</span>
                            <span class="step_txt">민감성진단</span>
                            <div class="btm">
                                <span class="bg">R</span>
                                <span class="txt_ko">저항성</span>
                                <span class="txt_en">Resistant</span>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="inbox">
                            <div class="top">
                                <span class="txt_ko">색소성</span>
                                <span class="txt_en">Pigment</span>
                                <span class="bg">P</span>
                            </div>
                            <span class="step_round">Step3</span>
                            <span class="step_txt">색소진단</span>
                            <div class="btm">
                                <span class="bg">N</span>
                                <span class="txt_ko">비색소성</span>
                                <span class="txt_en">Non-pigment</span>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="inbox">
                            <div class="top">
                                <span class="txt_ko">주름</span>
                                <span class="txt_en">Wrinkle</span>
                                <span class="bg">W</span>
                            </div>
                            <span class="step_round">Step4</span>
                            <span class="step_txt">주름진단</span>
                            <div class="btm">
                                <span class="bg">T</span>
                                <span class="txt_ko">탱탱함</span>
                                <span class="txt_en">Tight</span>
                            </div>
                        </div>
                    </li>
                </ul>
            </div>

        </div>
        <!-- //컨텐츠 -->

    </section>
    <!-- //Container -->

   
    <jsp:include page="../common/footer.jsp"/>
</body>
</html>