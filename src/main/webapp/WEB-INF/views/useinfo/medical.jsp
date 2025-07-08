<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%> 
 
<!-- 의료기관 정보 팝업창 --> 

 <div class="popup_bg" style="display: none;"></div>
 <div class="popup pop_useful pop_medical" style="display: none;">
    <div class="pop_head">
        <h2>의료기관 정보</h2>
        <button type="button" class="btn_close"><span class="blind">팝업창 닫기</span></button>
    </div>
    <!--
    <div class="pop_cont">
        <div class="pop_inner">
            <p class="txt">의료기관</p>

            <div class="scroll_auto">
                <ul class="medical_list">
                    <li>
                        <div class="inbox">
                            <div class="imgbox">
                                <span class="label1">관광지</span>
                                <img width="320" height="170" src="${pageContext.request.contextPath}/resources/static/images_old/tour/list_img01.jpg" alt="" />
                                <span class="t_star s_4"><em class="blind">별4개</em></span>
                            </div>
                            <div class="txtbox" style="height: 80px;">
                                <div class="t_tit">성산일출봉(UNESCO 세계자연유산)</div>
                                <div class="t_info">
                                    <span class="label2">서귀포시</span>
                                    <span class="gt">&gt;</span>
                                    <span class="label3">성산</span>
                                </div>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="inbox">
                            <div class="imgbox">
                                <span class="label1">관광지</span>
                                <img width="320" height="170" src="${pageContext.request.contextPath}/resources/static/images_old/tour/list_img02.jpg" alt="" />
                                <span class="t_star s_3"><em class="blind">별3개</em></span>
                            </div>
                            <div class="txtbox">
                                <div class="t_tit">우도(해양도립공원)</div>
                                <div class="t_info">
                                    <span class="label2">섬 속의 섬</span>
                                    <span class="gt">&gt;</span>
                                    <span class="label3">우도</span>
                                </div>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="inbox">
                            <div class="imgbox">
                                <span class="label1">관광지</span>
                                <img width="320" height="170" src="${pageContext.request.contextPath}/resources/static/images_old/tour/list_img03.jpg" alt="" />
                                <span class="t_star s_5"><em class="blind">별5개</em></span>
                            </div>
                            <div class="txtbox">
                                <div class="t_tit">사려니숲길</div>
                                <div class="t_info">
                                    <span class="label2">제주시</span>
                                    <span class="gt">&gt;</span>
                                    <span class="label3">조천</span>
                                </div>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="inbox">
                            <div class="imgbox">
                                <span class="label1">관광지</span>
                                <img width="320" height="170" src="${pageContext.request.contextPath}/resources/static/images_old/tour/list_img04.jpg" alt="" />
                                <span class="t_star s_5"><em class="blind">별5개</em></span>
                            </div>
                            <div class="txtbox">
                                <div class="t_tit">카멜리아힐</div>
                                <div class="t_info">
                                    <span class="label2">서귀포시</span>
                                    <span class="gt">&gt;</span>
                                    <span class="label3">만덕</span>
                                </div>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="inbox">
                            <div class="imgbox">
                                <span class="label1">관광지</span>
                                <img width="320" height="170" src="${pageContext.request.contextPath}/resources/static/images_old/tour/list_img05.jpg" alt="" />
                                <span class="t_star s_5"><em class="blind">별5개</em></span>
                            </div>
                            <div class="txtbox">
                                <div class="t_tit">협재해수욕장</div>
                                <div class="t_info">
                                    <span class="label2">제주시</span>
                                    <span class="gt">&gt;</span>
                                    <span class="label3">한림</span>
                                </div>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="inbox">
                            <div class="imgbox">
                                <span class="label1">관광지</span>
                                <img width="320" height="170" src="${pageContext.request.contextPath}/resources/static/images_old/tour/list_img06.jpg" alt="" />
                                <span class="t_star s_5"><em class="blind">별5개</em></span>
                            </div>
                            <div class="txtbox">
                                <div class="t_tit">월정리해변</div>
                                <div class="t_info">
                                    <span class="label2">제주시</span>
                                    <span class="gt">&gt;</span>
                                    <span class="label3">구좌</span>
                                </div>
                            </div>
                        </div>
                    </li>
                </ul>
            </div>
            <div class="pagination" id="Mpagination">
                <ul>
                    <li class="first" id="arrow"><span class="fa-solid fa-angles-left"></span></li>
                    <li class="prev" id="arrow"><span class="fa-solid fa-angle-left"></span></li>
                   <ul>
                    <li class="active"><span >1</span></li>
                    <li><span >2</span></li>
                    <li><span >3</span></li>
                    <li><span >4</span></li>
                    <li><span >5</span></li>
                    <li><span >6</span></li>
                    </ul>
                    <li class="next" id="Marrow"><span class="fa-solid fa-angle-right"></span></li>
                    <li class="last" id="Marrow"><span class="fa-solid fa-angles-right"></span></li>
                </ul>
            </div>

        </div>
    </div>
</div>

