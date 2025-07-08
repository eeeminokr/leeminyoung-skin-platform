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
<body class="page_tech"></body>
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
                                <li><a href="${pageContext.request.contextPath}/beautytech/tech_10_1">회사소개</a></li>
                                <li class="active"><a class="last" href="${pageContext.request.contextPath}/beautytech/tech_10_2">피부진단기 모델</a></li>
                            </ul>
                        </li>
                    </ul>
                </div>

                <ul class="depth_03">
                    <li><a href="${pageContext.request.contextPath}/beautytech/tech_10_1">회사소개</a></li>
                    <li class="active"><a href="${pageContext.request.contextPath}/beautytech/tech_10_2">피부진단기 모델</a></li>
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
        <div class="content inbody_model">
            <div class="inner">

                <h2 class="ff_nm bar">피부진단기 모델</h2>

                <div class="box mb_50">
                    <h4 class="tit mb_80"><span class="num">1</span>피부진단기기 모델명: InBody H20N</h4>

                    <h4 class="tit"><span class="num">2</span>피부진단기기 기능</h4>
                    <div class="linebox mb_80">
                       <dl class="of_h">
                            <dt><img width="466" height="372" src="${pageContext.request.contextPath}/resources/static/images_old/tech/inbody_model_img01.jpg" alt="피부진단기기 InBody H20N" /></dt>
                            <dd class="fl">
                                <div class="top">
                                    <span class="txt1">심플한 디자인</span>
                                    <p class="txt2">오트밀 베이지(Oatmeal Beige) / 
                                        블랙 골드(Black Gold)</p>
                                </div>
                                <div class="btm">
                                    <span class="txt1">쉽고 간편한 사용</span>
                                    <p class="txt2">성별, 연령 입력 없이 다이얼을 돌려
                                        신장 입력만으로 인바디검사 진행</p>
                                </div>
                            </dd>
                            <dd class="fr">
                                <div class="top">
                                    <span class="txt1">빠르고 정확한 측정</span>
                                    <p class="txt2">5초 안에 체중, 체지방률, 근육량 및 
                                        내장지방 레벨 측정 가능<br />
                                        *인바디 모바일 앱 이용 시 BMI 및 기초대사량까지 확인 가능</p>
                                </div>
                                <div class="btm">
                                    <span class="txt1">온 가족이 사용</span>
                                    <p class="txt2">인원수 제한 없이 가족 모두 사용</p>
                                </div>
                            </dd>
                       </dl>
                    </div>

                    <h4 class="tit"><span class="num">3</span>피부진단기기 측정 항목</h4>
                    <ul class="bul_cir mb_80">
                        <li><span class="fc_gold fw_500">체중</span> : 몸 전체의 무게<br />
                            즉, 우리 몸을 구성하고 있는 체성분 무게의 합입니다.</li>
                        <li><span class="fc_gold fw_500">체지방률</span> : 체중에서 체지방이 차지하는 비율
                            체중은 같아도 체중을 이루는 체성분의 비율은 다를 수 있습니다. 따라서 체성분분석 결과에 의해 산출한 체지방률은 비만 판정의 필수항목 입니다.
                            표준 범위는 남자는 10~20%, 여자는 18~28% 입니다. 만 18세 미만의 소아는 성별과 신장에 따라 표준 체지방률이 다릅니다.</li>
                        <li><span class="fc_gold fw_500">근육량</span> : 뼈에 붙어 있는 골격근량
                            근육은 통상 심장근, 평활근, 골격근으로 구분하는데 lnBody Dial에서 보여주는 근육량은 골격근량(Skeletal Muscle Mass) 입니다. 
                            골격근량은 인체 근육 중 운동을 통하여 변화될 수 있는 근육으로, 팔과 다리의 근육량이 주로 골격근 입니다.
                            근육은 같은 양의 체지방과 비교하면 부피가 더 작기 때문에 체중이 같아도 근육이 차지하는 비율이 높은지, 체지방이 차지하는 비율이 
                            높은지에 따라 몸매가 다릅니다. 같은 체중이라도 근육량이 많으면 더 탄탄하고 날씬해 보이는 이유가 바로 이 때문입니다.
                            건강하고 날씬한 몸매의 비밀은 근육량 입니다.</li>
                        <li><span class="fc_gold fw_500">내장지방</span> : 복부의 내장 사이에 쌓인 지방
                            지방은 분포 위치에 따라 내장지방, 피하지방, 근육 사이 지방으로 나뉘며, 이 중 복부의 내장지방을 1에서 20까지의 레벨로 표현합니다. 
                            내장지방 레벨이 10이상이면 내장지방형 복부비만이므로 관리가 필요합니다.</li>
                     </ul>

                    <h4 class="tit"><span class="num">4</span>피부진단기기 제품 사양</h4>
                    <ul class="dis_tbl st">
                        <li>
                            <span>기기명</span>
                            <div>InBody H20N</div>
                        </li>
                        <li>
                            <span>생체전기임피던스(BIA) 측정항목</span>
                            <div>생체전기 임피던스(Z : 2가지 주파수 대역(20kHz, 100kHz)에서 각각 5가지 부위별 (오른팔, 왼팔, 몸통, 오른다리, 왼다리)로 10가지 임피던스 측정</div>
                        </li>
                        <li>
                            <span>전극 방식</span>
                            <div>4극 8점 터치식 전극법</div>
                        </li>
                        <li>
                            <span>측정 방법</span>
                            <div>부위별 직접 다주파수 측정법 (Direct Segmental Multi-frequency Bioelectrical Impedance Analysis Method, DSM-BIA 방식)</div>
                        </li>
                        <li>
                            <span>체성분 산출</span>
                            <div>경험변수 배제</div>
                        </li>
                        <li>
                            <span>결과 항목(LCD화면)</span>
                            <div>체중, 체지방률, 근육량, 내장지방레벨</div>
                        </li>
                        <li>
                            <span>사용 전류</span>
                            <div>100㎂</div>
                        </li>
                        <li>
                            <span>소비 전원</span>
                            <div>DC 6V (1.5V AA건전지 4 EA)</div>
                        </li>
                        <li>
                            <span>표시화면</span>
                            <div>커스터마이즈 LCD</div>
                        </li>
                        <li>
                            <span>색상</span>
                            <div>오트밀 베이지(Oatmeal Beige) / 블랙 골드(Black Gold)</div>
                        </li>
                        <li>
                            <span>장비 크기</span>
                            <div>310.3(W) × 356.4(L) × 58.3(H) : mm</div>
                        </li>
                        <li>
                            <span>장비 중량</span>
                            <div>2.7kg</div>
                        </li>
                        <li>
                            <span>측정 시간</span>
                            <div>임피던스 측정 5초 이내</div>
                        </li>
                        <li>
                            <span>동작 환경</span>
                            <div>10 ~ 40℃, 30 ~ 75%RH, 70 ~ 106kPa</div>
                        </li>
                        <li>
                            <span>보관 환경</span>
                            <div>-20 ~ 70℃, 10 ~ 95%RH, 50 ~ 106kPa (No condensation)</div>
                        </li>
                        <li>
                            <span>측정 체중</span>
                            <div>10 ~ 150kg</div>
                        </li>
                        <li>
                            <span>신장 범위</span>
                            <div>50 ~ 300㎝</div>
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