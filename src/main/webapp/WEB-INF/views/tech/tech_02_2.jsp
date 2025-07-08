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
                    <button type="button">초위스컴퍼니</button>
                    <ul>
                        <li><a href="${pageContext.request.contextPath}/beautytech/tech_01_1">아람휴비스</a></li>
                        <li class="active"><a href="${pageContext.request.contextPath}/beautytech/tech_02_1">초위스컴퍼니</a>
                            <ul>
                                <li><a href="${pageContext.request.contextPath}/beautytech/tech_02_1">회사소개</a></li>
                                <li class="active"><a href="${pageContext.request.contextPath}/beautytech/tech_02_2">피부진단기 모델</a></li>
                            </ul>
                        </li>
                        <li><a href="${pageContext.request.contextPath}/beautytech/tech_03_1">룰루랩</a></li>
                        <li><a href="${pageContext.request.contextPath}/beautytech/tech_04_1">릴리커버</a></li>
                        <li><a href="${pageContext.request.contextPath}/beautytech/tech_05_1">링커버스</a></li>
                        <li><a href="${pageContext.request.contextPath}/beautytech/tech_06_1">에프앤디파트너스</a></li>
                        <li><a href="${pageContext.request.contextPath}/beautytech/tech_07_1">케이씨테크놀러지</a></li>
                        <li><a href="${pageContext.request.contextPath}/beautytech/tech_08_1">파이</a></li>
                        <li><a href="${pageContext.request.contextPath}/beautytech/tech_09_1">헬리오스</a></li>
                        <li><a class="last" href="${pageContext.request.contextPath}/beautytech/tech_10_1">인바디</a></li>
                    </ul>
                </div>

                <ul class="depth_03">
                    <li><a href="${pageContext.request.contextPath}/beautytech/tech_02_1">회사소개</a></li>
                    <li class="active"><a href="${pageContext.request.contextPath}/beautytech/tech_02_2">피부진단기 모델</a></li>
                </ul>
            </div>
        </div>
        <!-- //컨텐츠 상단 서브 메뉴 -->

        <!-- 타이틀 -->
        <div class="title title_bg_04">
            <div class="inner">
                <div class="txtbox">
                    <div class="tit_s ff_nm">My Skin Guide Platform</div>
                    <h3 class="ff_nm">초위스컴퍼니</h3>
                    <p>최첨단 피부진단기 기술력을 보유한 <br />
                        피부연구를 선도하는 회사들을 소개 해 드립니다. </p>
                </div>
            </div>
        </div>
        <!-- //타이틀 -->

        <!-- 컨텐츠 -->
        <div class="content chowis_model">
            <div class="inner">


                <h2 class="ff_nm bar">피부진단기 모델</h2>
                

                <div class="box1 mb_70">
                    <h4 class="tit mb_80"><span class="num">1</span>피부진단기기 모델명: SMART CARE KEEP</h4>

                    <h4 class="tit"><span class="num">2</span>피부진단기기 기능</h4>
                    <div class="linebox model mb_80">
                        <p class="mb_60">DermoPrime은 렌즈를 교체하는 방식으로 피부와 모발·두피를 모두 진단할 수 있는 전문가형 진단기기로, 분석 항목에 맞춰 설계된 특수 렌즈가 적용됩니다. 다양한 LED 조명을 포함한 500만 화소의 이미지 센서로 고화질 이미지 데이터를 제공하며, 크래들 내부에 UV 살균 기능이 내포되어 위생적인 사용을 보장합니다. AI 알고리즘 및 빅데이터를 기반으로 한 소프트웨어 ‘Dermobella Skin 2 evo’의 지원을 통해 8개의 피부 분석 정보를 나타냅니다.</p>
                        <p class="ta_c mb_70 img1"><img width="600" height="367" src="${pageContext.request.contextPath}/resources/static/images_old/tech/chowis_model_img01.jpg" alt="" /></p>
                        <p class="ta_c mb_70 img2"><img width="641" height="410" src="${pageContext.request.contextPath}/resources/static/images_old/tech/chowis_model_img02.jpg" alt="" /></p>
                    </div>

                    <h4 class="tit"><span class="num">3</span>피부진단기기 사용 방법</h4>
                    <ol class="ol_number type model mb_70">
                        <li><span class="num">1</span>진단기 전원 버튼을 On으로 누르면 LED 표시등이 ‘빨간색-초록색-파란색‘ 순으로 점등합니다.</li>
                        <li><span class="num">2</span>앱 스토어(App Store) 혹은 플레이 스토어(Play Store)에서 ‘DermoBella Skin 2 evo’를 찾아 설치한 뒤, 계정을 생성합니다.</li>
                        <li><span class="num">3</span>앱에서 지원하는 스마트 가이드에 따라 진단기 등록 및 진단을 시작합니다.</li>
                        <li><span class="num">4</span>분석을 위한 이미지 스캔은 앱 내의 촬영 버튼을 누르거나, 혹은 진단기의 촬영 버튼을 누르는 것으로도 가능합니다.</li>
                    </ol>

                    <h4 class="tit"><span class="num">4</span>피부진단기기 측정 항목</h4>
                    <ul class="bul_cir">
                        <li>수분, 유분, 모공, 피지, 주름, 색소침착, 탄력도, 민감도</li>
                    </ul>
                </div>


                <div class="box2 mb_70 box_tborder">
                    <h4 class="tit mb_80"><span class="num">1</span>피부진단기기 모델명: DermoSmart Viso</h4>

                    <h4 class="tit"><span class="num">2</span>피부진단기기 기능</h4>
                    <div class="linebox model mb_80">
                        <p class="mb_100">진단기와 크래들이 하나의 디자인 세트를 구성하는 피부 진단기기로, 저렴한 가격에 전문적인 성능 및 높은 공간 활용도를 자랑합니다.<br />
                            다양한 분석용 LED 조명으로 광학적 분석 정보 및 분석에 최적화된 고화질 이미지 데이터를 제공하며, AI 알고리즘 및 빅데이터를 기반으로 한 소프트웨어 ‘Dermobella Skin 2 evo’의 지원을 통해 9개 피부 항목의 분석 정보를 나타냅니다.</p>
                        <div class="chowis_img1 of_h mb_70">
                            <div class="fl">
                                <img width="390" height="253" src="${pageContext.request.contextPath}/resources/static/images_old/tech/chowis_model_img03.jpg" alt="" />
                                <img width="390" height="253" src="${pageContext.request.contextPath}/resources/static/images_old/tech/chowis_model_img04.jpg" alt="" />
                            </div>
                            <div class="fr">
                                <img width="411" height="600" src="${pageContext.request.contextPath}/resources/static/images_old/tech/chowis_model_img05.jpg" alt="" />
                            </div>
                        </div>
                    </div>

                    <h4 class="tit"><span class="num">3</span>피부진단기기 사용 방법</h4>
                    <ol class="ol_number type model mb_70">
                        <li><span class="num">1</span>진단기 전원 버튼을 길게 누르면 LED 표시등이 ‘파란색-초록색‘ 순으로 점등합니다.</li>
                        <li><span class="num">2</span>앱 스토어(App Store) 혹은 플레이 스토어(Play Store)에서 ‘DermoBella Skin 2 evo’를 찾아 설치한 뒤, 계정을 생성합니다.</li>
                        <li><span class="num">3</span>앱에서 지원하는 스마트 가이드에 따라 진단기 등록 및 진단을 시작합니다.</li>
                        <li><span class="num">4</span>분석을 위한 이미지 스캔은 앱 내의 촬영 버튼을 누르거나, 혹은 진단기의 촬영 버튼을 누르는 것으로도 가능합니다.</li>
                    </ol>

                    <h4 class="tit"><span class="num">4</span>피부진단기기 측정 항목</h4>
                    <ul class="bul_cir">
                        <li>수분, 유분, 주름, 모공, 피지, 색소침착, 각질, 민감도, 다크써클</li>
                    </ul>
                </div>


                <div class="box3 mb_50 box_tborder">
                    <h4 class="tit mb_80"><span class="num">1</span>피부진단기기 모델명: DermoPico Viso</h4>

                    <h4 class="tit"><span class="num">2</span>피부진단기기 기능</h4>
                    <div class="linebox model mb_80">
                        <p class="mb_80">가벼운 무게와 슬림한 외형 등 휴대성을 구현한 디자인으로, 핸드폰·태블릿 등 스마트 기기에 손쉽게 탈부착이 가능한 모바일형 진단기입니다. AI 알고리즘 및 빅데이터를 기반으로 한 소프트웨어 ‘DermoPico Skin’과 연동되며, 이를 통해 5개의 피부 항목 분석 정보를 제공합니다.</p>
                        <p class="ta_c mb_110 img1"><img width="520" height="415" src="${pageContext.request.contextPath}/resources/static/images_old/tech/chowis_model_img06.jpg" alt="" /></p>
                        <div class="chowis_img2 of_h">
                            <img class="fl" width="420" height="332" src="${pageContext.request.contextPath}/resources/static/images_old/tech/chowis_model_img07.jpg" alt="" />
                            <img class="fl" width="247" height="332" src="${pageContext.request.contextPath}/resources/static/images_old/tech/chowis_model_img08.jpg" alt="" />
                            <img class="fr" width="248" height="332" src="${pageContext.request.contextPath}/resources/static/images_old/tech/chowis_model_img09.jpg" alt="" />
                        </div>
                    </div>

                    <h4 class="tit"><span class="num">3</span>피부진단기기 사용 방법</h4>
                    <ol class="ol_number type model mb_70">
                        <li><span class="num">1</span>진단기 옆면의 전원 버튼을 3초간 눌러 렌즈 부분의 LED가 깜빡이는 것을 확인합니다.</li>
                        <li><span class="num">2</span>동봉된 부착 가이드의 접착 필름을 떼어 스마트폰의 렌즈에 맞춰 부착합니다.</li>
                        <li><span class="num">3</span>부착 가이드의 마그네틱에 진단기를 고정합니다.</li>
                        <li><span class="num">4</span>앱 스토어(App Store) 혹은 플레이 스토어(Play Store)에서 ‘DermoPico Skin’을 찾아 설치한 뒤, 스마트 가이드에 따라 진단기 등록 및 진단을 시작합니다.</li>
                    </ol>

                    <h4 class="tit"><span class="num">4</span>피부진단기기 측정 항목</h4>
                    <ul class="bul_cir">
                        <li>수분, 유분, 주름, 모공, 피지</li>
                    </ul>
                </div>
                

            </div>
        </div> 
        <!-- //컨텐츠 -->

    </section>
    <!-- //Container -->

    <jsp:include page="../common/footer.jsp"/>

</body>
</html>