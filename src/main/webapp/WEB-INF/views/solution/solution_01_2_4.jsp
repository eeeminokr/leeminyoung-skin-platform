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
                        <a href="javascript:void(0)#self_top;" class="steps1" id="step4_1" >
                            <span class="step">STEP 1</span>
                            <span class="txt">유수분 밸런스</span>
                            <img src="${pageContext.request.contextPath}/resources/static/images_old/solution/step01.png" alt="" />
                        </a>
                    </li>
                    <li>
                        <a href="javascript:void(0)#self_top;" class="steps2" id="step4_2">
                            <span class="step">STEP 2</span>
                            <span class="txt">피부 민감도</span>
                            <img src="${pageContext.request.contextPath}/resources/static/images_old/solution/step02.png" alt="" />
                        </a>
                    </li>
                    <li >
                        <a href="javascript:void(0)#self_top;" class="steps3" id="step4_3">
                            <span class="step">STEP 3</span>
                            <span class="txt">멜라닌 색소 활성도</span>
                            <img src="${pageContext.request.contextPath}/resources/static/images_old/solution/step03.png" alt="" />
                        </a>
                    </li>
                    <li class="on">
                        <a href="javascript:void(0)#self_top;" class="steps4" id="step4_4">
                            <span class="step">STEP 4</span>
                            <span class="txt">피부 탄력도 및 주름</span>
                            <img src="${pageContext.request.contextPath}/resources/static/images_old/solution/step04.png" alt="" />
                        </a>
                    </li>
               </ul>

                <p class="txt_step ta_c"><span>하단 STEP 4 자가진단 항목에 체크하세요!</span></p>
            </div>
            	<div id="loadingImg" style="z-index: 9000;margin: 40px auto; max-width: 1200px;box-sizing: border-box;">
                </div>
            <div class="self_vs">
                <div class="bg bg_04"></div>
                <div class="inner">
                    <h3>피부 탄력도 및 주름</h3>
                    <ul>
                        <li>
                            <span class="txt">Wrinkle<em>주름</em></span>
                            <p>피부 결이 고르지 않고 주름이 많은 타입</p>
                        </li>
                        <li>VS</li>
                        <li>
                            <span class="txt">Tight<em>탱탱함</em></span>
                            <p>피부 결이 고르고 주름이 적어 <br />탄력이 있는 타입</p>
                        </li>
                    </ul>
                </div>
            </div>


            <div class="inner">
                <ul class="list_q">
                    <li>
                        <p><span class="num">1</span>얼굴에 주름이 있습니까?</p>
                        <div class="check_wrap">
                            <div class="fl">
                                <label><input type="radio" value="1" class ="check_radio4" name="check_step_42" /><span>아니오. 웃거나 찡그리거나 눈썹을 <br />
                                    들어올려도 주름이 생기지 않습니다.</span></label>
                                <label><input type="radio" value="2" class ="check_radio4" name="check_step_42" /><span>표정을 지을 때만 생깁니다.</span></label>
                            </div>
                            <div class="fr">
                                <label><input type="radio" value="3" class ="check_radio4" name="check_step_42" /><span>표정을 지을 때도 생기고 표정을 짓지 않아도 주름이 있습니다.</span></label>
                                <label><input type="radio" value="4" class ="check_radio4" name="check_step_42" /><span>별다른 표정을 짓고 있지 않아도 주름이 많이 있습니다.</span></label>
                            </div>
                        </div>
                    
                        <div class="info">
                            2~7번을 답할 때 현재의 자신만을 바라보지 말고 직계가족이나 먼 친척까지도 생각하면서 답변해주세요.
                        </div>
                    
                        <p><span class="num">2</span>당신의 어머니의 피부 나이는 얼마로 보이십니까?</p>
                        <div class="check_wrap">
                            <div class="fl">
                                <label><input type="radio" value="1" class ="check_radio4" name="check_step_43" /><span>나이보다 5~10년 어려 보입니다.</span></label>
                                <label><input type="radio" value="2" class ="check_radio4" name="check_step_43" /><span>나이 그대로 보입니다.</span></label>
                            </div>
                            <div class="fr">
                                <label><input type="radio" value="3" class ="check_radio4" name="check_step_43" /><span>5년 정도 더 나이 들어 보입니다.</span></label>
                                <label><input type="radio" value="4" class ="check_radio4" name="check_step_43" /><span>5년 이상 더 나이 들어 보입니다.</span></label>
                                <label><input type="radio" value="2.5" class ="check_radio4" name="check_step_43" /><span>알아볼 수 있는 문제가 아닙니다. <br />
                                    (입양 또는 사망, 전혀 기억이 안 남)</span></label>
                            </div>
                        </div>
                    </li>
                    <li>
                        <p><span class="num">3</span>당신의 아버지의 피부 나이는 얼마로 보입니까?</p>
                        <div class="check_wrap">
                            <div class="fl">
                                <label><input type="radio" value="1" class ="check_radio4" name="check_step_44" /><span>나이보다 5~10년 어려 보입니다.</span></label>
                                <label><input type="radio" value="2" class ="check_radio4" name="check_step_44" /><span>나이 그대로 보입니다.</span></label>
                            </div>
                            <div class="fr">
                                <label><input type="radio" value="3" class ="check_radio4" name="check_step_44" /><span>5년 정도 더 나이 들어 보입니다.</span></label>
                                <label><input type="radio" value="4" class ="check_radio4" name="check_step_44" /><span>5년 이상 더 나이 들어 보입니다.</span></label>
                                <label><input type="radio" value="2.5" class ="check_radio4" name="check_step_44" /><span>알아볼 수 있는 문제가 아닙니다. <br />
                                    (입양 또는 사망, 전혀 기억이 안 남)</span></label>
                            </div>
                        </div>
                    </li>
                    <li>
                        <p><span class="num">4</span>당신의 외할머니의 피부 나이는 얼마로 보이십니까?</p>
                        <div class="check_wrap">
                            <div class="fl">
                                <label><input type="radio" value="1" class ="check_radio4" name="check_step_45" /><span>나이보다 5~10년 어려 보입니다.</span></label>
                                <label><input type="radio" value="2" class ="check_radio4" name="check_step_45" /><span>나이 그대로 보입니다.</span></label>
                            </div>
                            <div class="fr">
                                <label><input type="radio" value="3" class ="check_radio4" name="check_step_45" /><span>5년 정도 더 나이 들어 보입니다.</span></label>
                                <label><input type="radio" value="4" class ="check_radio4" name="check_step_45" /><span>5년 이상 더 나이 들어 보입니다.</span></label>
                                <label><input type="radio" value="2.5" class ="check_radio4" name="check_step_45" /><span>알아볼 수 있는 문제가 아닙니다. <br />
                                    (입양 또는 사망, 전혀 기억이 안 남)</span></label>
                            </div>
                        </div>
                    </li>
                    <li>
                        <p><span class="num">5</span>당신의 외할아버지 피부 나이는 얼마로 보이십니까?</p>
                        <div class="check_wrap">
                            <div class="fl">
                                <label><input type="radio" value="1" class ="check_radio4" name="check_step_46" /><span>나이보다 5~10년 어려 보입니다.</span></label>
                                <label><input type="radio" value="2" class ="check_radio4" name="check_step_46" /><span>나이 그대로 보입니다.</span></label>
                            </div>
                            <div class="fr">
                                <label><input type="radio" value="3" class ="check_radio4" name="check_step_46" /><span>5년 정도 더 나이 들어 보입니다.</span></label>
                                <label><input type="radio" value="4" class ="check_radio4" name="check_step_46" /><span>5년 이상 더 나이 들어 보입니다.</span></label>
                                <label><input type="radio" value="2.5" class ="check_radio4" name="check_step_46" /><span>알아볼 수 있는 문제가 아닙니다. <br />
                                    (입양 또는 사망, 전혀 기억이 안 남)</span></label>
                            </div>
                        </div>
                    </li>
                    <li>
                        <p><span class="num">6</span>당신의 친할머니의 피부 나이는 얼마로 보이십니까?</p>
                        <div class="check_wrap">
                            <div class="fl">
                                <label><input type="radio" value="1" class ="check_radio4" name="check_step_47" /><span>나이보다 5~10년 어려 보입니다.</span></label>
                                <label><input type="radio" value="2" class ="check_radio4" name="check_step_47" /><span>나이 그대로 보입니다.</span></label>
                            </div>
                            <div class="fr">
                                <label><input type="radio" value="3" class ="check_radio4" name="check_step_47" /><span>5년 정도 더 나이 들어 보입니다.</span></label>
                                <label><input type="radio" value="4" class ="check_radio4" name="check_step_47" /><span>5년 이상 더 나이 들어 보입니다.</span></label>
                                <label><input type="radio" value="2.5" class ="check_radio4" name="check_step_47" /><span>알아볼 수 있는 문제가 아닙니다. <br />
                                    (입양 또는 사망, 전혀 기억이 안 남)</span></label>
                            </div>
                        </div>
                    </li>
                    <li>
                        <p><span class="num">7</span>당신의 친할아버지의 피부 나이는 얼마로 보이십니까?</p> 
                        <div class="check_wrap">
                            <div class="fl">
                                <label><input type="radio" value="1" class ="check_radio4" name="check_step_48" /><span>나이보다 5~10년 어려 보입니다.</span></label>
                                <label><input type="radio" value="2" class ="check_radio4" name="check_step_48" /><span>나이 그대로 보입니다.</span></label>
                            </div>
                            <div class="fr">
                                <label><input type="radio" value="3" class ="check_radio4" name="check_step_48" /><span>5년 정도 더 나이 들어 보입니다.</span></label>
                                <label><input type="radio" value="4" class ="check_radio4" name="check_step_48" /><span>5년 이상 더 나이 들어 보입니다.</span></label>
                                <label><input type="radio" value="2.5" class ="check_radio4" name="check_step_48" /><span>알아볼 수 있는 문제가 아닙니다. <br />
                                    (입양 또는 사망, 전혀 기억이 안 남)</span></label>
                            </div>
                        </div>
                    </li>
                    <li>
                        <p><span class="num">8</span>살면서 2주 이상 피부를 태닝 했던 적이 있습니까? 만약 했다면 얼마나 반복했습니까?</p>
                        <div class="check_wrap">
                            <div class="fl">
                                <label><input type="radio"  value="1" class ="check_radio4" name="check_step_49" /><span>없습니다.</span></label>
                                <label><input type="radio"  value="2" class ="check_radio4" name="check_step_49" /><span>1~5년 정도 반복했습니다.</span></label>
                            </div>
                            <div class="fr">
                                <label><input type="radio"  value="3" class ="check_radio4" name="check_step_49" /><span>5~10년 정도 반복했습니다.</span></label>
                                <label><input type="radio"  value="4" class ="check_radio4" name="check_step_49" /><span>10년 이상 반복했습니다.</span></label>
                            </div>
                        </div>
                    </li>
                    <li>
                        <p><span class="num">9</span>계절에 따라서 2주 이상 태닝 프로그램을 진행한 적이 있습니까?</p>
                        <div class="check_wrap">
                            <div class="fl">
                                <label><input type="radio"  value="1" class ="check_radio4" name="check_step_50" /><span>없습니다.</span></label>
                                <label><input type="radio"  value="2" class ="check_radio4" name="check_step_50" /><span>1~5년 정도 반복했습니다.</span></label>
                            </div>
                            <div class="fr">
                                <label><input type="radio"  value="3" class ="check_radio4" name="check_step_50" /><span>5~10년 정도 반복했습니다.</span></label>
                                <label><input type="radio"  value="4" class ="check_radio4" name="check_step_50" /><span>10년 이상 반복했습니다.</span></label>
                            </div>
                        </div>
                    </li>
                    <li>
                        <p><span class="num">10</span>거주지를 기준으로 하루에 얼마나 많이 태양에 노출됩니까?</p>
                        <div class="check_wrap">
                            <div class="fl">
                                <label><input type="radio"  value="1" class ="check_radio4" name="check_step_51" /><span>거의 없습니다. 대부분 실내에 머물고 <br />
                                    빛을 많이 보는 곳이 아닙니다.</span></label>
                                <label><input type="radio"  value="2" class ="check_radio4" name="check_step_51" /><span>약간 그렇습니다. 햇빛이 강하지는 않으나 <br />
                                    일반적으로 해를 보고 삽니다.</span></label>
                            </div>
                            <div class="fr">
                                <label><input type="radio"  value="3" class ="check_radio4" name="check_step_51" /><span>적당히 그렇습니다. 꽤 햇빛에 노출되어 지냅니다.</span></label>
                                <label><input type="radio"  value="4" class ="check_radio4" name="check_step_51" /><span>꽤 많습니다. 적도 인근 국가로 햇빛이 쨍쨍한 지역에 삽니다.</span></label>
                            </div>
                        </div>
                    </li>
                    <li>
                        <p><span class="num">11</span>본인은 보기에 나이가 어느 정도 되어 보입니까?</p>
                        <div class="check_wrap">
                            <div class="fl">
                                <label><input type="radio"  value="1" class ="check_radio4" name="check_step_52" /><span>나이보다 1~3년정도 적어 보입니다.</span></label>
                                <label><input type="radio"  value="2" class ="check_radio4" name="check_step_52" /><span>나이 그대로 보입니다.</span></label>
                            </div>
                            <div class="fr">
                                <label><input type="radio"  value="3" class ="check_radio4" name="check_step_52" /><span>5년 정도 더 나이 들어 보입니다.</span></label>
                                <label><input type="radio"  value="4" class ="check_radio4" name="check_step_52" /><span>5년 이상 더 나이 들어 보입니다.</span></label>
                            </div>
                        </div>
                    </li>
                    <li>
                        <p><span class="num">12</span>최근 5년동안 실외 스포츠나 활동 등으로 피부를 햇빛에 오래도록 노출한 적이 있습니까?</p>
                        <div class="check_wrap">
                            <div class="fl">
                                <label><input type="radio"  value="1" class ="check_radio4" name="check_step_53" /><span>없습니다.</span></label>
                                <label><input type="radio"  value="2" class ="check_radio4" name="check_step_53" /><span>한 달에 한 번 있습니다.</span></label>
                            </div>
                            <div class="fr">
                                <label><input type="radio"  value="3" class ="check_radio4" name="check_step_53" /><span>일주일에 한 번 있습니다.</span></label>
                                <label><input type="radio"  value="4" class ="check_radio4" name="check_step_53" /><span>매일 그렇습니다.</span></label>
                            </div>
                        </div>
                    </li>
                    <li>
                        <p><span class="num">13</span>태닝을 받는다면 얼마나 자주 방문합니까?</p>
                        <div class="check_wrap">
                            <div class="fl">
                                <label><input type="radio"  value="1" class ="check_radio4" name="check_step_54" /><span>없습니다.</span></label>
                                <label><input type="radio"  value="2" class ="check_radio4" name="check_step_54" /><span>1~5번 정도 방문합니다.</span></label>
                            </div>
                            <div class="fr">
                                <label><input type="radio"  value="3" class ="check_radio4" name="check_step_54" /><span>5~10번 정도 방문합니다.</span></label>
                                <label><input type="radio"  value="4" class ="check_radio4" name="check_step_54" /><span>상당히 많이 방문합니다.</span></label>
                            </div>
                        </div>
                    </li>
                    <li>
                        <p><span class="num">14</span>살면서 흡연한 경험이 있습니까? 만약 흡연자라면 얼마나 자주 답배를 핍니까? 혹은 담배 피는 환경에 얼마나 자주 노출되어 있습니까?</p>
                        <div class="check_wrap">
                            <div class="fl">
                                <label><input type="radio"  value="1" class ="check_radio4" name="check_step_55" /><span>없습니다.</span></label>
                                <label><input type="radio"  value="2" class ="check_radio4" name="check_step_55" /><span>몇 보루 정도 폈습니다.</span></label>
                            </div>
                            <div class="fr">
                                <label><input type="radio"  value="3" class ="check_radio4" name="check_step_55" /><span>여러 보루 폈습니다.</span></label>
                                <label><input type="radio"  value="4" class ="check_radio4" name="check_step_55" /><span>매일 담배를 핍니다.</span></label>
                                <label><input type="radio"  value="2.5" class ="check_radio4" name="check_step_55" /><span>흡연은 하지 않지만 흡연자와 같은 환경에 살고 있습니다.</span></label>
                            </div>
                        </div>
                    </li>
                    <li>
                        <p><span class="num">15</span>거주하는 곳의 공기 오명도는 어떻습니까?</p>
                        <div class="check_wrap">
                            <div class="fl">
                                <label><input type="radio"  value="1" class ="check_radio4" name="check_step_56" /><span>맑고 깨끗합니다.</span></label>
                                <label><input type="radio"  value="2" class ="check_radio4" name="check_step_56" /><span>맑고 깨끗한 때도 있고 그렇지 않을 때도 있습니다.</span></label>
                            </div>
                            <div class="fr">
                                <label><input type="radio"  value="3" class ="check_radio4" name="check_step_56" /><span>약간 오염되어 있습니다.</span></label>
                                <label><input type="radio"  value="4" class ="check_radio4" name="check_step_56" /><span>공기 오염이 심합니다.</span></label>
                            </div>
                        </div>
                    </li>
                    <li>
                        <p><span class="num">16</span>레티놀, 레틴-A, 디페린과 같은 비타민 페이셜 크림을 얼마나 오래 사용하셨나요?</p>
                        <div class="check_wrap">
                            <div class="fl">
                                <label><input type="radio"  value="1" class ="check_radio4" name="check_step_57" /><span>수년 동안 꾸준히 사용했습니다.</span></label>
                                <label><input type="radio"  value="2" class ="check_radio4" name="check_step_57" /><span>때때로 그렇습니다.</span></label>
                            </div>
                            <div class="fr">
                                <label><input type="radio"  value="3" class ="check_radio4" name="check_step_57" /><span>어렸을 때 여드름으로 인해 사용한 적 있습니다.</span></label>
                                <label><input type="radio"  value="4" class ="check_radio4" name="check_step_57" /><span>없습니다.</span></label>
                            </div>
                        </div>
                    </li>
                    <li>
                        <p><span class="num">17</span>평소 과일과 채소를 얼마나 자주 드십니까?</p>
                        <div class="check_wrap">
                            <div class="fl">
                                <label><input type="radio"  value="1" class ="check_radio4" name="check_step_58" /><span>매일 먹습니다.</span></label>
                                <label><input type="radio"  value="2" class ="check_radio4" name="check_step_58" /><span>하루에 한 번 먹습니다.</span></label>
                            </div>
                            <div class="fr">
                                <label><input type="radio"  value="3" class ="check_radio4" name="check_step_58" /><span>때때로 챙겨 먹습니다.</span></label>
                                <label><input type="radio"  value="4" class ="check_radio4" name="check_step_58" /><span>아예 먹지 않습니다.</span></label>
                            </div>
                        </div>
                    </li>
                    <li>
                        <p><span class="num">18</span>하루 먹는 것 중에서 과일과 채소가 차지하는 비율은 얼마나 됩니까?</p>
                        <div class="check_wrap">
                            <div class="fl">
                                <label><input type="radio"  value="1" class ="check_radio4" name="check_step_59" /><span>75~100%</span></label>
                                <label><input type="radio"  value="2" class ="check_radio4" name="check_step_59" /><span>25~75%</span></label>
                            </div>
                            <div class="fr">
                                <label><input type="radio"  value="3" class ="check_radio4" name="check_step_59" /><span>10~15%</span></label>
                                <label><input type="radio"  value="4" class ="check_radio4" name="check_step_59" /><span>0~10%</span></label>
                            </div>
                        </div>
                    </li>
                    <li>
                        <p><span class="num">19</span>본연의 피부색은 어떻습니까?</p>
                        <div class="check_wrap">
                            <div class="fl">
                                <label><input type="radio"  value="1" class ="check_radio4" name="check_step_60" /><span>어둡습니다.</span></label>
                                <label><input type="radio"  value="2" class ="check_radio4" name="check_step_60" /><span>중간 톤입니다.</span></label>
                            </div>
                            <div class="fr">
                                <label><input type="radio"  value="3" class ="check_radio4" name="check_step_60" /><span>밝은 톤입니다.</span></label>
                                <label><input type="radio"  value="4" class ="check_radio4" name="check_step_60" /><span>매우 밝은 톤입니다.</span></label>
                            </div>
                        </div>
                    </li>
                    <li>
                        <p><span class="num">20</span>당신의 인종은 어떻게 됩니까?</p>
                        <div class="check_wrap">
                            <div class="fl">
                                <label><input type="radio"  value="1" class ="check_radio4" name="check_step_61" /><span>아프리칸, 아메리칸</span></label>
                                <label><input type="radio"  value="2" class ="check_radio4" name="check_step_61" /><span>아시안</span></label>
                            </div>
                            <div class="fr">
                                <label><input type="radio"  value="3" class ="check_radio4" name="check_step_61" /><span>라틴</span></label>
                                <label><input type="radio"  value="4" class ="check_radio4" name="check_step_61" /><span>코카시언</span></label>
                            </div>
                        </div>
                    </li>
                    <li>
                        <p><span class="num">21</span>현재 만 나이는 65세 기준 어떻게 되나요?</p>
                        <div class="check_wrap">
                            <div class="fl">
                                <label><input type="radio"  value="5" class ="check_radio4" name="check_step_62" /><span>만 65세 이상</span></label>
                            </div>
                            <div class="fr">
                                <label><input type="radio"  value="0" class ="check_radio4" name="check_step_62" /><span>만 65세 미만</span></label>
                            </div>
                        </div>
                    </li>
                </ul>
                
                <div class="step_btns" >
                    <a class="btn_prev" id="beforeBtn4">이전</a>
                </div>
            </div>

        </div>
        <!-- //컨텐츠 -->
        <!--  
         <div class="btn_wrap">
		<button class="BeforeBtns" id="beforeBtn4" >이전 </button>
		<button class="result" id="result"  >결과 보러가기 </button>
    	</div>
    	-->
    </section>
    <!-- //Container -->


    <jsp:include page="../common/footer.jsp"/>
</body>
</html>