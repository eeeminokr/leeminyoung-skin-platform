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
                    <li >
                        <a href="#self_top;" class="steps1" id="step3_1" >
                            <span class="step">STEP 1</span>
                            <span class="txt">유수분 밸런스</span>
                            <img src="${pageContext.request.contextPath}/resources/static/images_old/solution/step01.png" alt="" />
                        </a>
                    </li>
                    <li>
                        <a href="#self_top;" class="steps2" id="step3_2">
                            <span class="step">STEP 2</span>
                            <span class="txt">피부 민감도</span>
                            <img src="${pageContext.request.contextPath}/resources/static/images_old/solution/step02.png" alt="" />
                        </a>
                    </li>
                    <li class="on">
                        <a href="#self_top;" class="steps3" id="step3_3">
                            <span class="step">STEP 3</span>
                            <span class="txt">멜라닌 색소 활성도</span>
                            <img src="${pageContext.request.contextPath}/resources/static/images_old/solution/step03.png" alt="" />
                        </a>
                    </li>
                    <li>
                        <a href="#self_top;" class="steps4" id="step3_4">
                            <span class="step">STEP 4</span>
                            <span class="txt">피부 탄력도 및 주름</span>
                            <img src="${pageContext.request.contextPath}/resources/static/images_old/solution/step04.png" alt="" />
                        </a>
                    </li>
               </ul>

                <p class="txt_step ta_c"><span>하단 STEP 3 자가진단 항목에 체크하세요!</span></p>
            </div>
            
            <div class="self_vs">
                <div class="bg bg_03"></div>
                <div class="inner">
                    <h3>멜라닌 색소 활성도</h3>
                    <ul>
                        <li>
                            <span class="txt">Pigment<em>색소침착</em></span>
                            <p>멜라닌 활성도가 높아 기미, 주근깨 혹은 <br />잡티 등 눈에 보이는 색소가 많은 타입</p>
                        </li>
                        <li>VS</li>
                        <li>
                            <span class="txt fs_s">Non Pigment<em>비색소성</em></span>
                            <p>멜라닌 활성도가 낮아 눈에 보이는 <br />색소가 적은 타입</p>
                        </li>
                    </ul>
                </div>
            </div>


            <div class="inner">
                <ul class="list_q">
                    <li>
                        <p><span class="num">1</span>여드름이나 피부 속으로 파고드는 인그로운 헤어가 발생한 후에 다크스팟이 생깁니까?</p>
                        <div class="check_wrap">
                            <div class="fl">
                                <label><input type="radio" value="1" class ="check_radio3"  name="check_step_31" /><span>없거나 본 적 없습니다.</span></label>
                                <label><input type="radio" value="2" class ="check_radio3"  name="check_step_31" /><span>때때로 그렇습니다.</span></label>
                            </div>
                            <div class="fr">
                                <label><input type="radio" value="3" class ="check_radio3"  name="check_step_31" /><span>자주 그렇습니다.</span></label>
                                <label><input type="radio" value="4" class ="check_radio3"  name="check_step_31" /><span>항상 그렇습니다.</span></label>
                                <label><input type="radio" value="2.5" class ="check_radio3"  name="check_step_31" /><span>여드름이나 인그로운 헤어가 없습니다.</span></label>
                            </div>
                        </div>
                    </li>
                    <li>
                        <p><span class="num">2</span>무언가에 베이거나 상처가 생기고 난 후, 어둡거나 붉은 기가 얼마나 오래도록 남아있습니까?</p>
                        <div class="check_wrap">
                            <div class="fl">
                                <label><input type="radio" value="1" class ="check_radio3"  name="check_step_32" /><span>없거나 본 적 없습니다.</span></label>
                                <label><input type="radio" value="2" class ="check_radio3"  name="check_step_32" /><span>1주 정도 남아있습니다.</span></label>
                            </div>
                            <div class="fr">
                                <label><input type="radio" value="3" class ="check_radio3"  name="check_step_32" /><span>몇 주 정도 남아있습니다.</span></label>
                                <label><input type="radio" value="4" class ="check_radio3"  name="check_step_32" /><span>여러 달 남아있습니다.</span></label>
                            </div>
                        </div>
                    </li>
                    <li>
                        <p><span class="num">3</span>임신이나 피임약 복용, 호르몬 대체요법 시 과하게 색소침착된 부분이 얼마나 많이 있었습니까?</p>
                        <div class="check_wrap">
                            <div class="fl">
                                <label><input type="radio"  value="1" class ="check_radio3"  name="check_step_33" /><span>없습니다.</span></label>
                                <label><input type="radio"  value="2" class ="check_radio3"  name="check_step_33" /><span>한 구역 있습니다.</span></label>
                            </div>
                            <div class="fr">
                                <label><input type="radio"  value="3" class ="check_radio3"  name="check_step_33" /><span>여러 구역 있습니다.</span></label>
                                <label><input type="radio"  value="4" class ="check_radio3"  name="check_step_33" /><span>엄청 많습니다.</span></label>
                                <label><input type="radio"  value="2.5" class ="check_radio3"  name="check_step_33" /><span>본인에게 해당이 되지 않습니다. <br />
                                    (남성이거나 임신 및 피임약 호르몬 대체요법을 경험한 적이 없다)</span></label>
                            </div>
                        </div>
                    </li>
                    <li>
                        <p><span class="num">4</span>윗입술이나 양 볼에 어두운 부분이 있습니까? 또는 과거 있었던 적이 있어 시술 등으로 제거했습니까?</p>
                        <div class="check_wrap">
                            <div class="fl">
                                <label><input type="radio"  value="1" class ="check_radio3"  name="check_step_34" /><span>없습니다.</span></label>
                                <label><input type="radio"  value="2" class ="check_radio3"  name="check_step_34" /><span>잘 모르겠습니다.</span></label>
                            </div>
                            <div class="fr">
                                <label><input type="radio"  value="3" class ="check_radio3"  name="check_step_34" /><span>약간 보입니다.</span></label>
                                <label><input type="radio"  value="4" class ="check_radio3"  name="check_step_34" /><span>여러 부분 보입니다.</span></label>
                            </div>
                        </div>
                    </li>
                    <li>
                        <p><span class="num">5</span>햇빛을 오래 쬐면 피부 위에 있는 어두운 부분들이 더 심해집니까?</p>
                        <div class="check_wrap">
                            <div class="fl">
                                <label><input type="radio"  value="1" class ="check_radio3"  name="check_step_35" /><span>어두운 패치 부위가 없습니다.</span></label>
                                <label><input type="radio"  value="2" class ="check_radio3"  name="check_step_35" /><span>잘 모르겠습니다.</span></label>
                            </div>
                            <div class="fr">
                                <label><input type="radio"  value="3" class ="check_radio3"  name="check_step_35" /><span>약간 심해집니다.</span></label>
                                <label><input type="radio"  value="4" class ="check_radio3"  name="check_step_35" /><span>많이 심해집니다.</span></label>
                                <label><input type="radio"  value="2.5" class ="check_radio3"  name="check_step_35" /><span>선크림을 매일 바르고 가급적 햇빛을 보지 않습니다. <br />
                                    (그 이유가 위의 현상 때문이라면 4번을 체크해주세요)</span></label>
                            </div>
                        </div>
                    </li>
                    <li>
                        <p><span class="num">6</span>기미, 좀 옅거나 어두운 갈색 또는 회색의 스팟이 있다고 진단받은 적이 있습니까?</p>
                        <div class="check_wrap">
                            <div class="fl">
                                <label><input type="radio"  value="1" class ="check_radio3"  name="check_step_36" /><span>없습니다.</span></label>
                                <label><input type="radio"  value="2" class ="check_radio3"  name="check_step_36" /><span>그런 적이 있지만 지금은 없습니다.</span></label>
                            </div>
                            <div class="fr">
                                <label><input type="radio"  value="3" class ="check_radio3"  name="check_step_36" /><span>지금도 있습니다.</span></label>
                                <label><input type="radio"  value="4" class ="check_radio3"  name="check_step_36" /><span>심각하게 많습니다.</span></label>
                                <label><input type="radio"  value="2.5" class ="check_radio3"  name="check_step_36" /><span>잘 모르겠습니다.</span></label>
                            </div>
                        </div>
                    </li>
                    <li>
                        <p><span class="num">7</span>얼굴, 가슴, 등 또는 팔에 작은 갈색의 스팟들을 가지고 있거나 가졌던 적이 있습니까?</p>
                        <div class="check_wrap">
                            <div class="fl">
                                <label><input type="radio"  value="1" class ="check_radio3"  name="check_step_37" /><span>없습니다.</span></label>
                                <label><input type="radio"  value="2" class ="check_radio3"  name="check_step_37" /><span>약간 있습니다. (1~5개)</span></label>
                            </div>
                            <div class="fr">
                                <label><input type="radio"  value="3" class ="check_radio3"  name="check_step_37" /><span>많이 있습니다. (6~15개)</span></label>
                                <label><input type="radio"  value="4" class ="check_radio3"  name="check_step_37" /><span>엄청 많습니다. (16개 이상)</span></label>
                            </div>
                        </div>
                    </li>
                    <li>
                        <p><span class="num">8</span>몇 달 만에 처음으로 햇빛에 노출되었을 때 피부는 어떻습니까?</p>
                        <div class="check_wrap">
                            <div class="fl">
                                <label><input type="radio"  value="1" class ="check_radio3"  name="check_step_38" /><span>빨갛게 변합니다.</span></label>
                                <label><input type="radio"  value="2" class ="check_radio3"  name="check_step_38" /><span>붉게 변하고 나서 어두워집니다.</span></label>
                            </div>
                            <div class="fr">
                                <label><input type="radio"  value="3" class ="check_radio3"  name="check_step_38" /><span>점점 어두워집니다.</span></label>
                                <label><input type="radio"  value="4" class ="check_radio3"  name="check_step_38" /><span>피부가 검거나 검게 변했다는 것을 잘 모르겠습니다.</span></label>
                            </div>
                        </div>
                    </li>
                    <li>
                        <p><span class="num">9</span>몇 일 동안 지속적으로 햇볕을 본다면 무슨 일이 일어납니까?</p>
                        <div class="check_wrap">
                            <div class="fl">
                                <label><input type="radio"  value="1" class ="check_radio3"  name="check_step_39" /><span>선번과 물집이 나타나나 피부 색은 변화하지 않습니다.</span></label>
                                <label><input type="radio"  value="2" class ="check_radio3"  name="check_step_39" /><span>피부가 좀 더 어두워집니다.</span></label>
                            </div>
                            <div class="fr">
                                <label><input type="radio"  value="3" class ="check_radio3"  name="check_step_39" /><span>피부가 많이 어두워집니다.</span></label>
                                <label><input type="radio"  value="4" class ="check_radio3"  name="check_step_39" /><span>피부가 이미 검은 편입니다.</span></label>
                                <label><input type="radio"  value="2.5" class ="check_radio3"  name="check_step_39" /><span>잘 모르겠습니다.</span></label>
                            </div>
                        </div>
                    </li>
                    <li>
                        <p><span class="num">10</span>염색을 하지 않았을 때 원래 머리색은 무슨 색 입니까?</p>
                        <div class="check_wrap">
                            <div class="fl">
                                <label><input type="radio"  value="1" class ="check_radio3"  name="check_step_40" /><span>금발입니다.</span></label>
                                <label><input type="radio"  value="2" class ="check_radio3"  name="check_step_40" /><span>갈색입니다.</span></label>
                            </div>
                            <div class="fr">
                                <label><input type="radio"  value="3" class ="check_radio3"  name="check_step_40" /><span>검정색입니다.</span></label>
                                <label><input type="radio"  value="4" class ="check_radio3"  name="check_step_40" /><span>붉은색입니다.</span></label>
                            </div>
                        </div>
                    </li>
                    <li>
                        <p><span class="num">11</span>태양에 노출된 부분에 다크스팟이 잘 생기나요?</p>
                        <div class="check_wrap">
                            <div class="fl">
                                <label><input type="radio"  value="5" class ="check_radio3"  name="check_step_41" /><span>잘생긴다.</span></label>
                            </div>
                            <div class="fr">
                                <label><input type="radio"  value="0" class ="check_radio3"  name="check_step_41" /><span>잘 생기지 않는다.</span></label>
                            </div>
                        </div>
                    </li>
                </ul>
                <div class="step_btns">
                    <a class="btn_prev" type="button" id="beforeBtn3">이전</a>
                    <a class="btn_next" type="button" id="afterBtn3">다음</a>
                </div>
            </div>

        </div>
        <!-- //컨텐츠 -->
         <!-- 
         <div class="btn_wrap">
		<button class="BeforeBtns" id="beforeBtn3" >이전 </button>
		<button class="NextBtns" id="afterBtn3"  >다음</button>
    	</div>
    	 -->
    </section>
    <!-- //Container -->


    <jsp:include page="../common/footer.jsp"/>
</body>
</html>