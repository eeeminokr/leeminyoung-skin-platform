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
<body class="page_performance">
    <jsp:include page="../common/header.jsp"/>


    <!-- Container -->
    <section class="container">

        <!-- 컨텐츠 상단 서브 메뉴 -->
        <div class="lnb_wrap">
            <div class="inner">
                <div class="lnb">
                    <button type="button">융복합 기술개발 성과</button>
                    <ul>
                        <li class="active"><a href="${pageContext.request.contextPath}/performance/performance_03_1">융복합 기술개발 성과</a>
                            <ul>
                                <li class="active"><a href="${pageContext.request.contextPath}/performance/performance_03_1">맞춤형화장품 융복합 기술지원 사업</a></li>
                                <li><a href="${pageContext.request.contextPath}/performance/performance_03_2">수혜기업 성과</a></li>
                            </ul>
                        </li>
                        <li><a class="last" href="${pageContext.request.contextPath}/performance/performance_04_1">피부정보 데이터 소개</a>
                    </ul>
                </div>

                <ul class="depth_03">
                    <li class="active"><a href="${pageContext.request.contextPath}/performance/performance_03_1">맞춤형화장품 융복합 기술지원 사업</a></li>
                    <li><a href="${pageContext.request.contextPath}/performance/performance_03_2">수혜기업 성과</a></li>
                </ul>
            </div>
        </div>
        <!-- //컨텐츠 상단 서브 메뉴 -->

        <!-- 타이틀 -->
        <div class="title title_bg_01">
            <div class="inner">
                <div class="txtbox">
                    <div class="tit_s ff_nm">My Skin Guide Platform</div>
                    <h3 class="ff_nm">융복합 기술개발 성과</h3>
                    <p>데이터 활용 맞춤형화장품 기반 조성으로 <br />
                        K-뷰티산업을 선도 하겠습니다.</p>
                </div>
            </div>
        </div>
        <!-- //타이틀 -->

        <!-- 컨텐츠 -->
        <div class="content tech">
            <div class="inner">
                <h2 class="ff_nm bar">맞춤형화장품 융복합 기술지원 사업</h2>

                <div class="box1">
                   <div class="tit_img">
                        <img class="bg" src="${pageContext.request.contextPath}/resources/static/images_old/performance/tech_img01.jpg" alt="" />
                        <h3><span>맞춤형화장품 시제품 제작 지원</span></h3>
                   </div>

                   <h4 class="tit">
                        <span class="num">1</span>지원대상
                        <span class="txt">국내 화장품 기업 및 전후방 연관기업</span>
                    </h4>

                    <h4 class="tit"><span class="num">2</span>기술지원 내용</h4>

                    <ul class="dis_tbl">
                        <li>
                            <span>목표</span>
                            <div class="dis_td">
                                <ul class="bul_cir">
                                    <li>휴대용 피부진단기 활용 맞춤형화장품 시장 진출을 위한 기술지원</li>
                                    <li>AI 피부진단 기술 및 신뢰도 검증 기술을 활용한 맞춤형화장품 개발 지원</li>
                                </ul>
                            </div>
                        </li>
                        <li>
                            <span>필요성</span>
                            <div>
                                <ul class="bul_cir">
                                    <li>맞춤형화장품에 대한 소비자들의 관심이 증가함에 따라, 국내 화장품기업들을 <br />
                                        휴대용 피부진단기기를 활용한 피부진단 및 제품 추천 서비스가 기획, 준비 중에 있음</li>
                                    <li>이에 휴대용 피부진단기 기반 맞춤형화장품을 제공하는 다양한 비즈니스 모델에 대한 기술지원이 필요한 상황임</li>
                                </ul>
                            </div>
                        </li>
                        <li class="item3">
                            <span>지원금(기업당)</span>
                            <div>10,000천원 이내</div>
                        </li>
                        <li class="item4">
                            <span>기업부담금</span>
                            <div>10% 이상</div>
                        </li>
                    </ul>
                </div>

                <div class="box2">
                    <div class="tit_img">
                         <img class="bg" src="${pageContext.request.contextPath}/resources/static/images_old/performance/tech_img02.jpg" alt="" />
                         <h3><span>플랫폼 연계 맞춤형화장품 실증 지원</span></h3>
                    </div>
 
                    <h4 class="tit">
                         <span class="num">1</span>지원대상
                         <span class="txt">국내 화장품 기업 및 전후방 연관기업</span>
                     </h4>
 
                     <h4 class="tit"><span class="num">2</span>기술지원 내용</h4>
 
                     <ul class="dis_tbl">
                         <li>
                             <span>목표</span>
                             <div class="dis_td">
                                 <ul class="bul_cir">
                                    <li>정밀 피부진단 및 처방 알고리즘 기반 맞춤형화장품 시장 진출을 위한 기술지원</li>
                                    <li>데이터 기반 피부 유형 선별, 각 유형별 피부고민 도출, 고민별 맞춤 처방 제시</li>
                                 </ul>
                             </div>
                         </li>
                         <li>
                             <span>필요성</span>
                             <div>
                                 <ul class="bul_cir">
                                    <li>단순한 고객 피부진단으로는 높아지는 고객의 피부고민 해결 수요에 부응하기에 어려움 발생</li>
                                    <li>데이터 기반 고객의 피부 유형을 선별(grouping)하고, 각 유형별 피부고민 도출 및 고민별 맞춤 처방 <br />
                                    알고리즘 기반 맞춤형화장품 개발 분야 기술 지원 수요가 높아지고 있음</li>
                                 </ul>
                             </div>
                         </li>
                         <li class="item3">
                             <span>지원금(기업당)</span>
                             <div>40,000천원 이내</div>
                         </li>
                         <li class="item4">
                             <span>기업부담금</span>
                             <div>10% 이상</div>
                         </li>
                     </ul>
                 </div>

                 <div class="box3">
                    <div class="tit_img">
                         <img class="bg" src="${pageContext.request.contextPath}/resources/static/images_old/performance/tech_img03.jpg" alt="" />
                         <h3><span>사업화 및 신규 시장 개척 지원</span></h3>
                    </div>
 
                    <h4 class="tit">
                         <span class="num">1</span>지원대상
                         <span class="txt">국내 화장품 기업 및 전후방 연관기업</span>
                     </h4>
 
                     <h4 class="tit"><span class="num">2</span>기술지원 내용</h4>
 
                     <ul class="dis_tbl">
                         <li>
                             <span>목표</span>
                             <div class="dis_td">
                                 <ul class="bul_cir">
                                    <li>신규 맞춤형 화장품 시장 진출을 위한 시장조사 지원</li>
                                    <li>화장품 및 ICT 융복합기술, 신규 뷰티업계 및 신남방 수출시장 진출 지원</li>
                                 </ul>
                             </div>
                         </li>
                         <li>
                             <span>필요성</span>
                             <div>
                                 <ul class="bul_cir">
                                    <li>맞춤형화장품의 경우 아직 성공적으로 시장에서 안착한 사례가 없는 상황으로, 다양한 시장 진출 모델이 필요한 상황임</li>
                                    <li>화장품 ICT 융복합 기술을 접목하여 신규 틈생 시장(뷰티업계 등) 및 수출시장(신남방국가 등)에 <br />
                                        대한 사전 시장 조사 및 사업계획, 테스트 마케팅 등이 필요</li>
                                    <li>동 사업에서는 맞춤형 화장품 분야 사업기획, 테스트 마케팅등 사업화지원을 통해 <br />
                                        고객 수요 맞춤 신규 시장 진출이 가능하도록 기술지원 추진</li>
                                 </ul>
                             </div>
                         </li>
                         <li class="item3">
                             <span>지원금(기업당)</span>
                             <div>10,000천원 이내</div>
                         </li>
                         <li class="item4">
                             <span>기업부담금</span>
                             <div>10% 이상</div>
                         </li>
                     </ul>
                 </div>

                 <div class="box4">
                    <div class="tit_img">
                         <img class="bg" src="${pageContext.request.contextPath}/resources/static/images_old/performance/tech_img04.jpg" alt="" />
                         <h3><span>KOLAS 기반 신뢰성 검증 지원</span></h3>
                    </div>
 
                    <h4 class="tit">
                         <span class="num">1</span>지원대상
                         <span class="txt">국내 화장품 기업 및 전후방 연관기업</span>
                     </h4>
 
                     <h4 class="tit"><span class="num">2</span>기술지원 내용</h4>
 
                     <ul class="dis_tbl">
                         <li>
                             <span>목표</span>
                             <div class="dis_td">
                                 <ul class="bul_cir">
                                    <li>국제공인시험 기관인 KOLAS 시험기관 연계 화장품 시험분석을 통한 안전성 확보</li>
                                    <li>도내 화장품기업 제품 개발 및 생산에 대한 맞춤형 시험분석 지원으로 품질관리</li>
                                 </ul>
                             </div>
                         </li>
                         <li>
                             <span>필요성</span>
                             <div>
                                 <ul class="bul_cir">
                                    <li>화장품 원료 및 완제 안전기준이 지속적으로 강화되고 있으며 소비자의 안전성 및 <br />
                                        안정성에 대한 관심 증대에 따른 제품의 신뢰성 확보 필요</li>
                                    <li>화장품 안전기준 등에 관한 규정 등 식약처 규정에 따른 맞춤형 시험분석 지원 필요</li>
                                 </ul>
                             </div>
                         </li>
                         <li>
                             <span>지원금(기업당)</span>
                             <div>직접 지원</div>
                         </li>
                     </ul>
                 </div>

                 <div class="box5">
                    <div class="tit_img">
                         <img class="bg" src="${pageContext.request.contextPath}/resources/static/images_old/performance/tech_img05.jpg" alt="" />
                         <h3><span>원료 신뢰성 검증 지원</span></h3>
                    </div>
 
                    <h4 class="tit">
                         <span class="num">1</span>지원대상
                         <span class="txt">국내 화장품 기업 및 전후방 연관기업</span>
                     </h4>
 
                     <h4 class="tit"><span class="num">2</span>기술지원 내용</h4>
 
                     <ul class="dis_tbl">
                         <li>
                             <span>목표</span>
                             <div class="dis_td">
                                 <ul class="bul_cir">
                                    <li>플랫폼 활용 맞춤형화장품 실증을 위한 원료(소재) 유효성 및 안전성 기술지원</li>
                                    <li>맞춤형화장품 원료의 국내 화장품법 기반의 신뢰성 평가지원</li>
                                 </ul>
                             </div>
                         </li>
                         <li>
                             <span>필요성</span>
                             <div>
                                 <ul class="bul_cir">
                                    <li>맞춤형화장품 신뢰성에 대한 명확한 근거제시를 요구하는 ‘과학적 증거주의’의 확산으로 원료(소재)에 대한 <br />
                                        국내기업 대상의 유효성 및 안전성 등의 기술지원이 필요함</li>
                                    <li>화장품분야 관련 국제공인인증 기관이 부재한 관계로 맞춤형화장품 원료의 신뢰성 확보를 위한 <br />
                                        국내 화장품법 기반의 유효성 및 안전성 평가체계 구축 및 기술지원이 필요함</li>
                                 </ul>
                             </div>
                         </li>
                         <li>
                             <span>지원금(기업당)</span>
                             <div>직접 지원</div>
                         </li>
                     </ul>
                 </div>

                 <div class="box6">
                    <div class="tit_img">
                         <img class="bg" src="${pageContext.request.contextPath}/resources/static/images_old/performance/tech_img06.jpg" alt="" />
                         <h3><span>AI+AR 융복합 시제품 제작 지원</span></h3>
                    </div>
 
                    <h4 class="tit">
                         <span class="num">1</span>지원대상
                         <span class="txt">휴대용 피부진단기 기반, 맞춤형화장품 시장 진출 추진 기업, 단독 휴대용 진단기기 개발 ICT 기업</span>
                     </h4>
 
                     <h4 class="tit"><span class="num">2</span>기술지원 내용</h4>
 
                     <ul class="dis_tbl">
                         <li>
                             <span>목표</span>
                             <div class="dis_td">
                                 <ul class="bul_cir">
                                    <li>AI, IOT, AR 기술을 활용한 신개념 스마트 피부진단기기 개발지원</li>
                                    <li>화장품 빅데이터 플랫폼의 중소/중견기업의 활용을 위한 기술 지원</li>
                                 </ul>
                             </div>
                         </li>
                         <li>
                             <span>필요성</span>
                             <div>
                                 <ul class="bul_cir">
                                    <li>화장품 산업의 맞춤형/기능성/고급화의 요구는 스마트 디바이스를 통한 피부진단기술을 요구</li>
                                    <li>본 과제를 통해 구축된 빅데이터 플랫폼을 활용하여 중소/중견기업이 인공지능(AI) 및 <br />
                                        증강현실(AR) 기술 등을 융합한 새로운 개념의 휴대용 제품을 개발 지원필요</li>
                                 </ul>
                             </div>
                         </li>
                         <li>
                             <span>지원금(기업당)</span>
                             <div>50,000천원 이내</div>
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