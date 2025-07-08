<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>SKIN QURATOR</title>
        <script type="text/javascript" src="${pageContext.request.contextPath}/resources/static_old//resources/static/js_old/lib/jquery-3.6.1.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/static_old//resources/static/js_old/lib/jquery-1.6.4.min.js"></script>

    <jsp:include page="../common/common.jsp"/>
</head>
<body class="page_community">
    <jsp:include page="../common/header.jsp"/>


<!-- Container -->
    <section class="container">

        <!-- 컨텐츠 상단 서브 메뉴 -->
        <div class="lnb_wrap">
            <div class="inner">
                <div class="lnb">
                    <button type="button">자주 묻는 질문</button>
                    <ul>
                        <li><a href="${pageContext.request.contextPath}/community/community_01">공지사항</a></li>
                        <li><a href="${pageContext.request.contextPath}/community/community_02_1">자료실</a>
                        <!-- <li><a href="${pageContext.request.contextPath}/community/community_03_1">맞춤형화장품 조제관리사 Network</a></li> -->
                        <li class="active"><a class="last" href="${pageContext.request.contextPath}/community/community_04">자주 묻는 질문</a></li>
                    </ul>
                </div>

                <ul class="depth_03">
                    <li></li>
                </ul>
            </div>
        </div>
        <!-- //컨텐츠 상단 서브 메뉴 -->

        <!-- 타이틀 -->
        <div class="title title_bg_06">
            <div class="inner">
                <div class="txtbox">
                    <div class="tit_s ff_nm">My Skin Guide Platform</div>
                    <h3 class="ff_nm">자주 묻는 질문</h3>
                    <p>개인의 취향에 최적화된 맞춤형화장품 플랫폼 <br />
                        연구개발에 최선을 다하겠습니다.</p>
                </div>
            </div>
        </div>
        <!-- //타이틀 -->

        <!-- 컨텐츠 -->
        <div class="content faq">

            <div class="inner">
                <ul class="faq_list">
                    <li>
                        <button type="button" class="faq_q"><span class="circle ff_nm">Q</span>데이터 분양 요금은 어떻게 되나요?</button>
                        <div class="faq_a">
                            <span class="circle ff_nm">A</span>
                            <p>1. 본 플랫폼에서 제공되는 데이터는 한국산업기술진흥원의 지원으로 국가혁신클러스터(R&D) <br />
                                (과제명: 빅데이터 활용 개인 맞춤형 화장품 기반기술 개발) 사업을 통하여 구축된 데이터로 구성 되어있습니다. <br />
                                2. 국책과제 사업비와 데이터 생성기관의 자부담 사업비가 투입되어 구축된 데이터이므로 유료 분양이 원칙입니다. <br />
                                3. 데이터 분양 목적 및 분양 규모에 따라 요금이 상이하므로 상담과 협의를 거쳐 요금이 결정됩니다.</p>
                        </div>
                    </li>
                    <li>
                        <button type="button" class="faq_q"><span class="circle ff_nm">Q</span>데이터 신청부터 승인까지 절차가 궁금합니다.</button>
                        <div class="faq_a">
                            <span class="circle ff_nm">A</span>
                            <p>1. 상단 메뉴 [데이터 분양] -> [데이터 분양 신청]을 클릭합니다. <br />
                                2. [신청절차] 탭에서 필요서식을 다운로드 합니다. (서식1,2,3) <br />
                                3. [분양신청] 탭으로 이동하여 개인정보 수집 및 이용 동의 및 제3자 제공에 대한 별도 동의를 체크합니다. <br />
                                4. 하단 [데이터 분양 신청서 작성] 버튼을 클릭합니다. <br />
                                5. 신청서식을 작성하여 [데이터 분양 신청하기] 버튼을 클릭합니다. <br />
                                6. 신청서류 검토 후 데이터 생성 기관에 동의 절차를 진행합니다. <br />
                                7. 제공 승인 후 개별 연락을 통하여 제공범위 협의 및 데이터 제공을 진행합니다. <br />
                                8. 데이터 활용 기관 종료 후 활용 결과보고서를 제출합니다. </p>
                        </div>
                    </li>
                    <li>
                        <button type="button" class="faq_q"><span class="circle ff_nm">Q</span>SkinQurator에서 제공되는 데이터 이용에 있어 저작권 정책이 궁금합니다.</button>
                        <div class="faq_a">
                            <span class="circle ff_nm">A</span>
                            <p>1. 본 플랫폼에서 제공되는 데이터는 한국산업기술진흥원의 지원으로 국가혁신클러스터(R&D) (과제명: 빅데이터 활용 개인 맞춤형 화장품 기반기술 개발) 사업을 통하여 구축된 데이터로 구성 되어있습니다. <br />
                                2. 데이터 이용자는 [데이터 분양] 절차에 고지된 동의 내용에 동의해야만 데이터 이용이 가능합니다. <br />
                                3. 데이터 이용정책은 [데이터 소개] 메뉴의 [데이터 이용정책] 내용을 참조 바랍니다. </p>
                        </div>
                    </li>
                    <li>
                        <button type="button" class="faq_q"><span class="circle ff_nm">Q</span>해외 연구소 등 데이터를 국외에서 사용할 수 있나요?</button>
                        <div class="faq_a">
                            <span class="circle ff_nm">A</span>
                            <p>1. SkinQurator 데이터 이용정책에 따라 데이터를 활용 하고자 하는 지역적 범위가 해외인 경우 검토과정에서 (재)제주테크노파크와 데이터 생성기관과의 별도 협의가 필요합니다. <br />
                                2. 추가 문의나 협의를 원하실 경우 [분양 상담] 메뉴에서 입력 바랍니다. </p>
                        </div>
                    </li>
                    <li>
                        <button type="button" class="faq_q"><span class="circle ff_nm">Q</span>데이터 신청 내역 이력, 데이터 분양 상담내역이 사라졌습니다.</button>
                        <div class="faq_a">
                            <span class="circle ff_nm">A</span>
                            <p>1. 확인을 위하여 [데이터 소개]에 기재된 데이터 분양 담당자 연락처로 개별 연락 부탁드립니다.</p>
                        </div>
                    </li>
                    <li>
                        <button type="button" class="faq_q"><span class="circle ff_nm">Q</span>피부진단·추천 솔루션을 이용하기 위한 절차가 궁금합니다.</button>
                        <div class="faq_a">
                            <span class="circle ff_nm">A</span>
                            <p>(신청 버튼이 비활성화 되어 있어 추후 업데이트 사항이라면 제외 또는 수정하여 업로드 부탁드립니다.)<br />
                                1. 상단 메뉴에서 [피부진단 추천 솔루션]->[이용절차 및 이용료] 탭을 클릭합니다. <br />
                                2. 이용 절차를 확인하신 후 [서비스 사용 신청하기]를 클릭하고 신청을 진행합니다. </p>
                        </div>
                    </li>
                    <li>
                        <button type="button" class="faq_q"><span class="circle ff_nm">Q</span>화장품 소비자 실증 서비스를 이용하기 위한 절차가 궁금합니다.</button>
                        <div class="faq_a">
                            <span class="circle ff_nm">A</span>
                            <p>1. 상단 메뉴에서 [화장품 소비자 실증]->[이용방법 및 절차] 탭을 클릭합니다. <br />
                                2. 이용 방법 및 절차를 확인 후 신청서식을 다운로드 합니다. <br />
                                3. 신청서식 작성 후 페이지에 기재된 담당자 이메일로 파일을 보냅니다. <br />
                                4. 신청서 검토 및 협의를 통하여 서비스를 이용하실 수 있습니다. </p>
                        </div>
                    </li>
                    <li>
                        <button type="button" class="faq_q"><span class="circle ff_nm">Q</span>자료실 특허DB 검색 메뉴에서 관련 특허의 상세내용을 확인하는 방법이 궁금합니다.</button>
                        <div class="faq_a">
                            <span class="circle ff_nm">A</span>
                            <p>1. 검색하신 특허를 클릭 후 나타나는 초록에서 [출원보기], [특허보기] 클릭을 통하여 상세한 내용을 확인하실 수 있습니다. <br />
                                2. 정보가 없는 경우에는 비공개 특허 자료이기 때문에 상세내용 확인은 불가능합니다. </p>
                        </div>
                    </li>
                </ul>
            </div>

        </div>
        <!-- //컨텐츠 -->

    </section>
    <!-- //Container -->

    <jsp:include page="../common/footer.jsp"/>
</body>
</html>