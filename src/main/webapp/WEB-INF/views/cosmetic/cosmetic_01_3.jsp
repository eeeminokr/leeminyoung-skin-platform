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
                    <button type="button">정의 및 History</button>
                    <ul>
                        <li class="active"><a href="${pageContext.request.contextPath}/cosmetic/cosmetic_01_1">정의 및 History</a>
                            <ul>
                                <li class="active"><a href="${pageContext.request.contextPath}/cosmetic/cosmetic_01_1">맞춤형화장품 정의</a></li>
                                <li><a href="${pageContext.request.contextPath}/cosmetic/cosmetic_01_2">맞춤형화장품 기술개발 동향</a></li>
                                <li><a href="${pageContext.request.contextPath}/cosmetic/cosmetic_01_3">맞춤형화장품 시장동향</a></li>
                            </ul>
                        </li>
                        <li><a href="${pageContext.request.contextPath}/cosmetic/cosmetic_02_1">맞춤형화장품 판매업</a></li>
                        <li><a class="last" href="${pageContext.request.contextPath}/cosmetic/cosmetic_03_1">SkinQurator</a></li>
                    </ul>
                </div>

                <ul class="depth_03">
                    <li><a href="${pageContext.request.contextPath}/cosmetic/cosmetic_01_1">맞춤형화장품 정의</a></li>
                    <li><a href="${pageContext.request.contextPath}/cosmetic/cosmetic_01_2">맞춤형화장품 기술개발 동향</a></li>
                    <li class="active"><a href="${pageContext.request.contextPath}/cosmetic/cosmetic_01_3">맞춤형화장품 시장동향</a></li>
                </ul>
            </div>
        </div>
        <!-- //컨텐츠 상단 서브 메뉴 -->

        <!-- 타이틀 -->
        <div class="title title_bg_02">
            <div class="inner">
                <div class="txtbox">
                    <div class="tit_s ff_nm">My Skin Guide Platform</div>
                    <h3 class="ff_nm">정의 및 History</h3>
                    <p>맞춤형화장품 소개</p>
                </div>
            </div>
        </div>
        <!-- //타이틀 -->

      <!-- 컨텐츠 -->
        <div class="content market">
            <div class="inner">

                <h2 class="ff_nm bar">맞춤형화장품 시장동향</h2>

                <div class="box1">
                    <div class="of_h mb_180">
                        <img class="fr" width="670" height="560" src="${pageContext.request.contextPath}/resources/static/images_old/cosmetic/market_img01.jpg" alt="" />
                        <p class="mb_40">정부 공식 발표에 따르면 국내 화장품 생산 규모는 16.3조원 으로 최근 5년간(2015∼2019) 연평균성장률 10.9%로 지속적으로 성장하고 있는 산업입니다. </p>
                        <ul class="bul_cir mb_70">
                            <li>2019년 글로벌 화장품 시장 규모는 4,996억 달러로, <br />최근 5년간(2015∼2019) 연평균 2.8% 증가했습니다. </li>
                            <li>2014년 이후 화장품산업 수출 성장으로 무역수지 6년 연속 흑자를 기록하면서 세계 화장품 수출 순위 또한 4위로 성장했습니다.</li>
                        </ul>
                        <p class="mb_70">2000년 7월부터 시행 중인 기능성화장품은 2018년 기준 4조9,803억원으로 2017년 대비 2.3% 증가하였으나, 기능성화장품의 최근 5년간(2014~2018) 연평균성장률도 13.7%로 꾸준히 상승하고 있는 것으로 나타납니다.</p> 
                        <p class="mb_40">2020년 3월, 법제화되어 시행 중인 맞춤형화장품은 공식적으로 생산 및 시장 규모에 대한 자료가 없는 상황이나, 2020년 기준, 일반적으로 40억~60억 규모의 국내 시장이 형성되어 있는 것으로 알려져 있습니다. </p>
                        <ul class="bul_cir">
                            <li>2000년 7월 기능성화장품이 제도권 내로 들어온 이후 꾸준히 시장 규모가 확대되고 있고, 지속적으로 배출되는 <br />맞춤형화장품 조제관리사 및 맞춤형화장품 판매업장의 증가로 보아 맞춤형화장품 시장의 확대가 기대되고 있습니다.</li>
                        </ul>
                    </div>

                    <div class="of_h mb_120">
                        <img class="fr" width="670" height="560" src="${pageContext.request.contextPath}/resources/static/images_old/cosmetic/market_img02.jpg" alt="" />
                        <p class="mb_40">정부에서는 2020년 3월부터 ‘맞춤형화장품판매업’을 신설하고, 품질관리를 담당하는 ‘조제관리사’(국가자격) 제도를 운영하는 등 맞춤형화장품 제도를 법제화하여 본격 시행 중 입니다.</p>
                        <ul class="bul_cir mb_70">
                            <li class="mb_40">개인의 피부상태·선호도 등을 반영하여 개인별 진단결과에 따라 고객 맞춤형으로 판매장에서 혼합 또는 소분하여 제공하는 방식의 ‘맞춤형화장품판매업’ 108개 운영 중 입니다.(2020년 12월 기준)</li>
                            <li>‘맞춤형화장품조제관리사’는 맞춤형화장품판매장에서 혼합, 소분 업무에 종사하는자로서 맞춤형화장품조제 관리사 국가자격시험에 합격한 자를 말하며, 2021년 3월 기준 4,008명의 조제관리사가 배출되어 활동 중 입니다.</li>
                        </ul>
                        <p>2015년 국내 맞춤형화장품 시범사업이 시작되어 아모레퍼시픽, 동방엘앤비 등 18개 기업이 맞춤형화장품 시범 모델을 운영하였으며, 이를 통해 검증한 운영 판매 방식은 아래의 3가지로 구분이 가능합니다.</p>
                    </div>

                    <div class="table_wrap mb_150">
                        <table class="tbl_st1 order1" summary="맞춤형화장품 운영 판매 방식 - 구분, 정의 및 주요내용, 기업, 진단, 품목">
                            <caption>맞춤형화장품 운영 판매 방식</caption>
                            <colgroup>
                                <col width="17%" />
                                <col width="38%" />
                                <col width="15%" />
                                <col width="15%" />
                                <col width="15%" />
                            </colgroup>
                            <thead>
                                <tr>
                                    <th>구분</th>
                                    <th>정의 및 주요내용</th>
                                    <th>기업</th>
                                    <th>진단</th>
                                    <th>품목</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>현장에서 바로 혼합하여 <br />
                                        판매하는 제품</td>
                                    <td class="ta_l">
                                        <ul class="bul_cir">
                                            <li>개별 소비자를 대상으로 소비자 요구에 따라 <br />
                                                즉석에서 소비자의 재료 선택과 동시에 재료를 <br />
                                                혼합하여 소량 생산 진행을 합니다.</li>
                                            <li>소비자의 피부 진단 결과를 통해 즉석에서 <br />
                                                혼합하거나, 기본 베이스를 제공하여 소비자의 
                                                기호를 위주로 혼합 재료를 자율적으로 <br />
                                                선택하도록 합니다.</li>
                                        </ul>

                                        <ul class="step_list">
                                            <li>
                                                <span class="top">STEP 01</span>
                                                <span class="btm">기기를 이용한<br />진단 및 혼합</span>
                                            </li>
                                            <li>
                                                <span class="top">STEP 02</span>
                                                <span class="btm">기기로부터<br />화장품 공급</span>
                                            </li>
                                            <li>
                                                <span class="top">STEP 03</span>
                                                <span class="btm">기기로부터<br />화장품 공급</span>
                                            </li>
                                        </ul>
                                    </td>
                                    <td>
                                        <p>동방 엘앤비</p>
                                        <p>라네즈 FSS 충무로</p>
                                        <p>마계 공방</p>
                                        <p>카이스 인포</p>
                                        <p>허브 누리</p>
                                    </td>
                                    <td>
                                        <p>설문 문항지</p>
                                        <p>기기/도구</p>
                                        <p>설문 문항지</p>
                                        <p>소비자 선택</p>
                                        <p>설문 문항지</p>
                                    </td>
                                    <td>
                                        <p>기초 화장품</p>
                                        <p>색조 화장품(립스틱)</p>
                                        <p>기초 화장품</p>
                                        <p>기초 화장품</p>
                                        <p>기초 화장품</p> 
                                    </td>
                                </tr>
                                <tr>
                                    <td>DIY(Do it yourself)형 <br />
                                        Kit 제품</td>
                                    <td class="ta_l">
                                        <ul class="bul_cir">
                                            <li>가정 등에서 소비자가 혼합할 수 있는 형태로 개발된 화장품 kit를 이용하는 경우로, 소비자가 맞춤형<br />화장품 재료를 구입하여 직접 혼합하여 완성하는 제품입니다.</li>
                                            <li>화장품 유형별 베이스와 더불어 소비자가 취향에 따른 재료들을 선택하여 단순한 행위만으로 제품을 완성할 수 있도록 kit가 구성되어 인터넷이나 매장을 통해 판매됩니다.</li>
                                        </ul>

                                        <ul class="step_list">
                                            <li>
                                                <span class="top">STEP 01</span>
                                                <span class="btm">문진 및 주문</span>
                                            </li>
                                            <li>
                                                <span class="top">STEP 02</span>
                                                <span class="btm">혼합용 재료<br />전달</span>
                                            </li>
                                            <li>
                                                <span class="top">STEP 03</span>
                                                <span class="btm">소비자의 재료<br />혼합</span>
                                            </li>
                                        </ul>
                                    </td>
                                    <td>
                                        <p>나라야</p>
                                        <p>다이솝</p>
                                        <p>데메테르</p>
                                        <p>블뤼떼</p>
                                        <p>샌틀리에</p>
                                        <p>에클로나인</p>
                                        <p>하우연</p>
                                    </td>
                                    <td>
                                        <p>상담</p>
                                        <p>-</p>
                                        <p>상담</p>
                                        <p>상담</p>
                                        <p>상담</p>
                                        <p>상담</p>
                                        <p>설문 문항지</p>
                                    </td>
                                    <td>
                                        <p>향수</p>
                                        <p>기초 화장품</p>
                                        <p>향수</p>
                                        <p>향수</p>
                                        <p>향수</p> 
                                        <p>향수</p>
                                        <p>기초 화장품</p>
                                    </td>
                                </tr>
                                <tr>
                                    <td>맞춤형 화장품 기기를
                                        통해 혼합되는 제품</td>
                                    <td class="ta_l">
                                        <ul class="bul_cir">
                                            <li>가정 등에서 소비자 맞춤형으로 화장품을 즉석 <br />혼합·제공하는 기기를 이용하는 경우 입니다.</li>
                                            <li>사용자에 맞추어 화장품을 조합하는 기기는 1차적<br />으로 기기를 이용하여 피부를 진단한 후 그 결과를 기반으로 재료를 적절히 혼합하여 완제품을 공급<br />하는 시스템을 갖추고, 이후 주기적으로 사용자 피부반응에 맞춰 모듈형태로 내용물을 제공합니다.</li>
                                        </ul>

                                        <ul class="step_list">
                                            <li>
                                                <span class="top">STEP 01</span>
                                                <span class="btm">기기를 이용한<br />진단 및 혼합</span>
                                            </li>
                                            <li>
                                                <span class="top">STEP 02</span>
                                                <span class="btm">기기로부터<br />화장품 공급</span>
                                            </li>
                                        </ul>
                                    </td>
                                    <td>
                                        <p>에이브</p>
                                        <p>뉴스킨코리아</p>
                                    </td>
                                    <td>
                                        <p>기기/도구</p>
                                        <p>기기/도구</p>
                                    </td>
                                    <td>
                                        <p>기초 화장품</p>
                                        <p>기초 화장품</p> 
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                        <p class="txt_s ta_r">[자료:맞춤형화장품 관리제도 개선방안 연구, 2016, 식품의역품안전평가원, 자료 재편집]</p>
                    </div>

                    <p class="mb_40">이후 아모레퍼시픽의 라네즈 브랜드, 이니스프리의 용암해수를 활용한 제품, 한국화장품의 제네르떼, LG생활건강/CNP의 르메디, 코스모코스의 비프루브, 
                        제노힐의 지투셀 등 여러 기업에서 다양한 맞춤형 서비스를 운영하고 있습니다.</p>

                    <ul class="bul_cir mb_130">
                        <li>국내 화장품 기업에서 진행하고 있는 맞춤형화장품 제품을 분석, 커뮤니케이션 방식의 분류 대상으로
                            <ol>
                                <li><span class="num_s">1</span>오더-메이드</li>
                                <li><span class="num_s">2</span>매스 커스터마이제이션</li>
                                <li><span class="num_s">3</span>DIY 로 구분하고, 제품 완성까지의 구성요소에 대한 모듈화 방식을 6가지(공유형, 교환형, 맞춤형, 혼합형, 버스형, 조립형)로 <br />구분하여 정리하면 아래 표와 같습니다.</li>
                            </ol>
                        </li>
                    </ul>

                    <p class="tbl_top mb_40">[표] 화장품 맞춤형 서비스 방법 분석</p>
                    <div class="table_wrap">
                        <table class="tbl_st1 order2" summary="화장품 맞춤형 서비스 방법 분석 표 - 브랜드, 상품명, 서비스의 도식화, 커뮤니케이션 방식/모듈화 방식">
                            <caption>화장품 맞춤형 서비스 방법 분석 표</caption>
                            <colgroup>
                                <col width="7%" />
                                <col width="11%" />
                                <col width="66%" />
                                <col width="16%" />
                            </colgroup>
                            <thead>
                                <tr>
                                    <th>브랜드</th>
                                    <th>상품명</th>
                                    <th>서비스 과정의 도식화</th>
                                    <th>커뮤니케이션 방식<br />/모듈화 방식</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <th rowspan="5">이<br />니<br />스<br />프<br />리</th>
                                    <td>마이 쿠션</td>
                                    <td>
                                        <ul class="service_process">
                                            <li>쿠션 베이스 선택<br />(롱 웹어 커버 쿠션,<br />워터핏 쿠션,<br />앰플 모이스처 쿠션)</li>
                                            <li class="ico"><img src="${pageContext.request.contextPath}/resources/static/images_old/common/plus.png" alt="" /></li>
                                            <li>피부 컬러<br />호수 선택<br />(총 4종)</li>
                                            <li class="ico"><img src="${pageContext.request.contextPath}/resources/static/images_old/common/plus.png" alt="" /></li>
                                            <li>뷰티툴 선택<br />(윤광 퍼프,<br />필착 퍼프,<br />도장 퍼프,<br />쿠션 브러시)</li>
                                            <li class="ico"><img src="${pageContext.request.contextPath}/resources/static/images_old/common/plus.png" alt="" /></li>
                                            <li>디자인 케이스<br />선택<br />(총 100종)</li>
                                            <li class="ico"><img src="${pageContext.request.contextPath}/resources/static/images_old/common/arrow_r3.png" alt="" /></li>
                                            <li class="pt_24">'마이쿠션' 완성</li>
                                        </ul>
                                    </td>
                                    <td>DIY 방식 <br />/ 구성요소 교환형</td>
                                </tr>
                                <tr>
                                    <td>마이 팔레트</td>
                                    <td>
                                        <ul class="service_process">
                                            <li>140개의 다양한<br />컬러 선택 (아티스트<br />추천 및 소비자 인터뷰)</li>
                                            <li class="ico"><img src="${pageContext.request.contextPath}/resources/static/images_old/common/plus.png" alt="" /></li>
                                            <li>7가지 유형<br />선택</li>
                                            <li class="ico"><img src="${pageContext.request.contextPath}/resources/static/images_old/common/plus.png" alt="" /></li>
                                            <li>팔레트 선택<br />S(4구), M(8구),<br />L(18구)</li>
                                            <li class="ico"><img src="${pageContext.request.contextPath}/resources/static/images_old/common/arrow_r3.png" alt="" /></li>
                                            <li>마이팔레트<br />제작</li>
                                            <li class="ico"><img src="${pageContext.request.contextPath}/resources/static/images_old/common/plus.png" alt="" /></li>
                                            <li>'프로모션' 장<br />줄리앙 콜라보레이션<br />팔레트</li>
                                        </ul>
                                    </td>
                                    <td>오더-메이드 <br />/ 맞춤형</td>
                                </tr>
                                <tr>
                                    <td>마이 파운데이션</td>
                                    <td>
                                        <ul class="service_process">
                                            <li>피부 타입에 맞춰<br />파운데이션 레벨 선택<br />(보습, 쉐이드, 커버)</li>
                                            <li class="ico"><img src="${pageContext.request.contextPath}/resources/static/images_old/common/arrow_r3.png" alt="" /></li>
                                            <li>선택 레벨에 따라<br />성분 조합<br />(파우더, 워터,<br />오일 등)<br /></li>
                                            <li class="ico"><img src="${pageContext.request.contextPath}/resources/static/images_old/common/arrow_r3.png" alt="" /></li>
                                            <li>컴팩트한 용기에<br />보관, 완성</li>
                                            <li class="ico"><img src="${pageContext.request.contextPath}/resources/static/images_old/common/plus.png" alt="" /></li>
                                            <li>'프로모션' 뷰티톡<br />진단 서비스,<br />워런티 서비스</li>
                                        </ul>
                                    </td>
                                    <td>오더-메이드 <br />/ 맞춤형</td>
                                </tr>
                                <tr>
                                    <td>제주 용암해수<br />부스팅 앰플 &<br />주름 화이트닝<br />이팩터</td>
                                    <td>
                                        <ul class="service_process">
                                            <li>앰플 베이스<br />(수분)</li>
                                            <li class="ico"><img src="${pageContext.request.contextPath}/resources/static/images_old/common/plus.png" alt="" /></li>
                                            <li>농축 이펙터 2종<br />선택<br />(주름, 화이트닝,<br />시카, 탄력, 모공)</li>
                                            <li class="ico"><img src="${pageContext.request.contextPath}/resources/static/images_old/common/arrow_r3.png" alt="" /></li>
                                            <li>제주 용암해수<br />부스팅 앰플<br />& 주름 화이트닝<br />이펙터 완성</li>
                                        </ul>
                                    </td>
                                    <td>DIY 방식 <br />/ 구성요소 교환형</td>
                                </tr>
                                <tr>
                                    <td>퍼스널 원크림</td>
                                    <td>
                                        <ul class="service_process">
                                            <li>100만건 이상의<br />데이터 분석<br />(고객 데이터,<br />제품 리뷰)</li>
                                            <li class="ico"><img src="${pageContext.request.contextPath}/resources/static/images_old/common/plus.png" alt="" /></li>
                                            <li>피부 타입별<br />패턴화<br />(제품성분,<br />피부고민 등)</li>
                                            <li class="ico"><img src="${pageContext.request.contextPath}/resources/static/images_old/common/plus.png" alt="" /></li>
                                            <li>20종류<br />크림 개발</li>
                                            <li class="ico"><img src="${pageContext.request.contextPath}/resources/static/images_old/common/plus.png" alt="" /></li>
                                            <li>제품 선택<br />(다양성 추구)</li>
                                            <li class="ico"><img src="${pageContext.request.contextPath}/resources/static/images_old/common/arrow_r3.png" alt="" /></li>
                                            <li>'믿쓰템 믿쓰원'<br />(불만족시,<br />100% 환불 서비스)</li>
                                        </ul>
                                    </td>
                                    <td>매스 커스터마이제이션 <br />/ 구성요소 교환형</td>
                                </tr>
                                <tr>
                                    <th rowspan="3">라<br />네<br />즈</th>
                                    <td>마이 투톤 립 바</td>
                                    <td>
                                        <ul class="service_process">
                                            <li>'뷰티미러'를 활용한<br />피부톤 측정</li>
                                            <li class="ico"><img src="${pageContext.request.contextPath}/resources/static/images_old/common/arrow_r3.png" alt="" /></li>
                                            <li>피부톤에 다른<br />샘플 테스트</li>
                                            <li class="ico"><img src="${pageContext.request.contextPath}/resources/static/images_old/common/arrow_r3.png" alt="" /></li>
                                            <li>투톤 립바<br />컬러 선택<br />(182개 색상 가능)</li>
                                            <li class="ico"><img src="${pageContext.request.contextPath}/resources/static/images_old/common/arrow_r3.png" alt="" /></li>
                                            <li>케이스에<br />각인 문구,<br />서체 선택</li>
                                            <li class="ico"><img src="${pageContext.request.contextPath}/resources/static/images_old/common/plus.png" alt="" /></li>
                                            <li>제조일, 성분<br />표시 카드 동봉<br />서비스 완료<br />(1시간 소요)</li>
                                        </ul>
                                    </td>
                                    <td>오더-메이드 <br />/ 구성요소 교환형</td>
                                </tr>
                                <tr>
                                    <td>마이 워터뱅크<br />크림</td>
                                    <td>
                                        <ul class="service_process">
                                            <li>'뷰티파인더' 진단</li>
                                            <li class="ico"><img src="${pageContext.request.contextPath}/resources/static/images_old/common/arrow_r3.png" alt="" /></li>
                                            <li>카운셀링 후,<br />피부 유,<br />수분량 진단</li>
                                            <li class="ico"><img src="${pageContext.request.contextPath}/resources/static/images_old/common/arrow_r3.png" alt="" /></li>
                                            <li>맞춤형 제조<br />(수분 유지형,<br />수분 리필형,<br />수분 장벽<br />강화형 등)</li>
                                            <li class="ico"><img src="${pageContext.request.contextPath}/resources/static/images_old/common/plus.png" alt="" /></li>
                                            <li>패키지 기록<br />(사용기한,<br />성분명,<br />주의사항 포함)<br />40분 소요</li>
                                        </ul>
                                    </td>
                                    <td>오더-메이드 <br />/ 맞춤형</td>
                                </tr>
                                <tr>
                                    <td>마이 립 슬리핑<br />마스크</td>
                                    <td>
                                        <ul class="service_process">
                                            <li>소비자 기호에 맞춰<br />향 선택 (9가지 향)</li>
                                            <li class="ico"><img src="${pageContext.request.contextPath}/resources/static/images_old/common/arrow_r3.png" alt="" /></li>
                                            <li>베이스 립밤<br />& 향을 조합</li>
                                            <li class="ico"><img src="${pageContext.request.contextPath}/resources/static/images_old/common/arrow_r3.png" alt="" /></li>
                                            <li>용기에<br />제품 충전</li>
                                            <li class="ico"><img src="${pageContext.request.contextPath}/resources/static/images_old/common/arrow_r3.png" alt="" /></li>
                                            <li>케이스, 라벨,<br />원하는 문구<br />기록</li>
                                        </ul>
                                    </td>
                                    <td>DIY 방식 <br />/ 구성요소 교환형</td>
                                </tr>
                                <tr>
                                    <th rowspan="2">에<br />뛰<br />드<br />하<br />우<br />스</th>
                                    <td>퍼스널 립스틱</td>
                                    <td>
                                        <ul class="service_process">
                                            <li>사전 예약</li>
                                            <li class="ico"><img src="${pageContext.request.contextPath}/resources/static/images_old/common/arrow_r3.png" alt="" /></li>
                                            <li>퍼스널 컬러 추천<br />(측색기, 컬러<br />드레이핑)</li>
                                            <li class="ico"><img src="${pageContext.request.contextPath}/resources/static/images_old/common/arrow_r3.png" alt="" /></li>
                                            <li>립 컬러 추천<br />(120가지<br />컬러차트)</li>
                                            <li class="ico"><img src="${pageContext.request.contextPath}/resources/static/images_old/common/arrow_r3.png" alt="" /></li>
                                            <li>립스틱 케이스<br />선택</li>
                                            <li class="ico"><img src="${pageContext.request.contextPath}/resources/static/images_old/common/plus.png" alt="" /></li>
                                            <li>'체험존'<br />(마이 립 바,<br />컬러 피킹 서비스)</li>
                                        </ul>
                                    </td>
                                    <td>오더-메이드 <br />/ 구성요소 교환형</td>
                                </tr>
                                <tr>
                                    <td>마이퍼스널<br />립스틱 &<br />립 & 페이스</td>
                                    <td>
                                        <ul class="service_process">
                                            <li>사전 예약</li>
                                            <li class="ico"><img src="${pageContext.request.contextPath}/resources/static/images_old/common/arrow_r3.png" alt="" /></li>
                                            <li>퍼스널컬러 진단,<br />스킨톤진단,<br />아티스트의<br />컬로 제안</li>
                                            <li class="ico"><img src="${pageContext.request.contextPath}/resources/static/images_old/common/arrow_r3.png" alt="" /></li>
                                            <li>아티스트의<br />컬러 제안<br />(240개 컬러차트<br />: 글로시, 매트)</li>
                                            <li class="ico"><img src="${pageContext.request.contextPath}/resources/static/images_old/common/arrow_r3.png" alt="" /></li>
                                            <li>립스틱 케이스<br />선택</li>
                                        </ul>
                                    </td>
                                    <td>오더-메이드 <br />/ 구성요소 교환형</td>
                                </tr>
                                <tr>
                                    <th>아<br />이<br />오<br />페</th>
                                    <td>테일러드 마스크<br />&<br />테일러드 세럼</td>
                                    <td>
                                        <ul class="service_process">
                                            <li>5단계 분석<br />(전안기, 스킨터치,<br />스코프, 안테라,<br />생활습관 관련 설문)</li>
                                            <li class="ico"><img src="${pageContext.request.contextPath}/resources/static/images_old/common/arrow_r3.png" alt="" /></li>
                                            <li>스마트폰 앱 촬영<br />(얼굴 사이즈<br />측정)</li>
                                            <li class="ico"><img src="${pageContext.request.contextPath}/resources/static/images_old/common/arrow_r3.png" alt="" /></li>
                                            <li>데이터 수치화</li>
                                            <li class="ico"><img src="${pageContext.request.contextPath}/resources/static/images_old/common/arrow_r3.png" alt="" /></li>
                                            <li>3D 프린터로<br />맞춤형<br />마스크 제조</li>
                                        </ul>
                                    </td>
                                    <td>오더-메이드 <br />/ 맞춤형</td>
                                </tr>
                                <tr>
                                    <th>톤<br />2<br />8</th>
                                    <td>톤28</td>
                                    <td>
                                        <ul class="service_process">
                                            <li>뷰티지니어스<br />방문</li>
                                            <li class="ico"><img src="${pageContext.request.contextPath}/resources/static/images_old/common/arrow_r3.png" alt="" /></li>
                                            <li>구독 후, 피부 측정<br />(화장품의 맞춤<br />구성: 3개월<br />단위로 측정)</li>
                                            <li class="ico"><img src="${pageContext.request.contextPath}/resources/static/images_old/common/arrow_r3.png" alt="" /></li>
                                            <li>빅데이터 분석<br />및 기후 변화에<br />따른 피부<br />변화 예측</li>
                                            <li class="ico"><img src="${pageContext.request.contextPath}/resources/static/images_old/common/arrow_r3.png" alt="" /></li>
                                            <li>고객 개별 맞춤<br />화장품 제조</li>
                                            <li class="ico"><img src="${pageContext.request.contextPath}/resources/static/images_old/common/arrow_r3.png" alt="" /></li>
                                            <li>28일 주기로<br />문 앞 배송</li>
                                        </ul>
                                    </td>
                                    <td>오더-메이드 <br />/ 맞춤형</td>
                                </tr>
                            </tbody>
                        </table>
                        <p class="txt_s ta_r">[자료: 빅데이터 활용 개인 맞춤형화장품 비즈니스 모델 개발, 2019, 특허청/한국특허전략개발원, 자료 재편집]</p>
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