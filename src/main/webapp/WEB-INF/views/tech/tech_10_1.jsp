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
                    <button type="button">인바디</button>
                    <ul>
                        <li><a href="${pageContext.request.contextPath}/beautytech/tech_01_1">아람휴비스</a></li>
                        <li><a href="${pageContext.request.contextPath}/beautytech/tech_02_1">초위스컴퍼니</a></li>
                        <li><a href="${pageContext.request.contextPath}/beautytech/tech_03_1">룰루랩</a></li>
                        <li><a href="${pageContext.request.contextPath}/beautytech/tech_04_1">릴리커버</a></li>
                        <li><a href="${pageContext.request.contextPath}/beautytech/tech_05_1">링커버스</a></li>
                        <li><a href="${pageContext.request.contextPath}/beautytech/tech_06_1">에프앤디파트너스</a></li>
                        <li><a href="${pageContext.request.contextPath}/beautytech/tech_07_1">케이씨테크놀러지</a></li>
                        <li><a href="${pageContext.request.contextPath}/beautytech/tech_08_1">파이</a></li>
                        <li><a href="${pageContext.request.contextPath}/beautytech/tech_09_1">헬리오스</a></li>
                        <li class="active"><a href="${pageContext.request.contextPath}/beautytech/tech_10_1">인바디</a>
                            <ul>
                                <li class="active"><a href="${pageContext.request.contextPath}/beautytech/tech_10_1">회사소개</a></li>
                                <li><a class="last" href="${pageContext.request.contextPath}/beautytech/tech_10_2">피부진단기 모델</a></li>
                            </ul>
                        </li>
                    </ul>
                </div>

                <ul class="depth_03">
                    <li class="active"><a href="${pageContext.request.contextPath}/beautytech/tech_10_1">회사소개</a></li>
                    <li><a href="${pageContext.request.contextPath}/beautytech/tech_10_2">피부진단기 모델</a></li>
                </ul>
            </div>
        </div>
        <!-- //컨텐츠 상단 서브 메뉴 -->

        <!-- 타이틀 -->
        <div class="title title_bg_04">
            <div class="inner">
                <div class="txtbox">
                    <div class="tit_s ff_nm">My Skin Guide Platform</div>
                    <h3 class="ff_nm">인바디</h3>
                    <p>최첨단 피부진단기 기술력을 보유한 <br />
                        피부연구를 선도하는 회사들을 소개 해 드립니다. </p>
                </div>
            </div>
        </div>
        <!-- //타이틀 -->

        <!-- 컨텐츠 -->
        <div class="content inbody">
            <div class="inner">
                <h2 class="ff_nm bar">회사소개</h2>

                <div class="box1 mb_150">
                    <h3><span class="company_name">회사명</span>㈜인바디</h3>

                    <div class="company_info">
                        <span class="imgbox ta_c"><img width="260" height="80" src="${pageContext.request.contextPath}/resources/static/images_old/tech/inbody_logo.png" alt="InBody 로고" /></span>

                        <p class="txtlink ta_c"><a href="" target="_blank" rel="noopener noreferrer">https://inbody.co.kr</a></p>

                        <p class="txtinfo ta_c">(주)인바디는 "체성분검사=인바디검사"로 불리며, <br />
                        체성분분석의 표준으로 신뢰 받는 글로벌 헬스케어 기업입니다.</p>

                        <p class="mb_30">㈜인바디를 표현하는 수식어는 너무나 많습니다. 이들의 공통점은 처음과 최고를 의미한다는 것입니다.<br />
                            1996년, ㈜인바디는 체성분을 정확하게 측정하는 기술이 없던 시대에 정밀도와 재현도가 보장되는 체성분분석 기술로 처음 인바디를 선보였고, 산업과 사람들의 인식을 변화시키며 가장 실용적이고 정확한 체성분분석 브랜드로 자리매김 했습니다.</p>
                            
                        <p class="mb_30">인바디는 메디컬, 영양, 피트니스, 재활 등 각 전문 분야의 기능적 필수품에서 전문성을 상징하는 제품으로 전환을 매끄럽게 이어 갔습니다. 이미 산업은 인바디와 인바디가 아닌 것으로 나뉘었고 나아가 시장을 확장하여 집에서, 손목에서, 언제 어디서나 인바디 결과를 관리할 수 있는 건강한 생활의 필수품으로 자리잡았습니다. 인바디는 기술력에 대한 기본기를 견고하게 다지는 동시에 체성분분석으로 활용 가능한 무궁무진한 시장에 끊임없이 도전하며 산업에 새로운 지표를 제시 하고 있습니다.</p>
                            
                        <p>지속적인 성장을 이어가는 ㈜인바디의 원동력은 한 가지입니다. 세계 최고의 기계를 만들고, 새로운 기준을 표준으로 만들고, 최고의 이익률을 내고, 품질만족도 100%를 달성해내는 임직원. ㈜인바디의 임직원들은 각각의 분야에서 전문가가 되어 더 깊게 몰입하고 스스로 해낸 일이 우리의 성장으로 이어진다는 자부심을 갖고 있습니다.</p>
                    </div>
                </div>

                <div class="box2 mb_50">
                    <h3>인바디 기술</h3>

                    <ul class="faq_list">
                        <li class="open">
                            <button type="button" class="faq_q">세계 특허로 인정받은 부위별 직접 임피던스 측정법(DSM-BIA)</button>
                            <div class="faq_a" style="display: block;">
                                <img class="fl" src="${pageContext.request.contextPath}/resources/static/images_old/tech/inbody_img01.jpg" alt="" />
                                <p class="fr">인체는 부위별로 서로 다른 길이와 단면적을 가지고 있습니다. 팔과 다리는 면적이 좁고 길이가 길어 임피던스 값이 높지만 근육량은 적습니다. 
                                    반면 몸통은 상대적으로 면적이 넓어 임피던스 값이 낮고 근육량이 많습니다. 따라서 몸통에서의 작은 임피던스값의 변화는 근육량에 큰 영향을 미치고 반드시 따로 측정해야 정확한 총 근육량을 알 수 있습니다.<br />
                                    인바디는 팔, 다리, 몸통을 따로 측정하여 그 어떤 장비보다 정확한 검사 결과를 제공합니다.</p>
                            </div>
                        </li>
                        <li>
                            <button type="button" class="faq_q">높은 재현도를 보장하는 8점 터치식 전극법</button>
                            <div class="faq_a">
                                <img class="fl" src="${pageContext.request.contextPath}/resources/static/images_old/tech/inbody_img02.jpg" alt="" />
                                <p class="fr">인바디는 인체의 구조적 특성을 이용하여 좌우 손과 발에 각각 전류와 전압전극을 2개씩 배치, 총 8개의 전극으로 구성되어 있습니다. 이러한 전극 설계 기술로 측정 자세가 바뀌거나 여러 번 측정해도 항상 동일한 지점에서 측정이 시작되어 재현성이 매우 높습니다. 또한 전류와 전압을 분리한 인바디의 전극 방식은 피부로부터 발생하는 접촉저항의 영향을 최소화 해 정확한 측정을 가능하게 합니다.</p>
                            </div>
                        </li>
                        <li>
                            <button type="button" class="faq_q">정밀한 측정을 가능하게 하는 다주파수 측정</button>
                            <div class="faq_a">
                                <img class="fl" src="${pageContext.request.contextPath}/resources/static/images_old/tech/inbody_img03.jpg" alt="" />
                                <p class="fr">저주파수는 세포막을 통과하지 못해 주로 세포외수분을 반영하고 고주파수는 세포막을 통과하여 세포내수분까지 반영합니다. 인바디는 주파수에 따라 세포막을 통과할 수 있는 정도가 다르다는 점을 활용하여 저주파수부터 고주파수까지 다양하게 사용하고 세포내외수분을 따로 측정합니다. 이를 통해서 총체수분을 정확하게 측정하고 나아가 수분 균형까지 확인할 수 있습니다.<br />
                                    또한, 세계 최초 3MHz 고주파수 측정 기술을 통해 환자, 운동 선수 등 에서의 체수분 결과 정확도를 높였고 측정 자세나 외부 환경에 따른 임피던스 측정 오차를 줄여 체성분 분석에 중요한 50~500kHz 임피던스를 더욱 안정적으로 측정할 수 있습니다(등록특허발명 "제10-1870612호").</p>
                            </div>
                        </li>
                        <li>
                            <button type="button" class="faq_q">임상에서의 활용을 높여주는 다주파수 리액턴스 측정</button>
                            <div class="faq_a">
                                <img class="fl" src="${pageContext.request.contextPath}/resources/static/images_old/tech/inbody_img04.jpg" alt="" />
                                <p class="fr">리액턴스는 세포막에서 발생하는 저항성분으로 세포 또는 세포막의 건강도와 관련이 있어 체세포량과 세포의 구조적 완성도, 생리적 기능의 수준을 나타냅니다. 인바디는 기존의 50kHz 이외 5kHz, 250kHz 리액턴스 부위별 정밀 측정 기술 향상을 통해 다양한 지표를 제공함으로써 질병의 도래를 예측하거나 영양상태 평가, 운동 효과 반영 등 다양한 임상 분야에서 활용되고 있습니다.</p>
                            </div>
                        </li>
                        <li>
                            <button type="button" class="faq_q">특이체형까지 잡아내는 경험변수 배제</button>
                            <div class="faq_a">
                                <img class="fl" src="${pageContext.request.contextPath}/resources/static/images_old/tech/inbody_img05.jpg" alt="" />
                                <p class="fr">인바디는 성별, 연령과 같은 경험적으로 알려진 정보를 사용하지 않습니다. 과거에는 정확도를 높이기 위해 경험적 정보를 이용하여 결과값을 보정하였지만 측정 집단에 따라 정확도가 떨어지는 문제가 발생했습니다. 인바디는 이러한 한계를 기술력으로 극복한 최초의 장비로 경험변수 없이도 체성분을 정확하게 분석합니다.</p>
                            </div>
                        </li>
                        <li>
                            <button type="button" class="faq_q">빅데이터 기반의 연령별 체성분 평가</button>
                            <div class="faq_a">
                                <img class="fl" src="${pageContext.request.contextPath}/resources/static/images_old/tech/inbody_img06.jpg" alt="" />
                                <p class="fr">인바디는 전 세계적으로 축적한 인바디 데이터를 토대로 체성분 각 항목에 대한 연령별 그래프를 제공합니다. 측정자의 측정값에 대한 상대적인 위치를 젊은 연령대(T-score) 그리고 같은 연령대(Z-score)의 측정값과 비교하여 표준범위에 대한 평가 이외 종합적인 분석이 가능합니다.</p>
                            </div>
                        </li>
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