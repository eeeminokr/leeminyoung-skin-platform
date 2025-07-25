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
<body class="page_business">
    <jsp:include page="../common/header.jsp"/>

    <!-- Container -->
    <section class="container">

        <!-- 컨텐츠 상단 서브 메뉴 -->
        <div class="lnb_wrap">
            <div class="inner">
                <div class="lnb">
                    <button type="button">기관소개</button>
                    <ul>
                        <li><a href="${pageContext.request.contextPath}/business/business_01_1">사업소개</a></li>
                        <li class="active"><a href="${pageContext.request.contextPath}/business/business_02_1">기관소개</a>
                            <ul>
                                <li><a href="${pageContext.request.contextPath}/business/business_02_1">제주테크노파크</a></li>
                                <li><a href="${pageContext.request.contextPath}/business/business_02_2">한국전자통신연구원</a></li>
                                <li class="active"><a class="last" href="${pageContext.request.contextPath}/business/business_02_3">제주대학교 산학협력단</a></li>
                            </ul>
                        </li>
                    </ul>
                </div>

                <ul class="depth_03">
                    <li><a href="${pageContext.request.contextPath}/business/business_02_1">제주테크노파크</a></li>
                    <li><a href="${pageContext.request.contextPath}/business/business_02_2">한국전자통신연구원</a></li>
                    <li class="active"><a href="${pageContext.request.contextPath}/business/business_02_3">제주대학교 산학협력단</a></li>
                </ul>
            </div>
        </div>
        <!-- //컨텐츠 상단 서브 메뉴 -->

        <!-- 타이틀 -->
        <div class="title title_bg_01">
            <div class="inner">
                <div class="txtbox">
                    <div class="tit_s ff_nm">My Skin Guide Platform</div>
                    <h3 class="ff_nm">기관소개</h3>
                    <p>데이터 활용 맞춤형화장품 기반 조성으로 <br />
                        K-뷰티산업을 선도 하겠습니다.</p>
                </div>
            </div>
        </div>
        <!-- //타이틀 -->

        <!-- 컨텐츠 -->
        <div class="content jeju_inside">
            <div class="inner">
                <h2 class="ff_nm bar">제주대학교 산학협력단</h2>

                <div class="box1 mb_200">
                    <h3 class="ta_c mb_100">제주대학교 산학협력단 제주인사이드사업단</h3>
                    <div class="img_wrap mb_100">
                        <img class="img1" width="258" height="244" src="${pageContext.request.contextPath}/resources/static/images_old/business/logo_jejuinside1.png" alt="JEJU Inside 로고" />
                        <img class="img2" width="364" height="142" src="${pageContext.request.contextPath}/resources/static/images_old/business/logo_jejuinside2.png" alt="제주대학교 제주인사이드사업단 로고" />
                    </div>
                    <p>1991년 미국 인텔사는 “인텔 인사이드 (intel inside)” 로고를 PC에 부착하는 캠페인을 통해 전 세계 컴퓨터 CPU 점유율을 80% 이상 차지하게 되었고, 
                        이 캠페인으로 세계적인 브랜딩 회사인 인터브랜드에서 선정하는 세계 브랜드 가치 순위에서 코카콜라, 마이크로소프트, IBM에 이어 4위를 달성한 바 있습니다.<br />
                        제주 인사이드 (jeju inside)는 제주기업 대표님들이 청춘 시절에 익숙히 들었던 컴퓨터 CPU 브랜드 인텔 인사이드를 벤티마킹한 용어입니다.<br />
                        그 당시 인텔의 CPU가 컴퓨터 운용에 필수적이듯이, 제주인사이드는 제주의 모든 부품소재를 의미하며 제주인사이드사업단은 제주 기업들이 생산하는 
                        모든 부품소재 (자원·서비스)에 대하여 기업지원을 해드리는 사업단이라 이해하시면 될 듯 합니다.<br />
                        저희 사업단은 7명의 전담연구원과 4명의 대학원생으로 구성되어 있으며 제주권 혁신기관인 (재)제주테크노파크와 연계협력을 통하여 제주기업의 
                        매출과 고용 증대를 도와드리고 있습니다.</p>
                </div>

                <div class="box2 mb_200">
                    <h3 class="ta_c">제주인사이드사업단 조직도</h3>
                    <div class="jeju_organization mb_150">
                        <dl class="jeju_oz">
                            <dt>제주인사이드사업단</dt>
                            <dd class="order1">
                                <div class="oz_box">
                                    <span class="oz_tit">자문기관</span>
                                    <span class="oz_cont">(재)제주테크노파크<br />
                                        (사)제주산학융합원</span>
                                </div>
                                <ul>
                                    <li>2022년 산업부 스마트특성화 기반구축사업 공동추진 선정</li>
                                    <li>2021년 산업혁신기반구축사업 공동추진 선정</li>
                                    <li>2020년 산업부 스마트특성화 기반구축사업 공동추진 선정</li>
                                    <li>2020년 중기부 지역연고산업육성사업 공동추진 선정</li>
                                    <li>2018년 국가혁신클러스터사업_맞춤형화장품 공동기획 선정</li>
                                    <li>2017년 산업부 거점사업_화장품원료센터_공동 추진 선정</li>
                                    <li>2015-현재 기업지원서비스사업 공동수행</li>
                                </ul>
                            </dd>
                            <dd class="order2">
                                <div class="oz_box st">
                                    <span class="oz_tit">사업단장</span>
                                    <span class="oz_cont">화학, 코스메틱스학과 교수<br />
                                        화장품과학연구센터장<br />
                                        제주향기제품RIS사업단장</span>
                                </div>
                            </dd>
                            <dd class="order3">
                                <div class="oz_box">
                                    <span class="oz_tit">Schrödinger</span>
                                    <span class="oz_cont">디지털팩토리운영</span>
                                </div>
                            </dd>
                            <dd class="order4">
                                <ul>
                                    <li>
                                        <div class="oz_box st">
                                            <span class="oz_tit">분석지원</span>
                                            <span class="oz_cont">문미연, Xu Yang<br />
                                                김미나, 이예진</span>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="oz_box st">
                                            <span class="oz_tit">기술지원</span>
                                            <span class="oz_cont">한현주, 김현미, 김태진<br />
                                                배성민, 배성은, 강현규</span>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="oz_box st">
                                            <span class="oz_tit">행정지원</span>
                                            <span class="oz_cont">강은영, 고민녕, 이주영</span>
                                        </div>
                                    </li>
                                </ul>
                            </dd>
                        </dl>                                         
                        <img class="img" width="138" height="123" src=" ${pageContext.request.contextPath}/resources/static/images_old/business/logo_intelinside.png" alt="intel inside 로고" />
                    </div>
                    <p>또한 제주 자원의 활용성을 극대화하기 위하여 제주자원 기능성 공공DB와 실증DB 구축하여 제주테크노파크 중앙DB를 연동하여 통해서 오픈하고 있으며, 
                        이를 통하여 제주 화장품기업 및 식품기업의 맞춤형 원료개발도 지원하고 있습니다.<br />
                        현재 제주인사이드사업단은 산업통상자원부의 산업혁신기반구축사업과 스마트특성화기반구축사업 및 국가혁신클러스터 기업지원서비스사업, 중소벤처기업부의 시군구 지역연고산업육성사업을 제주테크노파크와 공동 추진하고 있습니다.<br />
                        기업과 저희와 같은 기업지원기관은 부부관계라 생각하고 있습니다.<br />
                        가정에서 부부 상호간 기본적인 신뢰와 믿음을 기반으로 가족 전체 구성원의 행복을 일구어 나가듯이, 저희 사업단은 제주기업에 대한 무한한 신뢰와 믿음 기반의 친기업적인 (Company friendly) 마인드를 가지고 기업이 요청하는 문제점과 요청 사안을 해소해 드리려고 노력하고 있습니다.</p>
                </div>

                <div class="box3 mb_150">
                    <h3 class="ta_c">제주인사이드사업단의 기술플랫폼</h3>
                    <div class="jeju_platform mb_150">
                        <dl class="jeju_oz">
                            <dt>제주인사이드사업단</dt>
                            <dd class="order1">
                                <div class="oz_box">
                                    <span class="oz_tit">Research Candidates</span>
                                    <span class="oz_cont">Natural Products<br />
                                        Synthesis/Lysis<br />
                                        Bioconversion<br />
                                        Genome Mining</span>
                                </div>
                            </dd>
                            <dd class="order2">
                                <div class="oz_box">
                                    <span class="oz_tit">Non-Cell Study</span>
                                    <span class="oz_cont">Anti-oxidant Sets, Elastase,<br />
                                        Collagenase, Tyrosinase, Hyaluronidase,<br />
                                        α-Glucosidase, Cholinesterase</span>
                                </div>
                            </dd>
                            <dd class="order3">
                                <ul>
                                    <li>
                                        <div class="oz_box">
                                            <span class="oz_tit">황산화</span>
                                            <span class="oz_cont">Keratinocytes</span>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="oz_box">
                                            <span class="oz_tit">주름개선</span>
                                            <span class="oz_cont">Human<br />
                                                Dermal<br />
                                                Fibroblast</span>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="oz_box">
                                            <span class="oz_tit">멜라닌</span>
                                            <span class="oz_cont">Melanocytes</span>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="oz_box">
                                            <span class="oz_tit">과민피부개선</span>
                                            <span class="oz_cont">Macrophages<br />
                                                Keratinocytes</span>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="oz_box">
                                            <span class="oz_tit">치아건강</span>
                                            <span class="oz_cont">Gingival<br />
                                                Fibroblasts</span>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="oz_box">
                                            <span class="oz_tit">육모</span>
                                            <span class="oz_cont">Papilla</span>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="oz_box">
                                            <span class="oz_tit">여성질건강</span>
                                            <span class="oz_cont">Vaginal<br />
                                                Epithelial</span>
                                        </div>
                                    </li>
                                </ul>
                            </dd>
                            <dd class="order4">
                                <ul>
                                    <li>
                                        <div class="oz_box st">
                                            <span class="oz_tit">Natural<br />
                                                preservatives</span>
                                            <span class="oz_cont">MIC/MBC/MFC<br />
                                                Time-Killing Curve<br />
                                                FIC index<br />
                                                Biofilm Formation<br />
                                                TEM/SEM Microscopy</span>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="oz_box">
                                            <span class="oz_tit">체지방개선</span>
                                            <span class="oz_cont">Adipocytes</span>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="oz_box">
                                            <span class="oz_tit">면역기능개선</span>
                                            <span class="oz_cont">Macrophages</span>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="oz_box">
                                            <span class="oz_tit">인지능개선</span>
                                            <span class="oz_cont">Whitening<br />
                                                Gray Hair</span>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="oz_box">
                                            <span class="oz_tit">관절뼈건강</span>
                                            <span class="oz_cont">Memory</span>
                                        </div>
                                    </li>
                                </ul>
                            </dd>
                        </dl>
                    </div>
                    <p>저희 사업단은 산업협력단 소속으로서, 지역혁신기관이 수혜기업을 선정하여 중앙정부와 지방 예산을 쥐어주면서 다른 공급기관을 통하여 해결하라는 부동산 중계식 지원이 아닌, 
                        자체 보유 기술과 인프라를 기반으로 수혜기업에 직접 지원이 가능한 강점을 보유하고 있습니다.<br />
                        또한 제주기업의 화장품 및 식품 원료개발을 위한 자체 기술지원 서비스와 제주기업 연구원을 대상으로 하는 인력양성 서비스도 지원하고 있습니다. 
                    </p>
                </div>
                
            </div>
        </div>
        <!-- //컨텐츠 -->

    </section>
    <!-- //Container -->

    <jsp:include page="../common/footer.jsp"/>
</body>
</html>