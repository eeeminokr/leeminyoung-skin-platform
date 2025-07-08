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

         <ul class="list_step">
                    <li class="on">
                        <a href="#self_top;" class="steps1" id="step1_1" >
                            <span class="step">STEP 1</span>
                            <span class="txt">유수분 밸런스</span>
                            <img src="${pageContext.request.contextPath}/resources/static/images_old/solution/step01.png" alt="" />
                        </a>
                    </li>
                    <li>
                        <a href="#self_top;" class="steps2" id="step1_2">
                            <span class="step">STEP 2</span>
                            <span class="txt">피부 민감도</span>
                            <img src="${pageContext.request.contextPath}/resources/static/images_old/solution/step02.png" alt="" />
                        </a>
                    </li>
                    <li>
                        <a href="#self_top;" class="steps3" id="step1_3">
                            <span class="step">STEP 3</span>
                            <span class="txt">멜라닌 색소 활성도</span>
                            <img src="${pageContext.request.contextPath}/resources/static/images_old/solution/step03.png" alt="" />
                        </a>
                    </li>
                    <li>
                        <a href="#self_top;" class="steps4" id="step1_4">
                            <span class="step">STEP 4</span>
                            <span class="txt">피부 탄력도 및 주름</span>
                            <img src="${pageContext.request.contextPath}/resources/static/images_old/solution/step04.png" alt="" />
                        </a>
                    </li>
               </ul>

                <p class="txt_step ta_c"><span>하단 STEP 1 자가진단 항목에 체크하세요!</span></p>
            </div>
           
            <div class="self_vs">
                <div class="bg bg_01"></div>
                <div class="inner">
                    <h3>유수분 밸런스</h3>
                    <ul>
                        <li>
                            <span class="txt">Dry<em>건성</em></span>
                            <p>피지 분비량과 수분 보유량 모두 적어 <br />거칠고 각질과 주름이 잘 생기는 타입</p>
                        </li>
                        <li>VS</li>
                        <li>
                            <span class="txt">Oily<em>지성</em></span>
                            <p>피지 분비량이 많아 번들거리고 <br />여드름이 자주 생기는 타입</p>
                        </li>
                    </ul>
                </div>
            </div>


            <div class="inner">
                <ul class="list_q">
                    <li>
                        <p><span class="num">1</span>클렌징 후에 아무것도 바르지 않고 2~3시간 후에 밝은 빛 아래서 거울을 보세요. 이마와 볼이 어떻게 보이고 느껴집니까?</p>
                        <div class="check_wrap">
                            <div class="fl">
                                <label><input type="radio" value="1" class ="check_radio1" name="check_step_1" /><span>매우 거칠고, 버석거리고 각질이 들떠 보입니다.</span></label>
                                <label><input type="radio" value="2" class ="check_radio1" name="check_step_1" /><span>당깁니다.</span></label>
                            </div>
                            <div class="fr">
                                <label><input type="radio" value="3" class ="check_radio1" name="check_step_1" /><span>당기지 않고 건조해 보이지 않고 번들거리지 않습니다.</span></label>
                                <label><input type="radio" value="4" class ="check_radio1" name="check_step_1" /><span>밝은 빛에 반사되는 듯이 번들거립니다.</span></label>
                            </div>
                        </div>
                    </li>
                    <li>
                        <p><span class="num">2</span>사진을 찍었을 때, 피부가 번들거립니까?</p>
                        <div class="check_wrap">
                            <div class="fl">
                                <label><input type="radio" value="1" class ="check_radio1" name="check_step_2" /><span>결코 그렇지 않습니다.</span></label>
                                <label><input type="radio" value="2" class ="check_radio1" name="check_step_2" /><span>때때로 그렇습니다.</span></label>
                            </div>
                            <div class="fr">
                                <label><input type="radio" value="3" class ="check_radio1" name="check_step_2" /><span>자주 그렇습니다.</span></label>
                                <label><input type="radio" value="4" class ="check_radio1" name="check_step_2" /><span>항상 그렇습니다.</span></label>
                            </div>
                        </div>
                    </li>
                    <li>
                        <p><span class="num">3</span>메이크업 파운데이션(파우더는 안 바른 상태)을 바른 지 2~3 시간 후에 메이크업 상태가 어떻습니까?</p>
                        <div class="check_wrap">
                            <div class="fl">
                                <label><input type="radio"  value="1" class ="check_radio1" name="check_step_3" /><span>약간 들떠 보이고 주름진 부분이 나타납니다.</span></label>
                                <label><input type="radio"  value="2" class ="check_radio1" name="check_step_3" /><span>부드러워 보입니다.</span></label>
                            </div>
                            <div class="fr">
                                <label><input type="radio"  value="3" class ="check_radio1" name="check_step_3" /><span>번들거립니다.</span></label>
                                <label><input type="radio"  value="4" class ="check_radio1" name="check_step_3" /><span>고정이 안 되고 번들거립니다.</span></label>
                                <label><input type="radio"  value="2.5" class ="check_radio1" name="check_step_3" /><span>페이셜 파운데이션을 바르지 않습니다.</span></label>
                            </div>
                        </div>
                    </li>
                    <li>
                        <p><span class="num">4</span>건조할 때 모이스처라이저를 바르지 않으면 피부가 어떠합니까?</p>
                        <div class="check_wrap">
                            <div class="fl">
                                <label><input type="radio"  value="1" class ="check_radio1" name="check_step_4" /><span>건조하고 갈라질 것 같습니다.</span></label>
                                <label><input type="radio"  value="2" class ="check_radio1" name="check_step_4" /><span>당김을 느낍니다.</span></label>
                            </div>
                            <div class="fr">
                                <label><input type="radio"  value="3" class ="check_radio1" name="check_step_4" /><span>정상적입니다.</span></label>
                                <label><input type="radio"  value="4" class ="check_radio1" name="check_step_4" /><span>번들거리고 모이스처라이저가 필요 없습니다.</span></label>
                                <label><input type="radio"  value="2.5" class ="check_radio1" name="check_step_4" /><span>잘 모르겠습니다.</span></label>
                            </div>
                        </div>
                    </li>
                    <li>
                        <p><span class="num">5</span>확대경으로 보았을 때, 모공이 많고 사이즈가 커 보입니까?</p>
                        <div class="check_wrap">
                            <div class="fl">
                                <label><input type="radio"  value="1" class ="check_radio1" name="check_step_5" /><span>아니오.</span></label>
                                <label><input type="radio"  value="2" class ="check_radio1" name="check_step_5" /><span>이마와 코가 두드러져 보입니다.</span></label>
                            </div>
                            <div class="fr">
                                <label><input type="radio"  value="3" class ="check_radio1" name="check_step_5" /><span>많이 보입니다.</span></label>
                                <label><input type="radio"  value="4" class ="check_radio1" name="check_step_5" /><span>엄청 많이 보입니다.</span></label>
                                <label><input type="radio"  value="2.5" class ="check_radio1" name="check_step_5" /><span>잘 모르겠습니다.</span></label>
                            </div>
                        </div>
                    </li>
                    <li>
                        <p><span class="num">6</span>평소 당신의 피부 타입을 어떻게 생각하고 계십니까?</p>
                        <div class="check_wrap">
                            <div class="fl">
                                <label><input type="radio"  value="1" class ="check_radio1" name="check_step_6" /><span>건성</span></label>
                                <label><input type="radio"  value="2" class ="check_radio1" name="check_step_6" /><span>중성</span></label>
                            </div>
                            <div class="fr">
                                <label><input type="radio"  value="3" class ="check_radio1" name="check_step_6" /><span>복합</span></label>
                                <label><input type="radio"  value="4" class ="check_radio1" name="check_step_6" /><span>지성</span></label>
                            </div>
                        </div>
                    </li>
                    <li>
                        <p><span class="num">7</span>거품이 많이 나는 비누를 사용할 때 피부의 상태는 어떠합니까?</p>
                        <div class="check_wrap">
                            <div class="fl">
                                <label><input type="radio"  value="1" class ="check_radio1" name="check_step_7" /><span>건조하고 갈라집니다.</span></label>
                                <label><input type="radio"  value="2" class ="check_radio1" name="check_step_7" /><span>약간 건조하고 갈라지지는 않습니다.</span></label>
                            </div>
                            <div class="fr">
                                <label><input type="radio"  value="3" class ="check_radio1" name="check_step_7" /><span>정상입니다.</span></label>
                                <label><input type="radio"  value="4" class ="check_radio1" name="check_step_7" /><span>금방 유분기가 올라옵니다.</span></label>
                                <label><input type="radio"  value="2.5" class ="check_radio1" name="check_step_7" /><span>비누나 거품이 나는 클렌저를 사용하지 않습니다.<br />
                                    (그 이유가 피부가 건조해져서 그렇다면 1번을 선택하십시오)</span></label>
                            </div>
                        </div>
                    </li>
                    <li>
                        <p><span class="num">8</span>모이스처라이저를 안 발랐을 때 피부가 당기는 느낌이 있습니까?</p>
                        <div class="check_wrap">
                            <div class="fl">
                                <label><input type="radio"  value="1" class ="check_radio1" name="check_step_8" /><span>항상 그렇습니다.</span></label>
                                <label><input type="radio"  value="2" class ="check_radio1" name="check_step_8" /><span>때때로 그렇습니다.</span></label>
                            </div>
                            <div class="fr">
                                <label><input type="radio"  value="3" class ="check_radio1" name="check_step_8" /><span>거의 그렇지 않습니다.</span></label>
                                <label><input type="radio"  value="4" class ="check_radio1" name="check_step_8" /><span>결코 그렇지 않습니다.</span></label>
                            </div>
                        </div>
                    </li>
                    <li>
                        <p><span class="num">9</span>화이트헤드나 블랙헤드가 있습니까?</p>
                        <div class="check_wrap">
                            <div class="fl">
                                <label><input type="radio"  value="1" class ="check_radio1" name="check_step_9" /><span>결코 없습니다.</span></label>
                                <label><input type="radio"  value="2" class ="check_radio1" name="check_step_9" /><span>거의 그렇지 않습니다.</span></label>
                            </div>
                            <div class="fr">
                                <label><input type="radio"  value="3" class ="check_radio1" name="check_step_9" /><span>때때로 그렇습니다.</span></label>
                                <label><input type="radio"  value="4" class ="check_radio1" name="check_step_9" /><span>항상 그렇습니다.</span></label>
                            </div>
                        </div>
                    </li>
                    <li>
                        <p><span class="num">10</span>이마와 코 부위가 번들거리는 느낌이 있습니까?</p>
                        <div class="check_wrap">
                            <div class="fl">
                                <label><input type="radio"  value="1" class ="check_radio1" name="check_step_10" /><span>결코 그렇지 않습니다.</span></label>
                                <label><input type="radio"  value="2" class ="check_radio1" name="check_step_10" /><span>때때로 그렇습니다.</span></label>
                            </div>
                            <div class="fr">
                                <label><input type="radio"  value="3" class ="check_radio1" name="check_step_10" /><span>자주 그렇습니다.</span></label>
                                <label><input type="radio"  value="4" class ="check_radio1" name="check_step_10" /><span>항상 그렇습니다.</span></label>
                            </div>
                        </div>
                    </li>
                    <li>
                        <p><span class="num">11</span>모이스처라이저를 바르고 2~3시간 후 볼 부위의 피부 상태는 어떻습니까?</p>
                        <div class="check_wrap">
                            <div class="fl">
                                <label><input type="radio"  value="1" class ="check_radio1" name="check_step_11" /><span>매우 거칠고, 각질이 일어나거나 또는 각질이 떨어집니다.</span></label>
                                <label><input type="radio"  value="2" class ="check_radio1" name="check_step_11" /><span>부드럽습니다.</span></label>
                            </div>
                            <div class="fr">
                                <label><input type="radio"  value="3" class ="check_radio1" name="check_step_11" /><span>조금 번들거림이 있습니다.</span></label>
                                <label><input type="radio"  value="4" class ="check_radio1" name="check_step_11" /><span>번들거리고 기름집니다.</span></label>
                            </div>
                        </div>
                    </li>
                </ul>
                   <div class="step_btns">
                    <a class="btn_next" type="button" id="afterBtn1">다음</a>
                </div>
            </div>

        </div>
        <!-- //컨텐츠 -->
       <!-- 구 버튼   
        <div class="btn_wrap">
		<button class="NextBtns" id="afterBtn1" >다음</button>
    	</div>
    	-->
    </section>
    <!-- //Container -->


    <jsp:include page="../common/footer.jsp"/>
</body>
</html>