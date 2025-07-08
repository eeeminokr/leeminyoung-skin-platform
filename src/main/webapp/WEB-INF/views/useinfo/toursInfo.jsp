<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!-- 관광 팝업창 -->
<div class="popup_bg" style="display: none;"></div>
<div class="popup pop_useful pop_tour" style="display: none;">
    <div class="pop_head">
        <h2>관광</h2>
        <button type="button" class="btn_close"><span class="blind">팝업창 닫기</span></button>
    </div>
    <div class="pop_cont">
        <div class="pop_inner">
            <p class="txt">제주도는 한국·중국·일본등 극동 지역의 중앙부에 있어 지정학적으로도 중요하며, 도 전체가 바다로 둘러싸였다. 수리적으로는 동경 126°08'~126°58', 북위 33°06'~34°00'에 위치한다. 북단은 북위 34°00’의 제주시 추자면 대서리이며, 남단은 북위 33°06’의 서귀포시 대정읍 마라도다. 한국 최남단에 있는 도로서, 제주도를 포함해 9개의 유인도와 55개의 무인도로 이루어졌다. 이 가운데 유인도는 우도·상추자도·하추자도·비양도·횡간도·추포도·가파도·마라도이다.<br />
                러시아·중국 등의 대륙과 일본·동남아 등지를 연결하는 요충지이며, 천혜의 자연경관이 수려한 세계적인 휴양관광지다.</p>

            <div class="scroll_auto">
                <ul class="tour_list">
                    <li>
                        <div class="inbox">
                            <div class="imgbox">
                                <span class="label1">관광지</span>
                                <img width="320" height="170" src="${pageContext.request.contextPath}/resources/static/images_old/tour/list_img01.jpg" alt="" />
                                <span class="t_star s_4"><em class="blind">별4개</em></span>
                            </div>
                            <div class="txtbox">
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
            <div class="pagination">
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
                    <li class="next" id="arrow"><span class="fa-solid fa-angle-right"></span></li>
                    <li class="last" id="arrow"><span class="fa-solid fa-angles-right"></span></li>
                </ul>
            </div>

        </div>
    </div>
</div>

<!--날씨 jquery-->
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/static/js_old/lib/underscore.js"></script>
<script src="https://cdn.jsdelivr.net/npm/lodash@4.17.21/lodash.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/static/js_old/lib/lodash.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/static/js_old/tourInfo.js"></script>

<script>

$("#toursInfo").click(function(e){
      e.preventDefault();
      $('#toursInfoShow').show();
      $('.popup_bg').show();
      $('.pop_tour').show();
    
  });
</script>