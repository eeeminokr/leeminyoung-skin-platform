<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>SKIN QURATOR</title>
    <jsp:include page="../common/common.jsp"/>
</head>
<body class="page_cosmetic">
    <jsp:include page="../common/header.jsp"/>


    <!-- Container -->
    <section class="container">

         <!-- 컨텐츠 상단 서브 메뉴 -->
         <div class="lnb_wrap">
            <div class="inner">
                <div class="lnb">
                    <button type="button">맞춤형화장품 판매업</button>
                    <ul>
                        <li><a href="${pageContext.request.contextPath}/cosmetic/cosmetic_01_1">정의 및 History</a></li>
                        <li class="active"><a href="${pageContext.request.contextPath}/cosmetic/cosmetic_02_1">맞춤형화장품 판매업</a>
                            <ul>
                                <li><a href="${pageContext.request.contextPath}/cosmetic/cosmetic_02_1">맞춤형화장품 판매업</a></li>
                                <li class="active"><a href="${pageContext.request.contextPath}/cosmetic/cosmetic_02_2">맞춤형화장품 조제관리사</a></li>
                            </ul>
                        </li>
                        <li><a class="last" href="${pageContext.request.contextPath}/cosmetic/cosmetic_03_1">SkinQurator</a></li>
                    </ul>
                </div>

                <ul class="depth_03">
                    <li><a href="${pageContext.request.contextPath}/cosmetic/cosmetic_02_1">맞춤형화장품 판매업</a></li>
                    <li class="active"><a href="${pageContext.request.contextPath}/cosmetic/cosmetic_02_2">맞춤형화장품 조제관리사</a></li>
                </ul>
            </div>
        </div>
        <!-- //컨텐츠 상단 서브 메뉴 -->

   <!-- 타이틀 -->
   <div class="title title_bg_02">
    <div class="inner">
        <div class="txtbox">
            <div class="tit_s ff_nm">My Skin Guide Platform</div>
            <h3 class="ff_nm">맞춤형화장품 판매업</h3>
            <p>맞춤형화장품을 판매하는 영업은 최고의 <br />
                원료를 혼합하여 최상의 화장품을 제조 합니다.</p>
        </div>
    </div>
</div>
<!-- //타이틀 -->

