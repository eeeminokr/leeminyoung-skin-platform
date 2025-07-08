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
                    <li>
                        <a href="#self_top;" class="steps1" id="step2_1" >
                            <span class="step">STEP 1</span>
                            <span class="txt">유수분 밸런스</span>
                            <img src="${pageContext.request.contextPath}/resources/static/images_old/solution/step01.png" alt="" />
                        </a>
                    </li>
                    <li class="on">
                        <a href="#self_top;" class="steps2" id="step2_2">
                            <span class="step">STEP 2</span>
                            <span class="txt">피부 민감도</span>
                            <img src="${pageContext.request.contextPath}/resources/static/images_old/solution/step02.png" alt="" />
                        </a>
                    </li>
                    <li>
                        <a href="#self_top;" class="steps3" id="step2_3">
                            <span class="step">STEP 3</span>
                            <span class="txt">멜라닌 색소 활성도</span>
                            <img src="${pageContext.request.contextPath}/resources/static/images_old/solution/step03.png" alt="" />
                        </a>
                    </li>
                    <li>
                        <a href="#self_top;" class="steps4" id="step2_4">
                            <span class="step">STEP 4</span>
                            <span class="txt">피부 탄력도 및 주름</span>
                            <img src="${pageContext.request.contextPath}/resources/static/images_old/solution/step04.png" alt="" />
                        </a>
                    </li>
               </ul>

                <p class="txt_step ta_c"><span>하단 STEP 2 자가진단 항목에 체크하세요!</span></p>
            </div>
            
            <div class="self_vs">
                <div class="bg bg_02"></div>
                <div class="inner">
                    <h3>피부 민감도</h3>
                    <ul>
                        <li>
                            <span class="txt">Sensitive<em>민감성</em></span>
                            <p>피부가 얇고 섬세해 외부 자극에 <br />쉽게 반응하는 타입</p>
                        </li>
                        <li>VS</li>
                        <li>
                            <span class="txt">Resistant<em>저항성</em></span>
                            <p>피부 장벽이 견고해 외부적인 스트레스에 <br />대해 견디는 힘이 강한 타입</p>
                        </li>
                    </ul>
                </div>
            </div>


            <div class="inner">
                <ul class="list_q">
                    <li>
                        <p><span class="num">1</span>얼굴에 붉은 여드름이 있습니까?</p>
                        <div class="check_wrap">
                            <div class="fl">
                                <label><input type="radio" value="1" class ="check_radio2" name="check_step_12" /><span>결코 없습니다.</span></label>
                                <label><input type="radio" value="2" class ="check_radio2" name="check_step_12" /><span>거의 없습니다.</span></label>
                            </div>
                            <div class="fr">
                                <label><input type="radio" value="3" class ="check_radio2" name="check_step_12" /><span>최소 달에 한 번 정도 나타납니다.</span></label>
                                <label><input type="radio" value="4" class ="check_radio2" name="check_step_12" /><span>최소 주에 한 번 정도 나타납니다.</span></label>
                            </div>
                        </div>
                    </li>
                    <li>
                        <p><span class="num">2</span>클렌저, 토너, 모이스처라이저를 비롯한 화장품을 피부에 적용했을 때 발진이나 가렵고 쏘는 듯한 증상이 나타납니까?</p>
                        <div class="check_wrap">
                            <div class="fl">
                                <label><input type="radio" value="1" class ="check_radio2" name="check_step_13" /><span>결코 없습니다.</span></label>
                                <label><input type="radio" value="2" class ="check_radio2" name="check_step_13" /><span>거의 없습니다.</span></label>
                            </div>
                            <div class="fr">
                                <label><input type="radio" value="3" class ="check_radio2" name="check_step_13" /><span>자주 그렇습니다.</span></label>
                                <label><input type="radio" value="4" class ="check_radio2" name="check_step_13" /><span>항상 그렇습니다.</span></label>
                                <label><input type="radio" value="2.5" class ="check_radio2" name="check_step_13" /><span>제품을 바르지 않습니다.</span></label>
                            </div>
                        </div>
                    </li>
                    <li>
                        <p><span class="num">3</span>여드름이나 로사시아로 진단받은 적이 있습니까?</p>
                        <div class="check_wrap">
                            <div class="fl">
                                <label><input type="radio"  value="1" class ="check_radio2" name="check_step_14" /><span>아니오.</span></label>
                                <label><input type="radio"  value="2" class ="check_radio2" name="check_step_14" /><span>다른 사람들이 볼 때 그렇다고 합니다.</span></label>
                            </div>
                            <div class="fr">
                                <label><input type="radio"  value="3" class ="check_radio2" name="check_step_14" /><span>네. 약간 그렇습니다.</span></label>
                                <label><input type="radio"  value="4" class ="check_radio2" name="check_step_14" /><span>네, 심각한 정도입니다.</span></label>
                                <label><input type="radio"  value="2.5" class ="check_radio2" name="check_step_14" /><span>모르겠습니다.</span></label>
                            </div>
                        </div>
                    </li>
                    <li>
                        <p><span class="num">4</span>액세서리를 하면 피부에 무언가 얼마나 자주 올라옵니까?</p>
                        <div class="check_wrap">
                            <div class="fl">
                                <label><input type="radio"  value="1" class ="check_radio2" name="check_step_15" /><span>결코 없습니다.</span></label>
                                <label><input type="radio"  value="2" class ="check_radio2" name="check_step_15" /><span>거의 없습니다.</span></label>
                            </div>
                            <div class="fr">
                                <label><input type="radio"  value="3" class ="check_radio2" name="check_step_15" /><span>자주 그렇습니다.</span></label>
                                <label><input type="radio"  value="4" class ="check_radio2" name="check_step_15" /><span>항상 그렇습니다.</span></label>
                                <label><input type="radio"  value="2.5" class ="check_radio2" name="check_step_15" /><span>잘 모르겠습니다.</span></label>
                            </div>
                        </div>
                    </li>
                    <li>
                        <p><span class="num">5</span>자외선 차단제 사용 후 피부가 가렵거나 붉게 타는 듯한 느낌, 여드름이 올라온 적이 있습니까?</p>
                        <div class="check_wrap">
                            <div class="fl">
                                <label><input type="radio"  value="1" class ="check_radio2" name="check_step_16" /><span>결코 없습니다.</span></label>
                                <label><input type="radio"  value="2" class ="check_radio2" name="check_step_16" /><span>거의 없습니다.</span></label>
                            </div>
                            <div class="fr">
                                <label><input type="radio"  value="3" class ="check_radio2" name="check_step_16" /><span>자주 그렇습니다.</span></label>
                                <label><input type="radio"  value="4" class ="check_radio2" name="check_step_16" /><span>항상 그렇습니다.</span></label>
                                <label><input type="radio"  value="2.5" class ="check_radio2" name="check_step_16" /><span>잘 모르겠습니다.</span></label>
                            </div>
                        </div>
                    </li>
                    <li>
                        <p><span class="num">6</span>아토피, 습진 또는 접촉성 피부염으로 진단받은 적이 있습니까?</p>
                        <div class="check_wrap">
                            <div class="fl">
                                <label><input type="radio"  value="1" class ="check_radio2" name="check_step_17" /><span>아니오.</span></label>
                                <label><input type="radio"  value="2" class ="check_radio2" name="check_step_17" /><span>다른 사람들이 볼 때 그렇다고 합니다.</span></label>
                            </div>
                            <div class="fr">
                                <label><input type="radio"  value="3" class ="check_radio2" name="check_step_17" /><span>네. 약간 그렇습니다.</span></label>
                                <label><input type="radio"  value="4" class ="check_radio2" name="check_step_17" /><span>네, 심각한 정도입니다.</span></label>
                                <label><input type="radio"  value="2.5" class ="check_radio2" name="check_step_17" /><span>모르겠습니다.</span></label>
                            </div>
                        </div>
                    </li>
                    <li>
                        <p><span class="num">7</span>반지를 꼈던 자리에 붉게 발진이 나타납니까?</p>
                        <div class="check_wrap">
                            <div class="fl">
                                <label><input type="radio"  value="1" class ="check_radio2" name="check_step_18" /><span>결코 없습니다.</span></label>
                                <label><input type="radio"  value="2" class ="check_radio2" name="check_step_18" /><span>거의 없습니다.</span></label>
                            </div>
                            <div class="fr">
                                <label><input type="radio"  value="3" class ="check_radio2" name="check_step_18" /><span>자주 그렇습니다.</span></label>
                                <label><input type="radio"  value="4" class ="check_radio2" name="check_step_18" /><span>항상 그렇습니다.</span></label>
                                <label><input type="radio"  value="2.5" class ="check_radio2" name="check_step_18" /><span>반지를 끼지 않습니다.</span></label>
                            </div>
                        </div>
                    </li>
                    <li>
                        <p><span class="num">8</span>향이 강한 화장품 사용 후 피부가 간지럽거나 건조하고 뒤집어진 적이 있습니까?</p>
                        <div class="check_wrap">
                            <div class="fl">
                                <label><input type="radio"  value="1" class ="check_radio2" name="check_step_19" /><span>결코 없습니다.</span></label>
                                <label><input type="radio"  value="2" class ="check_radio2" name="check_step_19" /><span>거의 없습니다.</span></label>
                            </div>
                            <div class="fr">
                                <label><input type="radio"  value="3" class ="check_radio2" name="check_step_19" /><span>자주 그렇습니다.</span></label>
                                <label><input type="radio"  value="4" class ="check_radio2" name="check_step_19" /><span>항상 그렇습니다.</span></label>
                                <label><input type="radio"  value="2.5" class ="check_radio2" name="check_step_19" /><span>위와 같은 타입의 제품을 사용하지 않습니다. <br />
                                    (그 이유가 위의 현상 때문이라면 1번을 체크해주세요)</span></label>
                            </div>
                        </div>
                    </li>
                    <li>
                        <p><span class="num">9</span>여행 시 호텔에서 제공되는 화장품을 사용하고 나서 문제가 없었습니까?</p>
                        <div class="check_wrap">
                            <div class="fl">
                                <label><input type="radio"  value="1" class ="check_radio2" name="check_step_20" /><span>결코 없습니다.</span></label>
                                <label><input type="radio"  value="2" class ="check_radio2" name="check_step_20" /><span>거의 없습니다.</span></label>
                            </div>
                            <div class="fr">
                                <label><input type="radio"  value="3" class ="check_radio2" name="check_step_20" /><span>피부가 간지럽고 붉어지고 또는 무언가 올라옵니다.</span></label>
                                <label><input type="radio"  value="4" class ="check_radio2" name="check_step_20" /><span>사용하지 않습니다. 과거에 문제를 겪었기 때문입니다.</span></label>
                                <label><input type="radio"  value="2.5" class ="check_radio2" name="check_step_20" /><span>평소 쓰는 제품을 가지고 다녀서 잘 모르겠습니다.</span></label>
                            </div>
                        </div>
                    </li>
                    <li>
                        <p><span class="num">10</span>가족 중에 아토피, 습진, 알레르기, 천식을 가지고 있는 사람이 있습니까?</p>
                        <div class="check_wrap">
                            <div class="fl">
                                <label><input type="radio"  value="1" class ="check_radio2" name="check_step_21" /><span>없습니다.</span></label>
                                <label><input type="radio"  value="2" class ="check_radio2" name="check_step_21" /><span>한 명 정도 있습니다.</span></label>
                            </div>
                            <div class="fr">
                                <label><input type="radio"  value="3" class ="check_radio2" name="check_step_21" /><span>여러 명 있습니다.</span></label>
                                <label><input type="radio"  value="4" class ="check_radio2" name="check_step_21" /><span>많습니다.</span></label>
                                <label><input type="radio"  value="2.5" class ="check_radio2" name="check_step_21" /><span>잘 모르겠습니다.</span></label>
                            </div>
                        </div>
                    </li>
                    <li>
                        <p><span class="num">11</span>향기나는 세제나 정전기 방지제를 사용한 옷을 입을 때 어떻습니까?</p>
                        <div class="check_wrap">
                            <div class="fl">
                                <label><input type="radio"  value="1" class ="check_radio2" name="check_step_22" /><span>괜찮습니다.</span></label>
                                <label><input type="radio"  value="2" class ="check_radio2" name="check_step_22" /><span>약간 드라이합니다.</span></label>
                            </div>
                            <div class="fr">
                                <label><input type="radio"  value="3" class ="check_radio2" name="check_step_22" /><span>가렵습니다.</span></label>
                                <label><input type="radio"  value="4" class ="check_radio2" name="check_step_22" /><span>가렵고 무언가 올라옵니다.</span></label>
                                <label><input type="radio"  value="2.5" class ="check_radio2" name="check_step_22" /><span>사용하지 않거나 잘 모르겠습니다.</span></label>
                            </div>
                        </div>
                    </li>
                    <li>
                        <p><span class="num">12</span>운동, 스트레스, 감정 변화 등으로 얼굴과 목이 얼마나 자주 붉어집니까?</p>
                        <div class="check_wrap">
                            <div class="fl">
                                <label><input type="radio"  value="1" class ="check_radio2" name="check_step_23" /><span>결코 없습니다.</span></label>
                                <label><input type="radio"  value="2" class ="check_radio2" name="check_step_23" /><span>때때로 그렇습니다.</span></label>
                            </div>
                            <div class="fr">
                                <label><input type="radio"  value="3" class ="check_radio2" name="check_step_23" /><span>자주 그렇습니다.</span></label>
                                <label><input type="radio"  value="4" class ="check_radio2" name="check_step_23" /><span>항상 그렇습니다.</span></label>
                            </div>
                        </div>
                    </li>
                    <li>
                        <p><span class="num">13</span>술을 마시면 피부가 붉어지거나 타는 듯한 느낌이 얼마나 자주 있습니까?</p>
                        <div class="check_wrap">
                            <div class="fl">
                                <label><input type="radio"  value="1" class ="check_radio2" name="check_step_24" /><span>결코 없습니다.</span></label>
                                <label><input type="radio"  value="2" class ="check_radio2" name="check_step_24" /><span>때때로 그렇습니다.</span></label>
                            </div>
                            <div class="fr">
                                <label><input type="radio"  value="3" class ="check_radio2" name="check_step_24" /><span>자주 그렇습니다.</span></label>
                                <label><input type="radio"  value="4" class ="check_radio2" name="check_step_24" /><span>항상 그렇습니다.</span></label>
                                <label><input type="radio"  value="2.5" class ="check_radio2" name="check_step_24" /><span>음주를 하지 않습니다.</span></label>
                            </div>
                        </div>
                    </li>
                    <li>
                        <p><span class="num">14</span>매운 음식이나 뜨거운 음식을 먹으면 피부가 붉어 지거나 달아오르는 느낌이 얼마나 자주 있습니까?</p>
                        <div class="check_wrap">
                            <div class="fl">
                                <label><input type="radio"  value="1" class ="check_radio2" name="check_step_25" /><span>결코 없습니다.</span></label>
                                <label><input type="radio"  value="2" class ="check_radio2" name="check_step_25" /><span>때때로 그렇습니다.</span></label>
                            </div>
                            <div class="fr">
                                <label><input type="radio"  value="3" class ="check_radio2" name="check_step_25" /><span>자주 그렇습니다.</span></label>
                                <label><input type="radio"  value="4" class ="check_radio2" name="check_step_25" /><span>항상 그렇습니다.</span></label>
                                <label><input type="radio"  value="2.5" class ="check_radio2" name="check_step_25" /><span>매운 음식을 먹지 않습니다. <br />
                                    (그 이유가 위의 현상 때문이라면 1번을 체크해주세요)</span></label>
                            </div>
                        </div>
                    </li>
                    <li>
                        <p><span class="num">15</span>얼굴과 특히 코 주변에 눈에 띄는 붉음증이나 혈관 확장된 부분이 얼마나 있습니까?</p>
                        <div class="check_wrap">
                            <div class="fl">
                                <label><input type="radio"  value="1" class ="check_radio2" name="check_step_26" /><span>결코 없습니다.</span></label>
                                <label><input type="radio"  value="2" class ="check_radio2" name="check_step_26" /><span>거의 없습니다. (코를 포함해서 1~3부분)</span></label>
                            </div>
                            <div class="fr">
                                <label><input type="radio"  value="3" class ="check_radio2" name="check_step_26" /><span>약간 있습니다. (코를 포함해서 4~6부분)</span></label>
                                <label><input type="radio"  value="4" class ="check_radio2" name="check_step_26" /><span>많습니다. (코를 포함해서 7부분 이상)</span></label>
                            </div>
                        </div>
                    </li>
                    <li>
                        <p><span class="num">16</span>사진 찍을 때 얼굴이 붉습니까?</p>
                        <div class="check_wrap">
                            <div class="fl">
                                <label><input type="radio"  value="1" class ="check_radio2" name="check_step_27" /><span>결코 없습니다.</span></label>
                                <label><input type="radio"  value="2" class ="check_radio2" name="check_step_27" /><span>때때로 그렇습니다.</span></label>
                            </div>
                            <div class="fr">
                                <label><input type="radio"  value="3" class ="check_radio2" name="check_step_27" /><span>자주 그렇습니다.</span></label>
                                <label><input type="radio"  value="4" class ="check_radio2" name="check_step_27" /><span>항상 그렇습니다.</span></label>
                            </div>
                        </div>
                    </li>
                    <li>
                        <p><span class="num">17</span>실제로 선번을 입지 않았는데도 그렇게 보여집니까?</p>
                        <div class="check_wrap">
                            <div class="fl">
                                <label><input type="radio"  value="1" class ="check_radio2" name="check_step_28" /><span>결코 없습니다.</span></label>
                                <label><input type="radio"  value="2" class ="check_radio2" name="check_step_28" /><span>때때로 그렇습니다.</span></label>
                            </div>
                            <div class="fr">
                                <label><input type="radio"  value="3" class ="check_radio2" name="check_step_28" /><span>자주 그렇습니다.</span></label>
                                <label><input type="radio"  value="4" class ="check_radio2" name="check_step_28" /><span>항상 그렇습니다.</span></label>
                                <label><input type="radio"  value="2.5" class ="check_radio2" name="check_step_28" /><span>항상 선번을 입습니다.</span></label>
                            </div>
                        </div>
                    </li>
                    <li>
                        <p><span class="num">18</span>스킨케어 및 메이크업 제품으로 피부가 가렵거나, 붓거나. 붉어지는 증상을 가지고 있습니까?</p>
                        <div class="check_wrap">
                            <div class="fl">
                                <label><input type="radio"  value="1" class ="check_radio2" name="check_step_29" /><span>결코 없습니다.</span></label>
                                <label><input type="radio"  value="2" class ="check_radio2" name="check_step_29" /><span>때때로 그렇습니다.</span></label>
                            </div>
                            <div class="fr">
                                <label><input type="radio"  value="3" class ="check_radio2" name="check_step_29" /><span>자주 그렇습니다.</span></label>
                                <label><input type="radio"  value="4" class ="check_radio2" name="check_step_29" /><span>항상 그렇습니다.</span></label>
                                <label><input type="radio"  value="2.5" class ="check_radio2" name="check_step_29" /><span>제품을 사용하지 않는다. <br />
                                    (그 이유가 위의 현상 때문이라면 4번을 체크해주세요)</span></label>
                            </div>
                        </div>
                    </li>
                    <li>
                        <p><span class="num">19</span>여드름, 로사시아, 접촉성 피부염, 습진 등을 진단받은 적이 있나요?</p>
                        <div class="check_wrap">
                            <div class="fl">
                                <label><input type="radio"  value="5" class ="check_radio2" name="check_step_30" /><span>피부과 전문의로부터 진단을 받았다.</span></label>
                            </div>
                            <div class="fr">
                                <label><input type="radio"  value="2" class ="check_radio2" name="check_step_30" /><span>피부과 전문의가 아닌 다른 의사들로부터 진단을 받았다.</span></label>
                        	   <label><input type="radio"  value="0" class ="check_radio2" name="check_step_30" /><span>진단을 받은적이 없다.</span></label>
                            </div>
                        </div>
                    </li>
                </ul>
                <div class="step_btns">
                    <a class="btn_prev" type="button" id="beforeBtn2">이전</a>
                    <a class="btn_next" type="button" id="afterBtn2">다음</a>
                </div>
            </div>

        </div>
        <!-- //컨텐츠 -->
        <!--  
        <div class="btn_wrap">
		<button class="BeforeBtns" id="beforeBtn2" >이전 </button>
		<button class="NextBtns" id="afterBtn2"  >다음</button>
    	</div>
    	-->
    </section>
    <!-- //Container -->


    <jsp:include page="../common/footer.jsp"/>
</body>
</html>