-->
<div class="pop_cont">
    <div class="pop_inner scroll_auto">
        <h3>응급실 운영(야간,휴일)</h3>
        <div class="tbl_wrap">
            <table class="tbl_st2 st st3" summary="응급실 운영(야간,휴일) 안내 표 - 기관명, 전화번호, 도로명주소 ">
                <caption>응급실 운영(야간,휴일) 안내표</caption>
                <colgroup>
                    <col width="28%" />
                    <col width="28%" />
                    <col width="44%" />
                </colgroup>
                <thead>
                    <tr>
                        <th class="border_bt_td">기관명</th>
                        <th class="border_bt_td">전화번호</th>
                        <th class="border_bt_td">도로명주소</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        
                        <td>한마음병원</td>
                        <td>064-750-9119</td>
                        <td class="ta_l">제주특별자치도 제주시 연신로 52, (이도이동)</td>
                    </tr>
                    <tr>
                        <td>의료법인중앙의료재단 중앙병원</td>
                        <td>064-786-7119</td>
                        <td class="ta_l">제주특별자치도 제주시 월랑로 91, (이호이동)</td>
                    </tr>
                    <tr>
                        <td>제주한라병원</td>
                        <td>064-740-5159</td>
                        <td class="ta_l">제주특별자치도 제주시 도령로 65, (연동)</td>
                    </tr>
                    <tr>
                        <td>제주대학교병원</td>
                        <td>064-717-1904</td>
                        <td class="ta_l">제주특별자치도 제주시 아란13길 15, (아라일동)</td>
                    </tr>
                    <tr>
                        <td>제주특별자치도서귀포의료원</td>
                        <td>064-730-3001</td>
                        <td class="ta_l">제주특별자치도 서귀포시 장수로 47, (동홍동)</td>
                    </tr>
                    <tr>
                        <td>의료법인혜인의료재단한국병원</td>
                        <td>064-750-0119</td>
                        <td class="ta_l">제주특별자치도 제주시 서광로 193 (삼도일동)</td>
                    </tr>
                    <tr>
                        <td>제주특별자치도제주의료원</td>
                        <td>064-720-2119</td>
                        <td class="ta_l">제주특별자치도 제주시 산천단남길 10 (아라일동)</td>
                    </tr>
                </tbody>
            </table>
        </div>

        <h3>가정의학과/내과(주말, 공휴일)</h3>
        <div class="tbl_wrap">
            <table class="tbl_st2 st st3" summary="가정의학과/내과(주말, 공휴일) 안내 표 - 병원명, 전화번호, 도로명주소, 토요일 진료, 일요일 진료, 공휴일 진료">
                <caption>가정의학과/내과(주말, 공휴일) 안내표</caption>
                <colgroup>
                    <col width="18%" />
                    <col width="12%" />
                    <col width="40%" />
                    <col width="10%" />
                    <col width="10%" />
                    <col width="10%" />
                </colgroup>
                <thead>
                    <tr>
                        <th class="border_bt_td">병원명</th>
                        <th class="border_bt_td">전화번호</th>
                        <th class="border_bt_td">도로명주소</th>
                        <th class="border_bt_td">토요일 진료</th>
                        <th class="border_bt_td">일요일 진료</th>
                        <th class="border_bt_td">공휴일 진료</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>연동365일의원</td>
                        <td>064-727-3651</td>
                        <td class="ta_l">제주특별자치도 제주시 연북로 99 (연동) 2층</td>
                        <td>09:00~24:00</td>
                        <td>09:00~24:00</td>
                        <td>09:00~24:00</td>
                    </tr>
                    <tr>
                        <td>파랑새의원</td>
                        <td>064-711-8042</td>
                        <td class="ta_l">제주특별자치도 제주시 노연로 90, 2층 (연동)</td>
                        <td>09:00~22:10</td>
                        <td>09:00~22:10</td>
                        <td>09:00~22:10</td>
                    </tr>
                    <tr>
                        <td>작은성모의원</td>
                        <td>064-756-5300</td>
                        <td class="ta_l">제주특별자치도 제주시 화삼북로 63 (삼양이동)</td>
                        <td>09:00~14:00</td>
                        <td>-</td>
                        <td>09:00~13:00</td>
                    </tr>
                    <tr>
                        <td>세화의원</td>
                        <td>064-783-2772</td>
                        <td class="ta_l">제주특별자치도 제주시 구좌읍 세화5길 2,</td>
                        <td>08:30~13:00</td>
                        <td>-</td>
                        <td>09:00~13:00</td>
                    </tr>
                    <tr>
                        <td>일도365의원</td>
                        <td>064-753-1365</td>
                        <td class="ta_l">제주특별자치도 제주시 고마로 115 3층</td>
                        <td>08:00~21:00</td>
                        <td>09:00~21:00</td>
                        <td>08:00~21:00</td>
                    </tr>
                    <tr>
                        <td>하나로의원</td>
                        <td>064-713-1099</td>
                        <td class="ta_l">제주특별자치도 제주시 애월읍 일주서로 7136,</td>
                        <td>08:30~13:00</td>
                        <td>-</td>
                        <td>08:30~14:00</td>
                    </tr>
                    <tr>
                        <td>365 제주의원</td>
                        <td>064-753-4645</td>
                        <td class="ta_l">제주특별자치도 제주시 서광로 302, 2,3,4,5,6층 (이도이동)</td>
                        <td>07:30~21:00</td>
                        <td>08:30~21:00</td>
                        <td>08:30~21:00</td>
                    </tr>
                    <tr>
                        <td>하나가정의학과의원</td>
                        <td>064-743-8111</td>
                        <td class="ta_l">제주특별자치도 제주시 월랑로 59, 2층 (노형동)</td>
                        <td>08:30~14:00</td>
                        <td>-</td>
                        <td>08:30~14:00</td>
                    </tr>
                    <tr>
                        <td>제주라파의원</td>
                        <td>064-713-7582</td>
                        <td class="ta_l">제주특별자치도 제주시 연북로 34, 2층 (노형동,노성빌딩)</td>
                        <td>09:00~17:00</td>
                        <td>-</td>
                        <td>09:00~13:00</td>
                    </tr>
                    <tr>
                        <td>모아의원</td>
                        <td>064-742-7586</td>
                        <td class="ta_l">제주특별자치도 제주시 과원북4길 5, (노형동)</td>
                        <td>09:00~16:00</td>
                        <td>-</td>
                        <td>09:00~13:00</td>
                    </tr>
                    <tr>
                        <td>삼화365플러스의원</td>
                        <td>064-723-3650</td>
                        <td class="ta_l">제주특별자치도 제주시 건주로 43, 2층 (도련일동)</td>
                        <td>09:00~21:00</td>
                        <td>09:00~21:00</td>
                        <td>09:00~21:00</td>
                    </tr>
                    <tr>
                        <td>늘푸른가정의학과의원</td>
                        <td>064-752-9696</td>
                        <td class="ta_l">제주특별자치도 제주시 중앙로 132, 2층 (삼도이동)</td>
                        <td>08:30~15:00</td>
                        <td>-</td>
                        <td>08:30~14:00</td>
                    </tr>
                    <tr>
                        <td>더맑은이비인후과의원</td>
                        <td>064-755-7588</td>
                        <td class="ta_l">제주특별자치도 제주시 동화로 28, 2층 (화북일동)</td>
                        <td>08:30~13:00</td>
                        <td>-</td>
                        <td>08:30~13:00</td>
                    </tr>
                    <tr>
                        <td>조대경안심내과의원</td>
                        <td>064-742-7524</td>
                        <td class="ta_l">제주특별자치도 제주시 노형8길 2 (노형동, 온유빌딩3층)</td>
                        <td>08:30~13:00</td>
                        <td>-</td>
                        <td>09:00~13:00</td>
                    </tr>
                    <tr>
                        <td>조천부부의원</td>
                        <td>064-782-7491</td>
                        <td class="ta_l">제주특별자치도 제주시 조천읍 신북로 237,</td>
                        <td>08:30~13:00</td>
                        <td>-</td>
                        <td>08:30~12:00</td>
                    </tr>
                    <tr>
                        <td>용담의원</td>
                        <td>064-711-8511</td>
                        <td class="ta_l">제주특별자치도 제주시 용담로 92, 2층 (용담이동)</td>
                        <td>08:00~12:00</td>
                        <td>-</td>
                        <td>08:00~12:00</td>
                    </tr>
                    <tr>
                        <td>강형윤가정의학과의원</td>
                        <td>064-713-0332</td>
                        <td class="ta_l">제주특별자치도 제주시 우정로 59</td>
                        <td>08:30~13:00</td>
                        <td>-</td>
                        <td>09:00~12:00</td>
                    </tr>
                    <tr>
                        <td>건강369의원</td>
                        <td>064-722-3698</td>
                        <td class="ta_l">제주특별자치도 제주시 일주동로 227, 3,4층 (화북일동)</td>
                        <td>09:00~22:00</td>
                        <td>09:00~22:00</td>
                        <td>09:00~22:00</td>
                    </tr>
                    <tr>
                        <td>바른정의원</td>
                        <td>064-723-3355</td>
                        <td class="ta_l">제주특별자치도 제주시 성지로 76-1, (일도이동)</td>
                        <td>08:30~12:00</td>
                        <td>-</td>
                        <td>08:30~12:00</td>
                    </tr>
                    <tr>
                        <td>제주국제공항의원</td>
                        <td>064-797-2595</td>
                        <td class="ta_l">제주특별자치도 제주시 공항로 2, 4층 (용담이동)</td>
                        <td>07:00~22:00</td>
                        <td>07:00~22:00</td>
                        <td>07:00~22:00</td>
                    </tr>
                    <tr>
                        <td>911매일의원</td>
                        <td>064-724-0911</td>
                        <td class="ta_l">제주특별자치도 제주시 중앙로 286, (이도이동)</td>
                        <td>09:00~23:00</td>
                        <td>09:00~23:00</td>
                        <td>09:00~23:00</td>
                    </tr>
                    <tr>
                        <td>탑동365일의원</td>
                        <td>064-756-3650</td>
                        <td class="ta_l">제주특별자치도 제주시 탑동로 24 (삼도이동)</td>
                        <td>09:00~23:00</td>
                        <td>09:00~23:00</td>
                        <td>09:00~23:00</td>
                    </tr>
                    <tr>
                        <td>모딜리아니의원</td>
                        <td>064-727-3652</td>
                        <td class="ta_l">제주특별자치도 제주시 서광로 278 (이도이동)</td>
                        <td>07:00~12:00</td>
                        <td>-</td>
                        <td>07:00~12:00</td>
                    </tr>
                    <tr>
                        <td>제주필의원</td>
                        <td>064-726-6300</td>
                        <td class="ta_l">제주특별자치도 제주시 일주동로 229, (화북일동)</td>
                        <td>09:00~12:30</td>
                        <td>-</td>
                        <td>09:00~12:30</td>
                    </tr>
                    <tr>
                        <td>연세가정의학과의원</td>
                        <td>064-756-7337</td>
                        <td class="ta_l">제주특별자치도 제주시 일주동로 179, (화북일동)</td>
                        <td>09:00~16:00</td>
                        <td>-</td>
                        <td>09:00~13:00</td>
                    </tr>
                    <tr>
                        <td>하동바툼낭의원</td>
                        <td>064-713-8225</td>
                        <td class="ta_l">제주특별자치도 제주시 애월읍 하귀로 35,</td>
                        <td>08:30~14:00</td>
                        <td>-</td>
                        <td>08:30~12:00</td>
                    </tr>
                    <tr>
                        <td>서귀포열린병원</td>
                        <td>064-762-8001</td>
                        <td class="ta_l">제주특별자치도 서귀포시 일주동로 8638, (동홍동)</td>
                        <td>09:00~24:00</td>
                        <td>09:00~24:00</td>
                        <td>09:00~24:00</td>
                    </tr>
                    <tr>
                        <td>서귀포365일의원</td>
                        <td>064-733-3650</td>
                        <td class="ta_l">제주특별자치도 서귀포시 일주동로 8666</td>
                        <td>08:00~21:30</td>
                        <td>08:00~21:30</td>
                        <td>08:00~21:30</td>
                    </tr>
                    <tr>
                        <td>한마음한의원</td>
                        <td>064-764-7550</td>
                        <td class="ta_l">제주특별자치도 서귀포시 남원읍 태위로689번길 3, 1층,</td>
                        <td>08:00~12:30</td>
                        <td>-</td>
                        <td>08:00~12:30</td>
                    </tr>
                    <tr>
                        <td>안덕의원</td>
                        <td>064-794-0906</td>
                        <td class="ta_l">제주특별자치도 서귀포시 안덕면 화순로 112,</td>
                        <td>08:30~14:00</td>
                        <td>-</td>
                        <td>08:30~14:00</td>
                    </tr>
                    <tr>
                        <td>남원의원</td>
                        <td>064-764-4156</td>
                        <td class="ta_l">제주특별자치도 서귀포시 남원읍 태위로 636,</td>
                        <td>08:30~12:30</td>
                        <td>-</td>
                        <td>08:30~12:00</td>
                    </tr>
                    <tr>
                        <td>고려삼성의원</td>
                        <td>064-762-7524</td>
                        <td class="ta_l">제주특별자치도 서귀포시 중앙로 44, (서귀동)</td>
                        <td>08:30~13:00</td>
                        <td>-</td>
                        <td>08:30~12:00</td>
                    </tr>
                </tbody>
            </table>
        </div>

        <h3>산부인과(주말, 공휴일)</h3>
        <div class="tbl_wrap">
            <table class="tbl_st2 st st3" summary="산부인과(주말, 공휴일) 안내 표 - 병원명, 전화번호, 도로명주소, 토요일 진료, 일요일 진료, 공휴일 진료">
                <caption>산부인과(주말, 공휴일) 안내표</caption>
                <colgroup>
                    <col width="18%" />
                    <col width="12%" />
                    <col width="40%" />
                    <col width="10%" />
                    <col width="10%" />
                    <col width="10%" />
                </colgroup>
                <thead>
                    <tr>
                        <th class="border_bt_td">병원명</th>
                        <th class="border_bt_td">전화번호</th>
                        <th class="border_bt_td">도로명주소</th>
                        <th class="border_bt_td">토요일 진료</th>
                        <th class="border_bt_td">일요일 진료</th>
                        <th class="border_bt_td">공휴일 진료</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>파랑새의원</td>
                        <td>064-711-8042</td>
                        <td class="ta_l">제주특별자치도 제주시 노연로 90, 2층 (연동)</td>
                        <td>09:00~22:10</td>
                        <td>09:00~22:10</td>
                        <td>09:00~22:10</td>
                    </tr>
                    <tr>
                        <td>엔젤산부인과의원</td>
                        <td>064-756-7575</td>
                        <td class="ta_l">제주특별자치도 제주시 과원로 70, 2층 (연동, 부림랜드)</td>
                        <td>09:00~16:00</td>
                        <td>-</td>
                        <td>09:00~12:30</td>
                    </tr>
                    <tr>
                        <td>차산부인과의원</td>
                        <td>064-742-9661</td>
                        <td class="ta_l">제주특별자치도 제주시 노형8길 2 온유빌딩 2층</td>
                        <td>08:30~13:00</td>
                        <td>-</td>
                        <td>08:30~12:00</td>
                    </tr>
                    <tr>
                        <td>서해산부인과의원</td>
                        <td>064-758-8866</td>
                        <td class="ta_l">제주특별자치도 제주시 동광로 131, (일도이동)</td>
                        <td>09:00~16:30</td>
                        <td>-</td>
                        <td>09:00~13:00</td>
                    </tr>
                    <tr>
                        <td>한나산부인과의원</td>
                        <td>064-711-7717</td>
                        <td class="ta_l">제주특별자치도 제주시 도령로 7, 2층일부 (노형동)</td>
                        <td>10:00~13:00</td>
                        <td>-</td>
                        <td>10:00~13:00</td>
                    </tr>
                    <tr>
                        <td>다나산부인과의원</td>
                        <td>064-702-1186</td>
                        <td class="ta_l">제주특별자치도 제주시 고마로 47, (일도이동)</td>
                        <td>09:00~16:00</td>
                        <td>-</td>
                        <td>09:00~12:00</td>
                    </tr>
                    <tr>
                        <td>예나산부인과의원</td>
                        <td>064-748-0088</td>
                        <td class="ta_l">제주특별자치도 제주시 서광로 83, (용담이동)</td>
                        <td>09:00~16:00</td>
                        <td>09:00~12:00</td>
                        <td>09:00~12:30</td>
                    </tr>
                    <tr>
                        <td>한수풀의원</td>
                        <td>064-796-3789</td>
                        <td class="ta_l">제주특별자치도 제주시 한림읍 한림로 681,</td>
                        <td>08:00~13:00</td>
                        <td>-</td>
                        <td>09:00~13:00</td>
                    </tr>
                    <tr>
                        <td>삼성산부인과의원</td>
                        <td>064-721-0555</td>
                        <td class="ta_l">제주특별자치도 제주시 동광로 27, (이도일동)</td>
                        <td>09:00~12:30</td>
                        <td>-</td>
                        <td>09:00~12:30</td>
                    </tr>
                    <tr>
                        <td>에덴산부인과의원</td>
                        <td>064-748-9400</td>
                        <td class="ta_l">제주특별자치도 제주시 수덕로 6, 3,4,5층 (노형동)</td>
                        <td>09:00~16:00</td>
                        <td>-</td>
                        <td>09:00~12:30</td>
                    </tr>
                    <tr>
                        <td>제주필의원</td>
                        <td>064-726-6300</td>
                        <td class="ta_l">제주특별자치도 제주시 일주동로 229, (화북일동)</td>
                        <td>09:00~12:30</td>
                        <td>-</td>
                        <td>09:00~12:30</td>
                    </tr>
                    <tr>
                        <td>마리산부인과</td>
                        <td>064-755-2544</td>
                        <td class="ta_l">제주특별자치도 제주시 고마로 146 (이도이동)</td>
                        <td>09:00~16:00</td>
                        <td>-</td>
                        <td>09:00~12:00</td>
                    </tr>
                    <tr>
                        <td>이주영산부인과의원</td>
                        <td>064-756-1199</td>
                        <td class="ta_l">제주특별자치도 제주시 서광로 208-1</td>
                        <td>09:00~14:00</td>
                        <td>-</td>
                        <td>09:00~12:00</td>
                    </tr>
                    <tr>
                        <td>제일산부인과의원</td>
                        <td>064-733-2312</td>
                        <td class="ta_l">제주특별자치도 서귀포시 동문로 46, (서귀동)</td>
                        <td>08:30~12:00</td>
                        <td>-</td>
                        <td>08:30~12:00</td>
                    </tr>
                    <tr>
                        <td>현대산부인과의원</td>
                        <td>064-763-8889</td>
                        <td class="ta_l">제주특별자치도 서귀포시 동문로 61, (서귀동)</td>
                        <td>09:00~12:30</td>
                        <td>-</td>
                        <td>09:00~11:00</td>
                    </tr>
                </tbody>
            </table>
        </div>

        <h3>심야약국</h3>
        <div class="tbl_wrap">
            <table class="tbl_st2 st st3" summary="심야약국 안내 표 - 약국명, 전화번호, 도로명주소, 운영시간">
                <caption>심야약국 안내표</caption>
                <colgroup>
                    <col width="18%" />
                    <col width="18%" />
                    <col width="40%" />
                    <col width="20%" />
                </colgroup>
                <thead>
                    <tr>
                        <th class="border_bt_td">약국명</th>
                        <th class="border_bt_td">전화번호</th>
                        <th class="border_bt_td">도로명주소</th>
                        <th class="border_bt_td">운영시간</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>부부약국</td>
                        <td>064-747-5252</td>
                        <td class="ta_l">제주특별자치도 제주시 신대로16길 41 (연동)</td>
                        <td>12:00 ~ 익일 03:00</td>
                    </tr>
                    <tr>
                        <td>새우리약국</td>
                        <td>064-757-5149</td>
                        <td class="ta_l">제주특별자치도 제주시 서사로 36</td>
                        <td>09:00 ~ 익일 00:00</td>
                    </tr>
                    <tr>
                        <td>조천약국</td>
                        <td>064-783-8989</td>
                        <td class="ta_l">제주특별자치도 제주시 조천읍 신북로 226</td>
                        <td>08:30 ~ 21:00</td>
                    </tr>
                    <tr>
                        <td>영재약국</td>
                        <td>064-783-1959</td>
                        <td class="ta_l">제주특별자치도 제주시 조천읍 신북로 510-1</td>
                        <td>08:30 ~ 20:00</td>
                    </tr>
                    <tr>
                        <td>현재약국</td>
                        <td>064-796-9333</td>
                        <td class="ta_l">제주특별자치도 제주시 한림읍 한림로 650</td>
                        <td>08:00 ~ 익일 00:00</td>
                    </tr>
                </tbody>
            </table>
        </div>

    </div>