<!-- 컨텐츠 -->
<div class="content prepare">
    <div class="inner">

        <h2 class="ff_nm bar">맞춤형화장품 조제관리사</h2>
        <div class="box1">
            <div class="of_h mb_140">
                <img class="fr" width="670" height="560" src="${pageContext.request.contextPath}/resources/static/images_old/cosmetic/prepare_img01.jpg" alt="" />
                <h3>맞춤형화장품 판매업의 개념</h3>
                <h4 class="tit"><span class="num">1</span>맞춤형화장품 조제관리사 정의</h4>
                <p class="mb_120">맞춤형화장품조제관리사는 맞춤형화장품판매장에서 <br />
                    혼합·소분 업무에 종사하는 자로서 맞춤형화장품조제관리사 <br />
                    국가자격시험에 합격한 자</p>

                <h4 class="tit"><span class="num">2</span>맞춤형화장품 조제관리사 정의</h4>
                <p class="bul_cir2">맞춤형화장품 조제관리사는 맞춤형화장품 판매장에서 <br />
                    혼합 또는 소분 업무에 종사하는 자 <br />
                    * 맞춤형화장품 조제관리사만이 맞춤형화장품 판매장에서 <br />
                    혼합 또는 소분 업무를 할 수 있습니다.</p>
                <p class="bul_cir2 mb_120">맞춤형화장품 조제관리사가 되려는 자는 식품의약품안전처장이 <br />
                    실시하는 자격시험에 합격하여야 합니다.</p>

                <h4 class="tit"><span class="num">3</span>맞춤형화장품 조제관리사 관리</h4>
                <p class="bul_cir2">맞춤형화장품판매업자는 판매장마다 맞춤형화장품조제관리사를 둘 것</p>
                <p class="bul_cir2">맞춤형화장품의 혼합·소분의 업무는 맞춤형화장품판매장에서 자격증을 가진 맞춤형화장품조제관리사만이 할 수 있습니다.</p>
            </div>
        </div>

        <div class="box2">
            <div class="of_h mb_150">
                <h3>맞춤형화장품 조제관리사 자격시험</h3>
                <div class="tit tit_type2"><span class="num">1</span>맞춤형화장품의 합, 소분 업무에 종사하고자 하는 사람은 식품의약품안전처에서 실시하는 화장품과 원료 등에 대한 <br />
                    맞춤형화장품 조제관리사 자격시험에 합격해야 합니다. <br />
                    맞춤형화장품 조제관리사 자격시험 운영기관 : 한국생산성본부</div>

                <div class="bgbox mb_130">
                    <p class="tit_line">국가전문자격 맞춤형화장품 조제관리사 자격시험 홈페이지</p>
                    <ol class="ol_number type">
                        <li><span class="num">1</span>시험안내, 원서접수, 합격자 확인, 학습안내 자료 제공</li>
                        <li><span class="num">2</span>홈페이지 주소 : <a class="fs_16" href="https://license.kpc.or.kr/nasec/qplus/main.do?qtype=qplus&qcertiCode=CCMM" target="_blank">https://license.kpc.or.kr/nasec/qplus/main.do?qtype=qplus&qcertiCode=CCMM</a></li>
                    </ol>  
                </div>

                <div class="tit tit_type2 mb_80"><span class="num">2</span>맞춤형화장품 조제관리사 자격시험은 매년 1회 이상 실시되며, 시험 시행계획 <br />
                    (시험일시, 시험장소, 시험과목, 응시방법 등)은 자격시험 실시 90일 전까지 식품의약품안전처 인터넷 홈페이지에 공고됩니다.</div>

                <div class="tit tit_type2 mb_50"><span class="num">3</span>자격시험은 필기시험으로 화장품, 원료 등에 대하여 총 4과목으로 진행됩니다. <br />
                    <ul class="bul_cir">
                        <li>제1과목 : 화장품 관련 법령 및 제도 등에 관한 사항</li>
                        <li>제2과목 : 화장품의 제조 및 품질관리, 원료의 사용기준 등에 관한 사항</li>
                        <li>제3과목 : 화장품의 유통 및 안전관리 등에 관한 사항</li>
                        <li>제4과목 : 맞춤형화장품의 특성·내용 및 관리 등에 관한 사항</li>
                    </ul>
                </div>

                <div class="bgbox">
                    <p class="tit_line">시험 정보 요약</p>
                    <ol class="ol_number type">
                        <li><span class="num">1</span>자격명 : 맞춤형화장품조제관리사</li>
                        <li><span class="num">2</span>관련 부처 : 식품의약품안전처</li>
                        <li><span class="num">3</span>시행 기관: 한국생산성본부</li>
                        <li><span class="num">4</span>시험명 : 맞춤형화장품 조제관리사 자격시험</li>
                        <li><span class="num">5</span>시행일정 : 연1회 이상 (별도 시행공고를 통해 시행 일정 공고)</li>
                        <li><span class="num">6</span>응시자격 : 응시 자격과 인원에 제한 없음</li>
                    </ol>
                </div>
            </div>
        </div>

        <div class="box3">
            <div class="of_h mb_150">
                <img class="fr" width="670" height="560" src="${pageContext.request.contextPath}/resources/static/images_old/cosmetic/prepare_img02.jpg" alt="" />
                <h3>맞춤형화장품 관련 교육</h3>
                <h4 class="tit"><span class="num">1</span>맞춤형화장품조제관리사 교육(보수교육)</h4>

                <p class="mb_50">맞춤형화장품판매장의 조제관리사로 지방식품의약품안전청에 <br />
                    신고한 맞춤형화장품조제관리사는 매년 4시간 이상, 8시간 <br />
                    이하의 집합교육 또는 온라인 교육을 식약처에서 정한 <br />
                    교육실시기관에서 이수해야 합니다.</p>
                
                <div class="bgbox mb_40">
                    <p class="tit_line">식품의약품안전처에서 지정한 교육실시기관</p>
                    <ol class="ol_number type">
                        <li><span class="num">1</span>(사)대한화장품협회</li>
                        <li><span class="num">2</span>(사)한국의약품수출입협회</li>
                        <li><span class="num">3</span>(재)대한화장품산업연구원</li>
                    </ol>
                </div>
                <p class="fs_16 mb_120">※ 맞춤형화장품 판매장에 종사하는 맞춤형화장품 조제관리사만 교육 받습니다.<br />
                    ※ 맞춤형화장품 조제관리사 시험에 합격하였으나 식품의약품안전처에 맞춤형화장품 조제관리사로 신고하지 않은 경우, 교육 이수 의무는 없습니다.</p>

                <h4 class="tit"><span class="num">2</span>맞춤형화장품 조제관리사 자격시험 준비를 위한 학습자료실 및 주요 교육 프로그램</h4>
                <p class="bul_cir2">한국생산성본부 제공 자격시험 학습 자료실: <a class="fs_16" href="https://license.kpc.or.kr/nasec/qplus/main.do?qtype=qplus&qcertiCode=CCMM" target="_blank">https://license.kpc.or.kr/nasec/qplus/main.do?qtype=qplus&qcertiCode=CCMM</a></p>
                <p class="bul_cir2">(사)대한화장품협회 온라인 교육 과정: <a class="fs_16" href="https://edu.helpcosmetic.or.kr/main/index.jsp" target="_blank">https://edu.helpcosmetic.or.kr/main/index.jsp</a></p>
                <p class="bul_cir2">대한맞춤형화장품 조제관리사협회 자료실: <a class="fs_16" href="http://www.kpcda.org/" target="_blank">http://www.kpcda.org/</a></p>
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