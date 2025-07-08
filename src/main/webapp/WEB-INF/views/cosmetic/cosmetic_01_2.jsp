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
                    <li class="active"><a href="${pageContext.request.contextPath}/cosmetic/cosmetic_01_2">맞춤형화장품 기술개발 동향</a></li>
                    <li><a href="${pageContext.request.contextPath}/cosmetic/cosmetic_01_3">맞춤형화장품 시장동향</a></li>
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
        <div class="content tech_dev">
            <div class="inner">

                <h2 class="ff_nm bar">맞춤형화장품 기술개발 동향</h2>

                <div class="box1">
                    <div class="of_h mb_50"> 
                        <img class="fr" width="670" height="560" src="${pageContext.request.contextPath}/resources/static/images_old/cosmetic/tech_dev_img01.jpg" alt="" />         
                        <h3>맞춤형화장품 정의 및 개념</h3>
                        <p>2016년 3월 식품의약품안전처에서 화장품의 혼합·판매와 관련하여 맞춤형화장품 판매 시범사업 안전관리 계획을 발표한 이후, 맞춤형화장품의 다양한 부분에서 진전이 있었습니다.이를 일반적인 맞춤형화장품 개발의 4가지 단계별로 적용되는 기술을 나열하면 다음과 같습니다.</p>
                    </div>

                    <div class="process_box mb_230">
                        <dl>
                            <dt>소비자 피부상태<br />및 고민 파악</dt>
                            <dd>
                                <div class="tit"><span class="num_s">1</span>피부 진단 및 평가</div>
                                <p class="txt1">문진, 컨설팅 프로그램 <br />피부 기기 측정/진단 <br />유전자 분석/진단 툴 <br />IoT-피부관리솔루션</p>
                                <span class="arrow_dn"></span>
                                <p class="txt2">신뢰성·재현성 <br />기술확보</p>
                            </dd>
                        </dl>
                        <dl>
                            <dt>연구(처방)</dt>
                            <dd>
                                <div class="tit"><span class="num_s">2</span>소재/처방 연구</div>
                                <p class="txt1">베이스 구성, 종류 <br />특정 성분, 종류 <br />안정성 점검</p>
                                <span class="arrow_dn"></span>
                                <p class="txt2">구현·실현성 차별성</p>
                            </dd>
                        </dl>
                        <dl>
                            <dt>제조(혼합)</dt>
                            <dd>
                                <div class="tit"><span class="num_s">3</span>제조 방법</div>
                                <p class="txt1">공장, 현장 <br />블랜딩 유무 <br />혼합주체(셀프) <br />혼합기기(설비)</p>
                                <span class="arrow_dn"></span>
                                <p class="txt2">효율·편리성</p>
                            </dd>
                        </dl>
                        <dl>
                            <dt>포장 및 전달(판매)</dt>
                            <dd>
                                <div class="tit"><span class="num_s">4</span>포장, 판매</div>
                                <p class="txt1">법적사항 <br />고객 필요정보 <br />품질관리 <br />판매방법션</p>
                                <span class="arrow_dn"></span>
                                <p class="txt2">최종-사업성</p>
                            </dd>
                        </dl>
                    </div>
                </div>

                <div class="box2">
                    <div class="of_h mb_110">
                        <img class="fr" width="670" height="560" src="${pageContext.request.contextPath}/resources/static/images_old/cosmetic/tech_dev_img02.jpg" alt="" />
                        <h3>맞춤형화장품 <br />
                            핵심기술 분야</h3>
                        <p><span class="num_s">1</span> 소비자의 피부 상태 및 고민 파악을 위한 피부 진단 및 
                            평가 기술 (문진, 컨설팅프로그램, 피부진단기기, 
                            유전자 분석, 뷰티디바이스를 통한 피부관리 솔루션)</p>
                            
                        <p><span class="num_s">2</span> 여러 소비자들의 만족도를 높이기 위한 다양한 
                        맞춤형화장품을 제조하기 위한 소재(원료) 및 처방 기술</p>
                        
                        <p><span class="num_s">3</span> 공장에서 제조할 것인지 현장에서 즉시 제조할 것인지,
                        기존 공장 생산 방식이 아닌 현장에서 제조하는 경우에 
                        Smart Factory와 같은 제조 시스템을 구축하는 기술</p>
                        
                        <p><span class="num_s">4</span> 이외에 포장과 같은 화장품 용기, NFC 기술, 
                            인터페이스 기술 등 능동적 기능을 갖춘 제품 포장 기술인 
                            Smart Packaging 기술</p>
                    </div>

                    <p class="mb_50">맞춤형화장품에 적용되는 기술의 종류에 따라 다음의 4가지 모델로 구분이 가능하며 각각의 특징 및 진단시간 등을 표로 정리 가능합니다.</p>

                    <div class="table_wrap mb_230">
                        <table class="tbl_st1" summary="맞춤형화장품 4가지 모델의 특징 및 진단시간을 정리한 표 - 구분, 1세대 설문형, 2세대 피부진단형, 3세대 유전자진단형, 4세대 맞춤형">
                            <caption>맞춤형화장품 4가지 모델의 특징 및 진단시간</caption>
                            <colgroup>
                                <col width="10%" />
                                <col width="22%" />
                                <col width="22%" />
                                <col width="23%" />
                                <col width="23%" />
                            </colgroup>
                            <thead>
                                <tr>
                                    <th>구분</th>
                                    <th>1세대 설문형</th>
                                    <th>2세대 피부진단형</th>
                                    <th>3세대 유전자진단형</th>
                                    <th>4세대 맞춤형</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>특징</td>
                                    <td>설문지를 통해 자가 진단한 <br />
                                        피부 타입 및 고민에 대한 대응</td>
                                    <td>피부진단 장비의 과학적 자료를 <br />
                                        근거로 피부 문제점에 대한 대응</td>
                                    <td>피부 세포, 혈액 및 타액 등 <br />
                                        유전자 분석을 통한 <br />
                                        바이오기법 대응</td>
                                    <td>빅데이터, IoT,AI 등 <br />
                                        4차 산업혁명 관련 <br />
                                        기술을 통한 대응</td>
                                </tr>
                                <tr>
                                    <td>필요장비</td>
                                    <td>필요없음</td>
                                    <td>다양한 피부진단 장비</td>
                                    <td>유전자 체취 KIT, 유전자 분석 <br />
                                        및 판독 장비 등</td>
                                    <td>4차 산업혁명 기술을 통한 <br />
                                        자가 진단 장비 등</td>
                                </tr>
                                <tr>
                                    <td>진단시간</td>
                                    <td>5분 이내</td>
                                    <td>30분 이내</td>
                                    <td>2시간 이내</td>
                                    <td>즉시</td>
                                </tr>
                                <tr>
                                    <td>순서도</td>
                                    <td class="img_padding"><img src="${pageContext.request.contextPath}/resources/static/images_old/cosmetic/table_order1.png" alt="고객→설문조사→최적처방→공급" /></td>
                                    <td class="img_padding"><img src="${pageContext.request.contextPath}/resources/static/images_old/cosmetic/table_order2.png" alt="고객→피부측정→맞춤처방→공급" /></td>
                                    <td class="img_padding"><img src="${pageContext.request.contextPath}/resources/static/images_old/cosmetic/table_order3.png" alt="고객→유전자소스체취→유전자분석→진단→맞춤처방→공급" /></td>
                                    <td class="img_padding"><img src="${pageContext.request.contextPath}/resources/static/images_old/cosmetic/table_order4.png" alt="고객→자가진단→맞춤처방→공급→제품추천→공급" /></td>
                                </tr>
                                <tr>
                                    <td>단점</td>
                                    <td>기존품과 차별점 부족</td>
                                    <td>피부진단 기기 준비 및 다량 <br />
                                        측정된 자료 확보</td>
                                    <td>유전자 진단 기술 및 기기 확보, <br />
                                        전문기관과의 MOU</td>
                                    <td>IoT 기술 및 빅데이터 확보, <br />
                                        실시간 컨설팅</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>

                    <div class="graph_wrap mb_40">
                        <div class="of_h">
                            <div class="fl">
                                국내외 기술 선도기업들의 맞춤형화장품 제품별 
                                기술적용 현황을 소비자 가격으로 구분하여 
                                정리하면 아래의 그림과 같습니다.
                            </div>
                            <ul class="fr graph_color">
                                <li>맞춤 제조 후 배송, 구독형</li>
                                <li>현장 즉석 제조 판매</li>
                                <li>기성 제품 추천 판매</li>
                                <li>매일 피부 상태에 따라 디바이스로 성분배합, 구독형/일회성</li>
                                <li>기성 제품 배송, 일회성</li>
                            </ul>
                        </div>

                        <div class="img">
                            <img width="1198" height="1134" src="${pageContext.request.contextPath}/resources/static/images_old/cosmetic/tech_dev_img03.jpg" alt="맍추형화장품 제품별 기술적용 현황을 소비자 가격으로 구분한 그래프 이미지" />
                        </div>
                    </div>
                    <p class="ta_r txt_s mb_220">[그림] 선진사 제품 가격 및 진단기술 매트릭스<br />
                        [자료: 빅데이터 활용 개인 맞춤형화장품 비즈니스 모델 개발, 2019, 특허청/한국특허전략개발원, 자료 재편집]</p>

                    <p class="mb_30">개인 맞춤형화장품은 고객 취향에 따라 섞어 쓰거나 특정 성분과 향, 색소 등을 조합하는 단계를 넘어, 4차 산업혁명 시대를 맞아 빅데이터, 인공지능, 사물인터넷 등 ICT기술과 첨단 바이오기술이 접목되고 융복합화하면서 신규 개인 맞춤 기술과 비즈니스 모델을 구축하며 빠르게 변신하고 있습니다.</p>
                    <p class="mb_100">고령화 사회가 도래하면서 뷰티 산업은 젊게 보이기 위해 꾸미는 메이크업 시장에서 젊음을 유지 또는 실제로 젊어지기 위한 스킨케어 시장으로 전환되고 있으며, 이에 따라 피부의 상태를 정확히 진단하고, 스킨케어 상품을 제안해주는 서비스에 인공지능, IoT, VR 등의 ICT 기술들이 적용되고 있는 추세입니다.</p>
                    <h4 class="tit"><span class="num">1</span>인공지능(AI, Artificial Intelligence)</h4>
                    <p class="mb_90">무수한 제품 리뷰, 성분 리스트, 인플루언서(Influencer)의 컨텐츠가 범람하는 가운데, 고객이 올바른 제품과 기술을 찾는데 직면하는 가장 큰 과제는 고객의 <br />관심사항에 대해 말할 수 있는 정통하고 권위있는 목소리를 식별하는 것입니다. 이에 인공지능 기술에 기계학습(machine learning), 안면인식, 그리고 데이터 <br />탐색 알고리즘을 접목하여 고객 개개인의 수요에 기반한 개인화된 추천 서비스가 각광받고 있습니다.</p>
                    <h4 class="tit"><span class="num">2</span>증강현실(AR, Augmented Reality)</h4>
                    <p class="mb_90">최근 한 조사에 따르면 밀레니얼 소비자의 78%는 메이크업 제품을 구매하기 전에 얼굴이 어떻게 변하는지를 확인 가능하다면 <br />보다 손쉽게 제품 구입을 결정하는 경향을 보입니다. </p>
                    <h4 class="tit"><span class="num">3</span>스마트 기기(Smart Device)</h4>
                    <p class="mb_90">최근 한가지로 모든 것을 해결(one size fits all)하는 방식에서 벗어나, 매장 구성과 판매 방식을 통한 색다른 경험을 제공하여 브랜드 충성도와 고객 유지율을 <br />높이고 있습니다. 이때 디지털화는 소비자 충성도를 높이고 지출을 창출하는데 중요한 역할을 합니다.</p>
                    <h4 class="tit"><span class="num">4</span>개인 유전자 맞춤형화장품</h4>
                    <p>개인 맞춤을 위한 과학기술은 유전학, 미생물군유전체(microbiome), 후생유전학(epigenetics) 분야에서 폭발적으로 발전하고 있습니다. 이로 인해 개인 맞춤화가 <br />새로운 수준으로 확대되어, 화장품 성분에 반응하는 개개인의 바이오마커  및 환경요인에 근거하여 개발된 완전 맞춤 처방의 뷰티 솔루션 개발이 활발합니다.</p>
                </div>


            </div>
        </div>
        <!-- //컨텐츠 -->
    </section>
    <!-- //Container -->


    <jsp:include page="../common/footer.jsp"/>
</body>
</html>