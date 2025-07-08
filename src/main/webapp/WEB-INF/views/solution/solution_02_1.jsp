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
<body class="page_solution">
    <jsp:include page="../common/header.jsp"/>


<!-- Container -->
    <section class="container">

        <!-- 컨텐츠 상단 서브 메뉴 -->
        <div class="lnb_wrap">
            <div class="inner">
                <div class="lnb">
                    <button type="button">SkinLink</button>
                    <ul>
                        <li><a href="${pageContext.request.contextPath}/solution/solution_01_1">자가진단</a></li>
                        <li class="active"><a href="${pageContext.request.contextPath}/solution/solution_02_1">SkinLink</a>
                            <ul>
                                <li class="active"><a href="${pageContext.request.contextPath}/solution/solution_02_1">SkinLink 솔루션 개요</a></li>
                                <li><a href="${pageContext.request.contextPath}/solution/solution_02_2">SkinLink 피부진단</a></li>
                            </ul>
                        </li>
                        <li><a href="${pageContext.request.contextPath}/solution/solution_03_1">AI기반 피부진단</a></li>
                        <li><a class="last" href="${pageContext.request.contextPath}/solution/solution_04_1">진단이력관리</a></li>
                    </ul>
                </div>

                <ul class="depth_03">
                    <li class="active"><a href="${pageContext.request.contextPath}/solution/solution_02_1">SkinLink 솔루션 개요</a></li>
                    <li><a href="${pageContext.request.contextPath}/solution/solution_02_2">SkinLink 피부진단</a></li>
                </ul>
            </div>
        </div>
        <!-- //컨텐츠 상단 서브 메뉴 -->

        <!-- 타이틀 -->
        <div class="title title_bg_03">
            <div class="inner">
                <div class="txtbox">
                    <div class="tit_s ff_nm">My Skin Guide Platform</div>
                    <h3 class="ff_nm">SkinLink</h3>
                    <p>빅데이터를 기반으로 개발한 피부진단 및 <br />
                        제품 추천 알고리즘 플랫폼으로 고객의 <br />
                        피부고민에 적합한 제품을 추천 해 드립니다.</p>
                </div>
            </div>
        </div>
        <!-- //타이틀 -->

        <!-- 컨텐츠 -->
        <div class="content slinfo">
            <div class="inner">

                <h2 class="ff_nm bar">SkinLink 솔루션 개요</h2>
                <div class="box1">
                    <div class="of_h mb_130">
                        <img class="fr" width="425" height="726" src="${pageContext.request.contextPath}/resources/static/images_old/solution/slinfo_img01.jpg" alt="" />
                        <h3>진단·추천솔루션 : SkinLink 개요</h3>
                        <h4 class="tit tit_type1"><span class="num">1</span>유전자 빅데이터 기반 <br /> 
                            피부진단·추천솔루션 SkinLink(스킨링크)</h4>
                        <p class="mb_30">SkinLink는 제주테크노파크, ㈜테라젠바이오, 피엔케이피부임상연구센타㈜, ㈜마켓링크가 <br />공동으로 3,000명 유전자 빅데이터를 기반으로 개발한 피부진단 및 제품 추천 알고리즘 <br />플랫폼입니다.</p>
                        <p>SkinLink는 14가지의 피부관련 DTC유전자, 20여가지의 피부측정결과, 50여가지의 <br />문진정보를 기반으로 고객의 피부고민의 유형과 잠재적인 문제점을 진단하여 해당 <br />
                            피부고민에 적합한 제품을 자동으로 추천합니다.</p>
                    </div>
                    <h4 class="tit"><span class="num">2</span>SkinLink 진단결과</h4>
                    <p class="mb_80">SkinLink 는 유전자 빅데이터 기반의 진단 알고리즘을 토대로 진단 대상자의 피부고민에 대한 잠재적인 위험정도와 위험순위정보를 제공합니다.</p>
                    <div class="linebox ta_c mb_140">
                        <img width="952" height="1162" src="${pageContext.request.contextPath}/resources/static/images_old/solution/slinfo_img02.jpg" alt="" />
                    </div>
                </div>

                <div class="box2">
                    <h3>SkinLink 피부진단·추천 알고리즘 소개</h3>
                    <h4 class="tit"><span class="num">1</span>SkinLink 피부진단 알고리즘</h4>
                    <p class="mb_50">SkinLink는 유전자, 피부측정, 피부문진 통합데이터에 대한 빅데이터 모델링을 통해 개발된 정확도 97%이상이 피부위험 예측모델입니다.</p>
                    <div class="linebox ta_c order1">
                        <ul class="sl_porcess">
                            <li>
                                <div class="round">설문응답</div>
                                <p>설문조사<br />* 총 33개 문항(43개 변수)를<br />모델링에 활용</p>
                                <p>응답 데이터 저장<br />N=43</p>
                            </li>
                            <li>
                                <div class="round">Data 전처리</div>
                                <p>응답 값 Decoding<br />N=43</p>
                                <p>변수의 조합 값 계산<br />Decoding 값의 곱(43C2), N=903<br />43!/{(43-2)!*2!}</p>
                            </li>
                            <li>
                                <div class="round">피부진단 및<br />제품추천 알고리즘</div>
                                <p>진단 알고리즘(유전자별 계수치 연산)</p>
                                <p>유전자별 변이예측 진단결과(7개)</p>
                                <p>raw 데이터 기반의<br />100분위 수 연산(보조 lndex)</p>
                            </li>
                            <li>
                                <div class="round">진단결과 및<br />제품추천</div>
                                <p>진단 보고서</p>
                                <p>보고서 항목별 제품 추천</p>
                            </li>
                        </ul>
                    </div>
                    <div class="linebox ta_c order2 mb_130">
                        <p class="txt1 mb_40">총 33개 문진항목</p>
                        <div class="of_h mb_70">
                            <img class="fl" width="539" height="572" src="${pageContext.request.contextPath}/resources/static/images_old/solution/slinfo_img03.jpg" alt="" />
                            <img class="fr" width="539" height="572" src="${pageContext.request.contextPath}/resources/static/images_old/solution/slinfo_img04.jpg" alt="" />
                        </div>
                        <img class="mb_30" width="242" height="132" src="${pageContext.request.contextPath}/resources/static/images_old/solution/slinfo_img05.jpg" alt="" />
                        <p class="txt2 mb_20">DTC 유전자 변이위험 예측</p>
                        <img width="751" height="423" src="${pageContext.request.contextPath}/resources/static/images_old/solution/slinfo_img06.jpg" alt="" />
                    </div>

                    <h4 class="tit"><span class="num">2</span>SkinLink 통합데이터 개요</h4>
                    <p class="mb_60">SkinLink 통합데이터는 제주테크노파크, ㈜테라젠바이오, 피엔케이피부임상연구센타㈜, ㈜마켓링크가 공동으로 구축한 국내 최대규모의 <br />
                        피부관련 통합데이터로서 14가지의 피부관련 DTC유전자, 20여가지의 피부측정결과, 50여가지의 문진정보를 포함합니다.</p>
                    <div class="table_wrap mb_120">
                        <p class="tbl_top">피부문진데이터</p>
                        <table class="tbl_st1" summary="피부문진데이터 - 구분, 항목수, 설문항목">
                            <caption>피부문진데이터 표</caption>
                            <colgroup>
                                <col width="184px" />
                                <col width="112px" />
                                <col width="904px" />
                            </colgroup>
                            <thead>
                                <tr>
                                    <th>구분</th>
                                    <th>항목수</th>
                                    <th>설문항목</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>피부타입</td>
                                    <td>1</td>
                                    <td class="ta_l">피부타입</td>
                                </tr>
                                <tr>
                                    <td>피부특성</td>
                                    <td>6</td>
                                    <td class="ta_l">세안 후 당김, 화장이 쉽게 지워짐, T존 건조/유분, U존 건조/유분, 모공상태, 피부 윤기</td>
                                </tr>
                                <tr>
                                    <td>피부민감</td>
                                    <td>5</td>
                                    <td class="ta_l">화장품 변화 트러블, 날씨 피부 발적, 알러지성 발진, 스트레스 피부 트러블, 실핏줄</td>
                                </tr>
                                <tr>
                                    <td>피부고민</td>
                                    <td>6</td>
                                    <td class="ta_l">기미/점/주근깨, 칙칙함, 균일한 톤, 태양 민감, 색소침착, 잔주름</td>
                                </tr>
                                <tr>
                                    <td>생활습관</td>
                                    <td>15</td>
                                    <td class="ta_l">기름지고 단 음식, 야외활동, 자외선 차단제, 피부악화(다이어트), 흡연량, 스트레스, 피부과 시술, 임신 출산 경험, 
                                        피부악화(임신, 출산), 수면시간, 각질관리, 손톱자국, 화장품 트러블, T존 U존 트러블, 스트레스 트러블</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <div class="table_wrap mb_120">
                        <p class="tbl_top">피부측정데이터</p>
                        <table class="tbl_st1" summary="피부측정데이터 - 대분류, 평가항목, 측정장비">
                            <caption>피부측정데이터 표</caption>
                            <colgroup>
                                <col width="184px" />
                                <col width="462px" />
                                <col width="554px" />
                            </colgroup>
                            <thead>
                                <tr>
                                    <th>대분류</th>
                                    <th>평가항목</th>
                                    <th>측정장비</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td rowspan="8">주름</td>
                                    <td>주름 평균 거칠기(눈가)</td>
                                    <td class="ta_l">Antera 3D CS</td>
                                </tr>
                               <tr>
                                    <td class="border_l">주름 최대 깊이(눈가)</td>
                                    <td class="ta_l">Antera 3D CS</td>
                               </tr>
                               <tr>
                                    <td class="border_l">주름 평균 거칠기(미간)</td>
                                    <td class="ta_l">Antera 3D CS</td>
                               </tr>
                               <tr>
                                    <td class="border_l">주름 최대 깊이(미간)</td>
                                    <td class="ta_l">Antera 3D CS</td>
                                </tr>
                                <tr>
                                    <td class="border_l">주름 평균 거칠기(눈가)</td>
                                    <td class="ta_l">Primos CR</td>
                                </tr>
                                <tr>
                                    <td class="border_l">주름 최대 깊이(눈가)</td>
                                    <td class="ta_l">Primos CR</td>
                                </tr>
                                <tr>
                                    <td class="border_l">주름 평균 거칠기(미간)</td>
                                    <td class="ta_l">Primos CR</td>
                                </tr>
                                <tr>
                                    <td class="border_l">주름 최대 깊이(미간)</td>
                                    <td class="ta_l">Primos CR</td>
                                </tr>
                                <tr>
                                    <tr>
                                        <td rowspan="4">보습</td>
                                        <td>피부 수분량(미간)</td>
                                        <td class="ta_l">Comeometer</td>
                                    </tr>
                                    <tr>
                                        <td class="border_l">피부 수분량(볼)</td>
                                        <td class="ta_l">Comeometer</td>
                                    </tr>
                                    <tr>
                                        <td class="border_l">경표피수분증발량(미간)</td>
                                        <td class="ta_l">Tewameter</td>
                                    </tr>
                                    <tr>
                                        <td class="border_l">경표피수분증발량(볼)</td>
                                        <td class="ta_l">Tewameter</td>
                                    </tr>
                                </tr>
                                <tr>
                                    <td rowspan="2">미백</td>
                                    <td>피부 멜라닌양(색소침착부위)</td>
                                    <td class="ta_l">Mexameter</td>
                                </tr>
                                <tr>
                                    <td class="border_l">피부 멜라닌양(비색소침착부위)</td>
                                    <td class="ta_l">Mexameter</td>
                                </tr>
                                <tr>
                                    <td>홍반</td>
                                    <td>피부 홍반량(비색소침착부위)</td>
                                    <td class="ta_l">Mexameter</td>
                                </tr>
                                <tr>
                                    <td rowspan="2">피부밝기</td>
                                    <td>피부 밝기(색소침착부위)</td>
                                    <td class="ta_l">Spectrophotometer</td>
                                </tr>
                                <tr>
                                    <td class="border_l">피부 밝기(비색소침착부위)</td>
                                    <td class="ta_l">Spectrophotometer</td>
                                </tr>
                                <tr>
                                    <td rowspan="2">유분</td>
                                    <td>피부 유분함유량(미간)</td>
                                    <td class="ta_l">Sebumeter</td>
                                </tr>
                                <tr>
                                    <td class="border_l">부 유분함유량(볼)</td>
                                    <td class="ta_l">Sebumeter</td>
                                </tr>
                                <tr>
                                    <td>민감성</td>
                                    <td>젖산자상검사</td>
                                    <td class="ta_l">문진</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <div class="table_wrap">
                        <p class="tbl_top">유전자 데이터</p>
                        <table class="tbl_st1" summary="유전자 데이터 - DTC 피부 검사 항목, 유전자, DTC 피부 검사 항목, 유전자">
                            <caption>유전자 데이터 표</caption>
                            <colgroup>
                                <col width="25%" />
                                <col width="25%" />
                                <col width="25%" />
                                <col width="25%" />
                            </colgroup>
                            <thead>
                                <tr>
                                    <th>DTC 피부 검사 항목</th>
                                    <th>유전자</th>
                                    <th>DTC 피부 검사 항목</th>
                                    <th>유전자</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>기미/주근깨</td>
                                    <td>ASIP</td>
                                    <td>피부노화</td>
                                    <td>H2AFY2</td>
                                </tr>
                                <tr>
                                    <td>색소침착</td>
                                    <td>MC1R_1</td>
                                    <td>튼살</td>
                                    <td>ELN</td>
                                </tr>
                                <tr>
                                    <td>색소침착</td>
                                    <td>SLC24A5</td>
                                    <td>여드름발생</td>
                                    <td>LGR6</td>
                                </tr>
                                <tr>
                                    <td>색소침착</td>
                                    <td>TYR</td>
                                    <td>여드름발생</td>
                                    <td>SELL</td>
                                </tr>
                                <tr>
                                    <td>태양노출 후 태닝반응</td>
                                    <td>MC1R_2</td>
                                    <td>피부염증</td>
                                    <td>LCE3D</td>
                                </tr>
                                <tr>
                                    <td>색소침착</td>
                                    <td>HERC2</td>
                                    <td>피부염증</td>
                                    <td>IL13</td>
                                </tr>
                                <tr>
                                    <td>피부노화</td>
                                    <td>AGER</td>
                                    <td>각질</td>
                                    <td>FCN1</td>
                                </tr>
                            </tbody>
                        </table>
                        <p class="txt_s ta_r">출처 : (주)테라젠바이오 진스타일 피부관련 유전자 검사항목</p>
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