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
                    <button type="button">에프앤디파트너스</button>
                    <ul>
                        <li><a href="${pageContext.request.contextPath}/beautytech/tech_01_1">아람휴비스</a></li>
                        <li><a href="${pageContext.request.contextPath}/beautytech/tech_02_1">초위스컴퍼니</a></li>
                        <li><a href="${pageContext.request.contextPath}/beautytech/tech_03_1">룰루랩</a></li>
                        <li><a href="${pageContext.request.contextPath}/beautytech/tech_04_1">릴리커버</a></li>
                        <li><a href="${pageContext.request.contextPath}/beautytech/tech_05_1">링커버스</a></li>
                        <li class="active"><a href="${pageContext.request.contextPath}/beautytech/tech_06_1">에프앤디파트너스</a>
                            <ul>
                                <li class="active"><a href="${pageContext.request.contextPath}/beautytech/tech_06_1">회사소개</a></li>
                                <li><a href="${pageContext.request.contextPath}/beautytech/tech_06_2">피부진단기 모델</a></li>
                            </ul>
                        </li>
                        <li><a href="${pageContext.request.contextPath}/beautytech/tech_07_1">케이씨테크놀러지</a></li>
                        <li><a href="${pageContext.request.contextPath}/beautytech/tech_08_1">파이</a></li>
                        <li><a href="${pageContext.request.contextPath}/beautytech/tech_09_1">헬리오스</a></li>
                        <li><a class="last" href="${pageContext.request.contextPath}/beautytech/tech_10_1">인바디</a></li>
                    </ul>
                </div>

                <ul class="depth_03">
                    <li class="active"><a href="${pageContext.request.contextPath}/beautytech/tech_06_1">회사소개</a></li>
                    <li><a href="${pageContext.request.contextPath}/beautytech/tech_06_2">피부진단기 모델</a></li>
                </ul>
            </div>
        </div>
        <!-- //컨텐츠 상단 서브 메뉴 -->

        <!-- 타이틀 -->
        <div class="title title_bg_04">
            <div class="inner">
                <div class="txtbox">
                    <div class="tit_s ff_nm">My Skin Guide Platform</div>
                    <h3 class="ff_nm">에프앤디파트너스</h3>
                    <p>최첨단 피부진단기 기술력을 보유한 <br />
                        피부연구를 선도하는 회사들을 소개 해 드립니다. </p>
                </div>
            </div>
        </div>
        <!-- //타이틀 -->

        <!-- 컨텐츠 -->
        <div class="content fnd">
            <div class="inner">
                <h2 class="ff_nm bar">회사소개</h2>

                <div class="box1 mb_150">
                    <h3><span class="company_name">회사명</span>주식회사 에프앤디파트너스</h3>

                    <div class="company_info">
                        <span class="imgbox ta_c"><img width="417" height="92" src="${pageContext.request.contextPath}/resources/static/images_old/tech/fnd_logo.png" alt="에프앤디파트너스 로고" /></span>

                        <p class="txtlink ta_c"><a href="http://www.fndpartners.info/" target="_blank" rel="noopener noreferrer">http://www.fndpartners.info/</a></p>

                        <p class="txtinfo ta_c">우리의 기술이 변화시킬 의료 환경의 미래를 생각합니다.</p>

                        <p class="mb_30">의료진이 최신의 스마트 시스템으로 본연의 업무에 더욱 집중하고, 개선된 의료 시스템의 수혜가 최종으로 환자에게 돌아가는 순환은 에프앤디파트너스 기술 개발이 꿈꾸는 이상이자 가장 큰 원동력입니다.</p>
                        <p class="mb_50">가정에서 가족의 건강을 책임지고 병원에서 환자의 건강을 책임지는 모두가 에프앤디파트너스의 의료&헬스 솔루션 사용자 입니다. <br />
                            독보적인 피부 의료 영상 통합 관리 시스템을 필두로 개인 건강 관리에도 최적화 된 다양한 제품과 솔루션이 준비 되어 있습니다. <br />
                            건강한 사회를 만드는 키워드, 에프앤디파트너스가 되겠습니다.</p>

                        <div class="company_tech of_h">
                            <div class="company_tech_tit">기술현황</div>
                            <div class="fl">
                                <span class="ct_tit">2016</span>
                                <ul class="bul_cir_s mb_30">
                                    <li>㈜에프앤디파트너스 설립</li>
                                    <li>연구개발전담부서 인정</li>
                                    <li>산학공동기술개발과제 선정</li>
                                </ul>
                                <span class="ct_tit">2017</span>
                                <ul class="bul_cir_s mb_30">
                                    <li>벤처기업 인증</li>
                                    <li>TIPS프로그램 선정 및 투자유치</li>
                                </ul>
                                <span class="ct_tit">2018</span>
                                <ul class="bul_cir_s mb_30">
                                    <li>K-Global 300 기업 선정</li>
                                    <li>세종 창업 스타기업 선정</li>
                                    <li>세종 지역특화산업 육성 과제 선정</li>
                                </ul>
                                <span class="ct_tit">2019</span>
                                <ul class="bul_cir_s mb_30">
                                    <li>기업부설연구소 지정</li>
                                    <li>병역지정업체 신규 선정</li>
                                    <li>지식재산경영기업 인증결</li>
                                    <li>창업성장 기술개발사업 과제 선정</li>
                                </ul>
                            </div>
                            <div class="fr">
                                <span class="ct_tit">2020</span>
                                <ul class="bul_cir_s mb_30">
                                    <li>ISO 13485 인증 취득</li>
                                    <li>㈜에프앤디파트너스 사옥 이전</li>
                                    <li>기술혁신형 중소기업(Inno-Biz) 인증</li>
                                    <li>우수상표·디자인권전 수상</li>
                                </ul>
                                <span class="ct_tit">2021</span>
                                <ul class="bul_cir_s mb_30">
                                    <li>MOU체결 (호주/카타르)</li>
                                    <li>혁신기업 국가대표 1000 선정</li>
                                    <li>우수벤처기업 선정</li>
                                    <li>CES 2022 혁신상 수상</li>
                                    <li>FDA 인증</li>
                                </ul>
                                <span class="ct_tit">2022</span>
                                <ul class="bul_cir_s mb_30">
                                    <li>TGA 인증</li>
                                    <li>조달청 혁신제품 지정</li>
                                    <li>CES 2023 혁신상 수상</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="box2">
                    <h3>에프앤디파트너스 기술</h3>

                    <div class="linebox">
                        <div class="awards">
                            <p class="txt1">CES2023</p>
                            <p class="txt2">에프앤디파트너스가 2년 연속 <br /><span class="fc_yellow">CES혁신상을 수상</span>하였습니다.</p>
                            <p class="txt3">피부임상사진을 촬영 후 DermPACS로 자동으로 무선전송하는 <br />자동임상사진무선전송시스템으로 2023 CES 혁신상을 수상하였습니다.</p>
                        </div>
                        <div class="techinfo of_h">
                            <img class="fl" width="480" height="360" src="${pageContext.request.contextPath}/resources/static/images_old/tech/fnd_img01.jpg" alt="MEDISCOPE C 사진" />
                            <div class="fr">
                                <h4>MEDISCOPE C</h4>
                                <p class="txt1">Software & Mobile Apps</p>
                                <p class="txt2">MEDISCOPE C는 성형외과, 정형외과, 피부과, 재활의학과 등 일반외과 분야에서 가장 혁신적인 임상 영상 관리 시스템입니다. <br />
                                    사용자는 MEDISCOPE C를 카메라에 장착하기만 하면 모든 영상 데이터가 무선으로 전송되고 환자별 질병별로 서버에서 자동으로 안전하게 분류됩니다. <br />
                                    의료진은 임상 사진 관리에 드는 시간과 노력을 최대 96%까지 절약할 수 있어 의사와 환자에게 양질의 의료 환경을 제공할 수 있습니다.</p>
                            </div>
                        </div>
                    </div>

                    <div class="linebox">
                        <div class="awards">
                            <p class="txt1">CES2022</p>
                            <p class="txt2 txt_s">100여개의 특허를 기반한 혁신기업인에프앤디파트너스가 <br />
                                피부 의료영상을 촬영하고 관리하는 의료영상정보시스템 <br />
                                <span class="fc_yellow">DermPACS로 2022 CES 혁신상</span>을 수상했습니다.</p>
                            <p class="txt3">CES혁신상은 IT, 가전분야에서 최고의 권위를 자랑하는 상으로, 1967년 뉴욕에서 처음 개최된 이후 <br />
                                성장을 거듭하며, 올해는 1,800여건의 혁신상 신청기업이 몰리는 등 그 경쟁이 더욱 치열하였습니다.</p>
                        </div>
                        <div class="techinfo of_h">
                            <img class="fl" width="480" height="360" src="${pageContext.request.contextPath}/resources/static/images_old/tech/fnd_img02.jpg" alt="MEDISCOPE D 사진" />
                            <div class="fr">
                                <h4>MEDISCOPE D</h4>
                                <p class="txt1">Software & Mobile Apps</p>
                                <p class="txt2">DermPACS with MEDISCOPE is the first AI-based skin image management system developed for dermatological medical staff.  <br />
                                    In addition to the main task of caring for patients, dermatological staff must capture, store, and document images themselves and this cost them a lot of time and energy. <br />
                                    Skin disease treatment has evolved from visual to dermoscopic examination, but distorted images from current devices can lead to problems of diagnostic reliability. <br />
                                    The distorted images are also difficult to standardize, and this hinders work efficiency. <br />
                                    DermPACS system will increase the work efficiency and reduce unreasonable work steps for dermatologists.</p>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="box3 ta_c">
                    <h3 class="mb_40">보유인증현황</h3>
                    <ul class="bul_cir_gold mb_40">
                        <li>특허 : 등록 : 59건</li>
                        <li>지식재산권 : 상표 : 10건, 디자인 : 7건 </li>
                    </ul>
                    <p class="mb_40"><img width="815" height="64" src="${pageContext.request.contextPath}/resources/static/images_old/tech/fnd_img03.jpg" alt="CES2022, CES2023, FDA, KFDA, TGA, CE, ISO13485 로고" /></p>
                    <p><img width="338" height="20" src="${pageContext.request.contextPath}/resources/static/images_old/tech/fnd_img04.jpg" alt="KFDA / FDA / CE / ISO13485 2023 CES 혁신상수상" /></p>
                </div>

                
            </div>
        </div>
        <!-- //컨텐츠 -->

    </section>
    <!-- //Container -->

    <jsp:include page="../common/footer.jsp"/>
</body>
</html>