</div>
  <!--의료기관 jquery-->
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/static/js_old/lib/underscore.js"></script>
<script src="https://cdn.jsdelivr.net/npm/lodash@4.17.21/lodash.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/static/js_old/lib/lodash.js"></script>
<!-- <script type="text/javascript" src="${pageContext.request.contextPath}/resources/static/js_old/medicalInfo.js"></script> -->

<script>
  $("#medicalInfo").click(function(e){
    e.preventDefault();
    $('#medicalShow').show();
    $('.popup_bg').show();
    $('.pop_medical').show();
  
  });

</script>
 <!-- 의료기관 정보 팝업창 
 <div class="popup_bg" style="display: none;"></div>
 <div class="popup pop_useful pop_medical" style="display: none;">
     <div class="pop_head">
         <h2>의료기관 정보</h2>
         <button type="button" class="btn_close"><span class="blind">팝업창 닫기</span></button>
     </div>
     <div class="pop_cont">
         <div class="pop_inner scroll_auto">
             <h3>응급실 운영(야간,휴일)</h3>
             <div class="tbl_wrap">
                 <table class="tbl_st2 st st3" summary="응급실 운영(야간,휴일) 안내 표 - 기관명, 전화번호, 도로명주소 ">
                     <caption>응급실 운영(야간,휴일) 안내표</caption>
                     <colgroup>
                         <col width="28%" />
                         <col width="28%" />
                         <col width="44%" />
                     </colgroup>
                     <thead>
                         <tr>
                             <th class="border_bt_td">기관명</th>
                             <th class="border_bt_td">전화번호</th>
                             <th class="border_bt_td">도로명주소</th>
                         </tr>
                     </thead>
                     <tbody>
                         <tr>
                             
                             <td>한마음병원</td>
                             <td>064-750-9119</td>
                             <td class="ta_l">제주특별자치도 제주시 연신로 52, (이도이동)</td>
                         </tr>
                         <tr>
                             <td>의료법인중앙의료재단 중앙병원</td>
                             <td>064-786-7119</td>
                             <td class="ta_l">제주특별자치도 제주시 월랑로 91, (이호이동)</td>
                         </tr>
                         <tr>
                             <td>제주한라병원</td>
                             <td>064-740-5159</td>
                             <td class="ta_l">제주특별자치도 제주시 도령로 65, (연동)</td>
                         </tr>
                         <tr>
                             <td>제주대학교병원</td>
                             <td>064-717-1904</td>
                             <td class="ta_l">제주특별자치도 제주시 아란13길 15, (아라일동)</td>
                         </tr>
                         <tr>
                             <td>제주특별자치도서귀포의료원</td>
                             <td>064-730-3001</td>
                             <td class="ta_l">제주특별자치도 서귀포시 장수로 47, (동홍동)</td>
                         </tr>
                         <tr>
                             <td>의료법인혜인의료재단한국병원</td>
                             <td>064-750-0119</td>
                             <td class="ta_l">제주특별자치도 제주시 서광로 193 (삼도일동)</td>
                         </tr>
                         <tr>
                             <td>제주특별자치도제주의료원</td>
                             <td>064-720-2119</td>
                             <td class="ta_l">제주특별자치도 제주시 산천단남길 10 (아라일동)</td>
                         </tr>
                     </tbody>
                 </table>
             </div>

             <h3>가정의학과/내과(주말, 공휴일)</h3>
             <div class="tbl_wrap">
                 <table class="tbl_st2 st st3" summary="가정의학과/내과(주말, 공휴일) 안내 표 - 병원명, 전화번호, 도로명주소, 토요일 진료, 일요일 진료, 공휴일 진료">
                     <caption>가정의학과/내과(주말, 공휴일) 안내표</caption>
                     <colgroup>
                         <col width="18%" />
                         <col width="12%" />
                         <col width="40%" />
                         <col width="10%" />
                         <col width="10%" />
                         <col width="10%" />
                     </colgroup>
                     <thead>
                         <tr>
                             <th class="border_bt_td">병원명</th>
                             <th class="border_bt_td">전화번호</th>
                             <th class="border_bt_td">도로명주소</th>
                             <th class="border_bt_td">토요일 진료</th>
                             <th class="border_bt_td">일요일 진료</th>
                             <th class="border_bt_td">공휴일 진료</th>
                         </tr>
                     </thead>
                     <tbody>
                         <tr>
                             <td>연동365일의원</td>
                             <td>064-727-3651</td>
                             <td class="ta_l">제주특별자치도 제주시 연북로 99 (연동) 2층</td>
                             <td>09:00~24:00</td>
                             <td>09:00~24:00</td>
                             <td>09:00~24:00</td>
                         </tr>
                         <tr>
                             <td>파랑새의원</td>
                             <td>064-711-8042</td>
                             <td class="ta_l">제주특별자치도 제주시 노연로 90, 2층 (연동)</td>
                             <td>09:00~22:10</td>
                             <td>09:00~22:10</td>
                             <td>09:00~22:10</td>
                         </tr>
                         <tr>
                             <td>작은성모의원</td>
                             <td>064-756-5300</td>
                             <td class="ta_l">제주특별자치도 제주시 화삼북로 63 (삼양이동)</td>
                             <td>09:00~14:00</td>
                             <td>-</td>
                             <td>09:00~13:00</td>
                         </tr>
                         <tr>
                             <td>세화의원</td>
                             <td>064-783-2772</td>
                             <td class="ta_l">제주특별자치도 제주시 구좌읍 세화5길 2,</td>
                             <td>08:30~13:00</td>
                             <td>-</td>
                             <td>09:00~13:00</td>
                         </tr>
                         <tr>
                             <td>일도365의원</td>
                             <td>064-753-1365</td>
                             <td class="ta_l">제주특별자치도 제주시 고마로 115 3층</td>
                             <td>08:00~21:00</td>
                             <td>09:00~21:00</td>
                             <td>08:00~21:00</td>
                         </tr>
                         <tr>
                             <td>하나로의원</td>
                             <td>064-713-1099</td>
                             <td class="ta_l">제주특별자치도 제주시 애월읍 일주서로 7136,</td>
                             <td>08:30~13:00</td>
                             <td>-</td>
                             <td>08:30~14:00</td>
                         </tr>
                         <tr>
                             <td>365 제주의원</td>
                             <td>064-753-4645</td>
                             <td class="ta_l">제주특별자치도 제주시 서광로 302, 2,3,4,5,6층 (이도이동)</td>
                             <td>07:30~21:00</td>
                             <td>08:30~21:00</td>
                             <td>08:30~21:00</td>
                         </tr>
                         <tr>
                             <td>하나가정의학과의원</td>
                             <td>064-743-8111</td>
                             <td class="ta_l">제주특별자치도 제주시 월랑로 59, 2층 (노형동)</td>
                             <td>08:30~14:00</td>
                             <td>-</td>
                             <td>08:30~14:00</td>
                         </tr>
                         <tr>
                             <td>제주라파의원</td>
                             <td>064-713-7582</td>
                             <td class="ta_l">제주특별자치도 제주시 연북로 34, 2층 (노형동,노성빌딩)</td>
                             <td>09:00~17:00</td>
                             <td>-</td>
                             <td>09:00~13:00</td>
                         </tr>
                         <tr>
                             <td>모아의원</td>
                             <td>064-742-7586</td>
                             <td class="ta_l">제주특별자치도 제주시 과원북4길 5, (노형동)</td>
                             <td>09:00~16:00</td>
                             <td>-</td>
                             <td>09:00~13:00</td>
                         </tr>
                         <tr>
                             <td>삼화365플러스의원</td>
                             <td>064-723-3650</td>
                             <td class="ta_l">제주특별자치도 제주시 건주로 43, 2층 (도련일동)</td>
                             <td>09:00~21:00</td>
                             <td>09:00~21:00</td>
                             <td>09:00~21:00</td>
                         </tr>
                         <tr>
                             <td>늘푸른가정의학과의원</td>
                             <td>064-752-9696</td>
                             <td class="ta_l">제주특별자치도 제주시 중앙로 132, 2층 (삼도이동)</td>
                             <td>08:30~15:00</td>
                             <td>-</td>
                             <td>08:30~14:00</td>
                         </tr>
                         <tr>
                             <td>더맑은이비인후과의원</td>
                             <td>064-755-7588</td>
                             <td class="ta_l">제주특별자치도 제주시 동화로 28, 2층 (화북일동)</td>
                             <td>08:30~13:00</td>
                             <td>-</td>
                             <td>08:30~13:00</td>
                         </tr>
                         <tr>
                             <td>조대경안심내과의원</td>
                             <td>064-742-7524</td>
                             <td class="ta_l">제주특별자치도 제주시 노형8길 2 (노형동, 온유빌딩3층)</td>
                             <td>08:30~13:00</td>
                             <td>-</td>
                             <td>09:00~13:00</td>
                         </tr>
                         <tr>
                             <td>조천부부의원</td>
                             <td>064-782-7491</td>
                             <td class="ta_l">제주특별자치도 제주시 조천읍 신북로 237,</td>
                             <td>08:30~13:00</td>
                             <td>-</td>
                             <td>08:30~12:00</td>
                         </tr>
                         <tr>
                             <td>용담의원</td>
                             <td>064-711-8511</td>
                             <td class="ta_l">제주특별자치도 제주시 용담로 92, 2층 (용담이동)</td>
                             <td>08:00~12:00</td>
                             <td>-</td>
                             <td>08:00~12:00</td>
                         </tr>
                         <tr>
                             <td>강형윤가정의학과의원</td>
                             <td>064-713-0332</td>
                             <td class="ta_l">제주특별자치도 제주시 우정로 59</td>
                             <td>08:30~13:00</td>
                             <td>-</td>
                             <td>09:00~12:00</td>
                         </tr>
                         <tr>
                             <td>건강369의원</td>
                             <td>064-722-3698</td>
                             <td class="ta_l">제주특별자치도 제주시 일주동로 227, 3,4층 (화북일동)</td>
                             <td>09:00~22:00</td>
                             <td>09:00~22:00</td>
                             <td>09:00~22:00</td>
                         </tr>
                         <tr>
                             <td>바른정의원</td>
                             <td>064-723-3355</td>
                             <td class="ta_l">제주특별자치도 제주시 성지로 76-1, (일도이동)</td>
                             <td>08:30~12:00</td>
                             <td>-</td>
                             <td>08:30~12:00</td>
                         </tr>
                         <tr>
                             <td>제주국제공항의원</td>
                             <td>064-797-2595</td>
                             <td class="ta_l">제주특별자치도 제주시 공항로 2, 4층 (용담이동)</td>
                             <td>07:00~22:00</td>
                             <td>07:00~22:00</td>
                             <td>07:00~22:00</td>
                         </tr>
                         <tr>
                             <td>911매일의원</td>
                             <td>064-724-0911</td>
                             <td class="ta_l">제주특별자치도 제주시 중앙로 286, (이도이동)</td>
                             <td>09:00~23:00</td>
                             <td>09:00~23:00</td>
                             <td>09:00~23:00</td>
                         </tr>
                         <tr>
                             <td>탑동365일의원</td>
                             <td>064-756-3650</td>
                             <td class="ta_l">제주특별자치도 제주시 탑동로 24 (삼도이동)</td>
                             <td>09:00~23:00</td>
                             <td>09:00~23:00</td>
                             <td>09:00~23:00</td>
                         </tr>
                         <tr>
                             <td>모딜리아니의원</td>
                             <td>064-727-3652</td>
                             <td class="ta_l">제주특별자치도 제주시 서광로 278 (이도이동)</td>
                             <td>07:00~12:00</td>
                             <td>-</td>
                             <td>07:00~12:00</td>
                         </tr>
                         <tr>
                             <td>제주필의원</td>
                             <td>064-726-6300</td>
                             <td class="ta_l">제주특별자치도 제주시 일주동로 229, (화북일동)</td>
                             <td>09:00~12:30</td>
                             <td>-</td>
                             <td>09:00~12:30</td>
                         </tr>
                         <tr>
                             <td>연세가정의학과의원</td>
                             <td>064-756-7337</td>
                             <td class="ta_l">제주특별자치도 제주시 일주동로 179, (화북일동)</td>
                             <td>09:00~16:00</td>
                             <td>-</td>
                             <td>09:00~13:00</td>
                         </tr>
                         <tr>
                             <td>하동바툼낭의원</td>
                             <td>064-713-8225</td>
                             <td class="ta_l">제주특별자치도 제주시 애월읍 하귀로 35,</td>
                             <td>08:30~14:00</td>
                             <td>-</td>
                             <td>08:30~12:00</td>
                         </tr>
                         <tr>
                             <td>서귀포열린병원</td>
                             <td>064-762-8001</td>
                             <td class="ta_l">제주특별자치도 서귀포시 일주동로 8638, (동홍동)</td>
                             <td>09:00~24:00</td>
                             <td>09:00~24:00</td>
                             <td>09:00~24:00</td>
                         </tr>
                         <tr>
                             <td>서귀포365일의원</td>
                             <td>064-733-3650</td>
                             <td class="ta_l">제주특별자치도 서귀포시 일주동로 8666</td>
                             <td>08:00~21:30</td>
                             <td>08:00~21:30</td>
                             <td>08:00~21:30</td>
                         </tr>
                         <tr>
                             <td>한마음한의원</td>
                             <td>064-764-7550</td>
                             <td class="ta_l">제주특별자치도 서귀포시 남원읍 태위로689번길 3, 1층,</td>
                             <td>08:00~12:30</td>
                             <td>-</td>
                             <td>08:00~12:30</td>
                         </tr>
                         <tr>
                             <td>안덕의원</td>
                             <td>064-794-0906</td>
                             <td class="ta_l">제주특별자치도 서귀포시 안덕면 화순로 112,</td>
                             <td>08:30~14:00</td>
                             <td>-</td>
                             <td>08:30~14:00</td>
                         </tr>
                         <tr>
                             <td>남원의원</td>
                             <td>064-764-4156</td>
                             <td class="ta_l">제주특별자치도 서귀포시 남원읍 태위로 636,</td>
                             <td>08:30~12:30</td>
                             <td>-</td>
                             <td>08:30~12:00</td>
                         </tr>
                         <tr>
                             <td>고려삼성의원</td>
                             <td>064-762-7524</td>
                             <td class="ta_l">제주특별자치도 서귀포시 중앙로 44, (서귀동)</td>
                             <td>08:30~13:00</td>
                             <td>-</td>
                             <td>08:30~12:00</td>
                         </tr>
                     </tbody>
                 </table>
             </div>

             <h3>산부인과(주말, 공휴일)</h3>
             <div class="tbl_wrap">
                 <table class="tbl_st2 st st3" summary="산부인과(주말, 공휴일) 안내 표 - 병원명, 전화번호, 도로명주소, 토요일 진료, 일요일 진료, 공휴일 진료">
                     <caption>산부인과(주말, 공휴일) 안내표</caption>
                     <colgroup>
                         <col width="18%" />
                         <col width="12%" />
                         <col width="40%" />
                         <col width="10%" />
                         <col width="10%" />
                         <col width="10%" />
                     </colgroup>
                     <thead>
                         <tr>
                             <th class="border_bt_td">병원명</th>
                             <th class="border_bt_td">전화번호</th>
                             <th class="border_bt_td">도로명주소</th>
                             <th class="border_bt_td">토요일 진료</th>
                             <th class="border_bt_td">일요일 진료</th>
                             <th class="border_bt_td">공휴일 진료</th>
                         </tr>
                     </thead>
                     <tbody>
                         <tr>
                             <td>파랑새의원</td>
                             <td>064-711-8042</td>
                             <td class="ta_l">제주특별자치도 제주시 노연로 90, 2층 (연동)</td>
                             <td>09:00~22:10</td>
                             <td>09:00~22:10</td>
                             <td>09:00~22:10</td>
                         </tr>
                         <tr>
                             <td>엔젤산부인과의원</td>
                             <td>064-756-7575</td>
                             <td class="ta_l">제주특별자치도 제주시 과원로 70, 2층 (연동, 부림랜드)</td>
                             <td>09:00~16:00</td>
                             <td>-</td>
                             <td>09:00~12:30</td>
                         </tr>
                         <tr>
                             <td>차산부인과의원</td>
                             <td>064-742-9661</td>
                             <td class="ta_l">제주특별자치도 제주시 노형8길 2 온유빌딩 2층</td>
                             <td>08:30~13:00</td>
                             <td>-</td>
                             <td>08:30~12:00</td>
                         </tr>
                         <tr>
                             <td>서해산부인과의원</td>
                             <td>064-758-8866</td>
                             <td class="ta_l">제주특별자치도 제주시 동광로 131, (일도이동)</td>
                             <td>09:00~16:30</td>
                             <td>-</td>
                             <td>09:00~13:00</td>
                         </tr>
                         <tr>
                             <td>한나산부인과의원</td>
                             <td>064-711-7717</td>
                             <td class="ta_l">제주특별자치도 제주시 도령로 7, 2층일부 (노형동)</td>
                             <td>10:00~13:00</td>
                             <td>-</td>
                             <td>10:00~13:00</td>
                         </tr>
                         <tr>
                             <td>다나산부인과의원</td>
                             <td>064-702-1186</td>
                             <td class="ta_l">제주특별자치도 제주시 고마로 47, (일도이동)</td>
                             <td>09:00~16:00</td>
                             <td>-</td>
                             <td>09:00~12:00</td>
                         </tr>
                         <tr>
                             <td>예나산부인과의원</td>
                             <td>064-748-0088</td>
                             <td class="ta_l">제주특별자치도 제주시 서광로 83, (용담이동)</td>
                             <td>09:00~16:00</td>
                             <td>09:00~12:00</td>
                             <td>09:00~12:30</td>
                         </tr>
                         <tr>
                             <td>한수풀의원</td>
                             <td>064-796-3789</td>
                             <td class="ta_l">제주특별자치도 제주시 한림읍 한림로 681,</td>
                             <td>08:00~13:00</td>
                             <td>-</td>
                             <td>09:00~13:00</td>
                         </tr>
                         <tr>
                             <td>삼성산부인과의원</td>
                             <td>064-721-0555</td>
                             <td class="ta_l">제주특별자치도 제주시 동광로 27, (이도일동)</td>
                             <td>09:00~12:30</td>
                             <td>-</td>
                             <td>09:00~12:30</td>
                         </tr>
                         <tr>
                             <td>에덴산부인과의원</td>
                             <td>064-748-9400</td>
                             <td class="ta_l">제주특별자치도 제주시 수덕로 6, 3,4,5층 (노형동)</td>
                             <td>09:00~16:00</td>
                             <td>-</td>
                             <td>09:00~12:30</td>
                         </tr>
                         <tr>
                             <td>제주필의원</td>
                             <td>064-726-6300</td>
                             <td class="ta_l">제주특별자치도 제주시 일주동로 229, (화북일동)</td>
                             <td>09:00~12:30</td>
                             <td>-</td>
                             <td>09:00~12:30</td>
                         </tr>
                         <tr>
                             <td>마리산부인과</td>
                             <td>064-755-2544</td>
                             <td class="ta_l">제주특별자치도 제주시 고마로 146 (이도이동)</td>
                             <td>09:00~16:00</td>
                             <td>-</td>
                             <td>09:00~12:00</td>
                         </tr>
                         <tr>
                             <td>이주영산부인과의원</td>
                             <td>064-756-1199</td>
                             <td class="ta_l">제주특별자치도 제주시 서광로 208-1</td>
                             <td>09:00~14:00</td>
                             <td>-</td>
                             <td>09:00~12:00</td>
                         </tr>
                         <tr>
                             <td>제일산부인과의원</td>
                             <td>064-733-2312</td>
                             <td class="ta_l">제주특별자치도 서귀포시 동문로 46, (서귀동)</td>
                             <td>08:30~12:00</td>
                             <td>-</td>
                             <td>08:30~12:00</td>
                         </tr>
                         <tr>
                             <td>현대산부인과의원</td>
                             <td>064-763-8889</td>
                             <td class="ta_l">제주특별자치도 서귀포시 동문로 61, (서귀동)</td>
                             <td>09:00~12:30</td>
                             <td>-</td>
                             <td>09:00~11:00</td>
                         </tr>
                     </tbody>
                 </table>
             </div>

             <h3>심야약국</h3>
             <div class="tbl_wrap">
                 <table class="tbl_st2 st st3" summary="심야약국 안내 표 - 약국명, 전화번호, 도로명주소, 운영시간">
                     <caption>심야약국 안내표</caption>
                     <colgroup>
                         <col width="18%" />
                         <col width="18%" />
                         <col width="40%" />
                         <col width="20%" />
                     </colgroup>
                     <thead>
                         <tr>
                             <th class="border_bt_td">약국명</th>
                             <th class="border_bt_td">전화번호</th>
                             <th class="border_bt_td">도로명주소</th>
                             <th class="border_bt_td">운영시간</th>
                         </tr>
                     </thead>
                     <tbody>
                         <tr>
                             <td>부부약국</td>
                             <td>064-747-5252</td>
                             <td class="ta_l">제주특별자치도 제주시 신대로16길 41 (연동)</td>
                             <td>12:00 ~ 익일 03:00</td>
                         </tr>
                         <tr>
                             <td>새우리약국</td>
                             <td>064-757-5149</td>
                             <td class="ta_l">제주특별자치도 제주시 서사로 36</td>
                             <td>09:00 ~ 익일 00:00</td>
                         </tr>
                         <tr>
                             <td>조천약국</td>
                             <td>064-783-8989</td>
                             <td class="ta_l">제주특별자치도 제주시 조천읍 신북로 226</td>
                             <td>08:30 ~ 21:00</td>
                         </tr>
                         <tr>
                             <td>영재약국</td>
                             <td>064-783-1959</td>
                             <td class="ta_l">제주특별자치도 제주시 조천읍 신북로 510-1</td>
                             <td>08:30 ~ 20:00</td>
                         </tr>
                         <tr>
                             <td>현재약국</td>
                             <td>064-796-9333</td>
                             <td class="ta_l">제주특별자치도 제주시 한림읍 한림로 650</td>
                             <td>08:00 ~ 익일 00:00</td>
                         </tr>
                     </tbody>
                 </table>
             </div>

         </div>
     </div>
 </div>
 -->

