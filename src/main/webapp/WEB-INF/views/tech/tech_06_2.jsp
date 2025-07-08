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
                                <li><a href="${pageContext.request.contextPath}/beautytech/tech_06_1">회사소개</a></li>
                                <li class="active"><a href="${pageContext.request.contextPath}/beautytech/tech_06_2">피부진단기 모델</a></li>
                            </ul>
                        </li>
                        <li><a href="${pageContext.request.contextPath}/beautytech/tech_07_1">케이씨테크놀러지</a></li>
                        <li><a href="${pageContext.request.contextPath}/beautytech/tech_08_1">파이</a></li>
                        <li><a href="${pageContext.request.contextPath}/beautytech/tech_09_1">헬리오스</a></li>
                        <li><a class="last" href="${pageContext.request.contextPath}/beautytech/tech_10_1">인바디</a></li>
                    </ul>
                </div>

                <ul class="depth_03">
                    <li><a href="${pageContext.request.contextPath}/beautytech/tech_06_1">회사소개</a></li>
                    <li class="active"><a href="${pageContext.request.contextPath}/beautytech/tech_06_2">피부진단기 모델</a></li>
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
        <div class="content fnd_model">
            <div class="inner">


                <h2 class="ff_nm bar">피부진단기 모델</h2>


                <div class="box1 linebox mb_130">
                    <span class="txt_bg">피부진단기기 개요</span>
                    <img class="img" width="702" height="470" src="${pageContext.request.contextPath}/resources/static/images_old/tech/fnd_model_img01.jpg" alt="제품사용 사진" />
                    <p>에프앤디파트너스는 피부과 및 성형외과에서 사용되는 의료용 더모스코피인 MEDISCOPE D, 임상촬영을 위한 촬영용기기인 MEDISCOPE C와 더불어 의료영상데이터와 환자정보를 안전하고 효율적이게 관리하는 DermPACS시스템을 제공하는 업체입니다.</p>
                    <p>MEDISCOPE D의 경우 광학계를 직접 설계 하여 왜곡을 최소화 하여 정량적인 이미지를 확인 할 수 있으며 환부의 위치 정보를 제공하여 보다 효율적인 데이터 관리가 가능합니다.</p>
                    <p>편광, 비편광으로 자동 촬영된 의료영상은 무선으로 DermPACS로 전송되어 환자별 관리 및 분류가 가능한 시스템입니다.</p>
                    <p>MEDISCOPE C는 병원에서 사용하시는 DSLR에 간단히 부착하여 무선으로 의료영상을 PACS로 전송하는 시스템으로 무선 전송의 편리함으로 일일히 사진을 정리 하고 분류 하는 작업 없이 환자별 자동분류가 가능한 시스템입니다.</p>

                    <div class="overview1">
                        <p><span class="point">MEDISCOPE를 통해 촬영된 이미지는 자동으로 DermPACS 시스템에 업로드 및 분류되어 불필요한 업무 리소스를 절감</span>합니다.</p>
                        <p>DermEnginedm의 독자적인 알고리즘을 통해 질환 및 부위별로 레이블링 저장됨으로서 기존 주간 12시간 가량 소요되던 <br />
                            피부의료영상의 분류를 1시간 이내에 처리할 수 있습니다.</p>
                        <p>또한 피부질환을 판독보조하는 인공지능학습모듈(Derm AI)에 쉽게 연동가능합니다.</p>
                        <dl class="dl_before">
                            <dt><span class="blind">Before</span>12시간/주</dt>
                            <dd>환자확인</dd>
                            <dd>환부확인</dd>
                            <dd>영상이전</dd>
                            <dd>영상분류</dd>
                            <dd>시스템등록</dd>
                            <dd>수가청구</dd>
                        </dl>
                        <dl class="dl_after">
                            <dt><span class="blind">After</span>1시간 이내/주</dt>
                            <dd>환자확인</dd>
                            <dd>환부확인</dd>
                            <dd>수가청구</dd>
                        </dl>
                    </div>

                    <div class="overview2">
                        <ul class="item1">
                            <li class="circle"><img width="342" height="342" src="${pageContext.request.contextPath}/resources/static/images_old/tech/fnd_model_img03_1.png" alt="" /><span>MEDISCOPE D</span></li>
                            <li class="circle"><img width="342" height="342" src="${pageContext.request.contextPath}/resources/static/images_old/tech/fnd_model_img03_2.png" alt="" /><span>MEDISCOPE C</span></li>
                        </ul>
                        <div class="item2"><img width="328" height="215" src="${pageContext.request.contextPath}/resources/static/images_old/tech/fnd_model_img03.png" alt="DermPACS" /></div>
                        <div class="item3 circle"><img width="342" height="342" src="${pageContext.request.contextPath}/resources/static/images_old/tech/fnd_model_img03_3.png" alt="" /><span>EMR/CRM</span></div>
                    </div>
                </div>
                

                <div class="box2 mb_110">
                    <h4 class="tit mb_80"><span class="num">1</span>피부진단기기 모델명: MEDISOCPE D</h4>

                    <h4 class="tit"><span class="num">2</span>피부진단기기 기능</h4>
                    <div class="linebox mb_110">
                        <p class="ta_c mb_70 img1"><img width="524" height="331" src="${pageContext.request.contextPath}/resources/static/images_old/tech/fnd_model_img04.jpg" alt="MEDISOCPE D 사진" /></p>
                        <p class="ta_c mb_40 img2"><img width="1000" height="1644" src="${pageContext.request.contextPath}/resources/static/images_old/tech/fnd_model_img05.jpg" alt="MEDISOCPE D 사용예시 사진1" /></p>
                    </div>

                    <h4 class="tit"><span class="num">3</span>피부진단기기 특장점</h4>
                    <div class="linebox mb_110">
                        <ul class="features">
                            <li>
                                <span class="txt">DISTORTION FREE</span>
                                <img width="282" height="254" src="${pageContext.request.contextPath}/resources/static/images_old/tech/fnd_model_img06.jpg" alt="MEDISCOPE와 경쟁사 제품 비교 사진" />
                                <p>(국내특허)<br />
                                    왜곡이 보상된 피부 이미지를 <br />
                                    획득하는 피부 진단 확대경 <br />
                                    (미국,호주특허)<br />
                                    Magnifying Glass for skin diagnosis <br />
                                    capable of acquiring <br />
                                    distortion free compensated skin image</p>
                            </li>
                            <li>
                                <span class="txt">PROVIDING 3D BODY MAP</span>
                                <img width="282" height="254" src="${pageContext.request.contextPath}/resources/static/images_old/tech/fnd_model_img07.jpg" alt="MEDISOCPE D 사진" />
                                <p>확대한 영상은 질환의 위치에 대한 <br />
                                    신속한 파악의 어렵기 때문에 질환의 <br />
                                    위치를 3D BODY MAP을 이용하여 분류, <br />
                                    표면해부학 (Surface Anatomy)기준의 <br />
                                    분류 코드를 사용하여, 타 진료과의 협진 용이</p>
                            </li>
                            <li>
                                <span class="txt">Polarized / Non-Polarized <br />
                                    Automatic Shooting System</span>
                                <img width="282" height="254" src="${pageContext.request.contextPath}/resources/static/images_old/tech/fnd_model_img08.jpg" alt="제품 사진" />
                                <p>자동으로 편광/ 비편광 두장의 이미지를 <br />
                                    획득하며 획득된 이미지를 무선으로 <br />
                                    DermPACS에 전송하는 시스템</p>
                            </li>
                        </ul>
                    </div>

                    <h4 class="tit"><span class="num">4</span>피부진단기기 해외 레퍼런스</h4>
                    <div class="linebox reference of_h">
                        <div class="fl">
                            <span class="txt">해외 레퍼런스 병원 확보</span>
                            <img width="504" height="450" src="${pageContext.request.contextPath}/resources/static/images_old/tech/fnd_model_img09.jpg" alt="" />
                            <ul class="bul_cir">
                                <li>호주 QUEENSLAND 대학과 협약</li>
                                <li>QUEENSLAND대학병원 피부암 센터와 협업 중</li>
                            </ul>
                        </div>
                        <div class="fr">
                            <span class="txt">피부의료영상 DICOM표준 선점</span>
                            <img width="525" height="330" src="${pageContext.request.contextPath}/resources/static/images_old/tech/fnd_model_img10.jpg" alt="" />
                            <ul class="bul_cir">
                                <li>2020년 12월 피부의료영상 표준포맷 재선정</li>
                                <li>DICOM표준 피부 분과 좌장 Prof.Liam Caffery</li>
                                <li>피부의료영상 DICOM표준포맷 검증(퀸즐랜드대학병원)</li>
                                <li>QUEENSLAND대학병원 Test 진행중</li>
                            </ul>
                        </div>
                    </div>
                    
                </div>


                <div class="box3 mb_70 box_tborder">
                    <h4 class="tit mb_80"><span class="num">1</span>피부진단기기 모델명: MEDISOCPE C</h4>

                    <h4 class="tit"><span class="num">2</span>피부진단기기 기능</h4>
                    <div class="linebox process mb_110">
                        <h5 class="txt1">DermPACS PROCESS</h5>
                        <span class="txt2 mb_60">(EMR, CRM, 전자차트 연동)</span>
                        <img width="1025" height="234" src="${pageContext.request.contextPath}/resources/static/images_old/tech/fnd_model_img11.jpg" alt="DermPACS PROCESS 이미지화" />
                        <ul>
                            <li>
                                <span class="txt">다양한 카메라 연동</span>
                                <p>기존에 사용중인 DSLR 및 <br />
                                    Mirrorless 카메라와 연결하여 동작가능</p>
                            </li>
                            <li>
                                <span class="txt">의료영상 자동업로딩</span>
                                <p>촬영과 동시에 MEDISCOPE C <br />
                                    APP을 통하여 DERMPACS 전송</p>
                                <p>DICOM 표준을 적용해 연동되며 <br />
                                    피부영상 이미지 전용 Viewer를 <br />
                                    통해 피부질환 확인이 가능</p>
                            </li>
                            <li>   
                                <span class="txt">임상사진 자동 분류</span>
                                <p>환자 이름별, 날짜별, 질환별 <br />
                                    임상사진이 자동으로 분류</p>
                            </li>
                        </ul>
                    </div>

                    <h4 class="tit"><span class="num">3</span>피부진단기기 사용 방법</h4>
                    <div class="video ta_c">
                        <iframe width="992" height="558" src="https://www.youtube.com/embed/zlw1YHK7em4" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
                    </div>
                </div>


            </div>
        </div>
        <!-- //컨텐츠 -->

    </section>
    <!-- //Container -->
    <jsp:include page="../common/footer.jsp"/>
</body>
</html>