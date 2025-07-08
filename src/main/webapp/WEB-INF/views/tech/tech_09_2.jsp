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
                                <li><a href="${pageContext.request.contextPath}/beautytech/tech_09_1">회사소개</a></li>
                                <li class="active"><a href="${pageContext.request.contextPath}/beautytech/tech_09_2">피부진단기 모델</a></li>
                            </ul>
                        </li>
                        <li><a class="last" href="${pageContext.request.contextPath}/beautytech/tech_10_1">인바디</a></li>
                    </ul>
                </div>

                <ul class="depth_03">
                    <li><a href="${pageContext.request.contextPath}/beautytech/tech_09_1">회사소개</a></li>
                    <li class="active"><a href="${pageContext.request.contextPath}/beautytech/tech_09_2">피부진단기 모델</a></li>
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
        <div class="content helios_model">
            <div class="inner">

                <h2 class="ff_nm bar">피부진단기 모델</h2>

                <div class="box mb_50">
                    <h4 class="tit mb_80"><span class="num">1</span>피부진단기기 모델명: SMART CARE KEEP</h4>

                    <h4 class="tit"><span class="num">2</span>피부진단기기 기능</h4>
                    <div class="linebox model mb_80">
                        <div class="helios_img of_h">
                            <img class="fl img1" width="342" height="342" src="${pageContext.request.contextPath}/resources/static/images_old/tech/helios_model_img01.jpg" alt="" />
                            <img class="fl img2" width="306" height="326" src="${pageContext.request.contextPath}/resources/static/images_old/tech/helios_model_img02.jpg" alt="" />
                            <img class="fr img3" width="306" height="326" src="${pageContext.request.contextPath}/resources/static/images_old/tech/helios_model_img03.jpg" alt="" />
                        </div>
                        <p class="ta_c mb_150">바우만의 16가지 피부타입으로 분류된 자신의 피부타입을 알려주며  피부타입 맞춤 제품추천까지 가능한 SMART CARE KEEP<br />
                            소형(휴대용)과 거치형(측정항목의 다양성)의 장점만 취합한 전문적인 피부진단기기<br />
                            데이터를 축적하여 성능고도화의 인공지능 분석이 가능한 전문적인 피부진단기기</p>
                        <p class="ta_c mb_40"><img width="775" height="366" src="${pageContext.request.contextPath}/resources/static/images_old/tech/helios_model_img04.jpg" alt="" /></p>
                        <p class="ta_c mb_150">측정 후 결과는 클라우드 서버에서 인공지능을 통해 측정값 도출<br />
                            현재 자신의 피부 상태가 연령대 평균값에서 (양호~주의요망) 어떤 위치인지 정확히 파악가능</p>
                        <p class="ta_c mb_40"><img width="725" height="450" src="${pageContext.request.contextPath}/resources/static/images_old/tech/helios_model_img05.jpg" alt="" /></p>
                        <p class="ta_c mb_150">피부 측정 데이터와 설문을 통해 수집된 데이터를 바탕으로 ‘바우만의 16가지 피부타입’으로 분류<br />
                            자신의 피부타입 및 진단결과는 물론 맞춤 제품 추천까지 가능함</p>
                        <p class="ta_c mb_40"><img width="738" height="240" src="${pageContext.request.contextPath}/resources/static/images_old/tech/helios_model_img06.jpg" alt="" /></p>
                        <p class="ta_c mb_50">측정했던 피부 데이터 값이 축적되어 이전과 현재의 피부상태 비교 가능<br />
                            피부 데이터 값 축적으로 인공지능 성능 고도화</p>
                    </div>

                    <h4 class="tit"><span class="num">3</span>피부진단기기 사용 방법</h4>
                    <ol class="ol_number type model mb_70">
                        <li><span class="num">1</span>고객등록을 통한 신규고객등록 후 종합 진단시작</li>
                        <li><span class="num">2</span>진단하고자 하는 모드를 순서대로 선택한 후 각각 촬영을 시작한다.
                            (수분, 모공, 색소/잡티, 주름. 피지_직접 진단기기를  피부에 접촉하여 촬영)
                            (유분_유분지, 각질_각질지 사용 후 시험지 촬영)</li>
                        <li><span class="num">3</span>모든 촬영 완료 후 진단시작 클릭</li>
                        <li><span class="num">4</span>민감도 측정 설문지 (4문항) 선택 후 제출</li>
                        <li><span class="num">5</span>각각의 결과는 클라우드 서버에서 인공지능을 통해 측정</li>
                        <li><span class="num">6</span>측정값을 앱을 통해 확인 (도표 및 그래프)</li>
                        <li><span class="num">7</span>측정 및 분석된 자신의 피부타입 (바우만16가지 피부타입) 확인</li>
                        <li><span class="num">8</span>헬리오스의 추천제품 확인 및 구매</li>
                    </ol>

                    <h4 class="tit"><span class="num">4</span>피부진단기기 측정 항목</h4>
                    <ul class="bul_cir">
                        <li>수분, 유분, 주름, 모공, 색소/잡티, 피지 ,각질, 민감도(설문) 다양한 측정항목</li>
                    </ul>
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