<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


<!-- 날씨 팝업창 -->
<div class="popup_bg" style="display:none;"></div>
<div class="popup pop_weather" style="display:none;">
    <div class="pop_head">
        <h2>기상정보 <span class="tit">[제주특별자치도]</span></h2>
        
        <button type="button" class="btn_close"><span class="blind">팝업창 닫기</span></button>
    </div>
    <div class="pop_cont">
        <div class="pop_inner scroll_auto">


            <!-- 지금 날씨 -->
            <div class="weather_area border_btm">
                <h3 class="blind">오늘의 날씨</h3>
                <div class="weather_now">
                    <i class="ico_w nebulousness_no"><span class="blind">구름많음</span></i>
                    <strong>
                        <span class="blind">현재 온도</span><span class="todayTemp">16.6</span><span class="degree">°</span>
                    </strong>
                </div>
                <p class="summary">구름많음</p>
                <ul class="weather_info">
                    <li>
                        <span class="tit">강수률</span>
                        <span class="txt" id="tadayRain">10%</span>
                    </li>
                    <li>
                        <span class="tit">습도</span>
                        <span class="txt" id="todayDrew">74%</span>
                    </li>
                </ul>
                <ul class="air_now">
                    <li class="pm10Grade">
                        <span class="tit">미세먼지</span>
                        <span class="txt" id="pm10">좋음</span>
                    </li>
                    <li class="pm25Grade">
                        <span class="tit">초미세먼지</span>
                        <span class="txt" id="pm25">보통</span>
                    </li>
                    <li class="o3Grade">
                        <span class="tit">자외선</span>
                        <span class="txt" id="o3">나쁨</span>
                    </li>
                    <li class="no2Grade">
                        <span class="tit">이산화질소</span>
                        <span class="txt" id="no2">매우나쁨</span>
                    </li>
                </ul>
            </div>
            <!-- //지금 날씨 -->
            
            
            <!-- 탭 : 날씨, 강수, 습도 -->
            <div class="hourly_weather border_btm">
                <div class="hourly_weather_inner">
                    <h3 class="blind">시간별 예보</h3>
                    <ul class="wt_tabs">
                        <li class="active"><a href="#tab_weather">날씨</a></li>
                        <li><a href="#tab_precipitation">강수</a></li>
                        <li><a href="#tab_humidity">습도</a></li>
                    </ul>
                    <div class="wt_tabcont" id="tab_weather">
                        <div class="weather_graph graph_box_wrap">
                            <div class="graph_box">
                                <div class="scroll_box">
                                    <div class="canvas">
                                        <canvas id="canvas" width="1718" height="33"></canvas>
                                    </div>
                                    <div class="graph_inner" id ="onedays_sky">
                                        <ul>
                                            <li>
                                                <dl class="graph_content">
                                                    <dt class="time"><em>12시</em></dt>
                                                    <dd class="weather_box">
                                                        <i class="ico_w sunny_no"><span class="blind">맑음</span></i>
                                                    </dd>
                                                    <dd class="degree_point">
                                                        <div class="dp_inner">
                                                            <div class="point_box" style="height:60%;">
                                                                <span class="num">14<span class="celsius">°</span></span>
                                                            </div>
                                                        </div>
                                                    </dd>
                                                </dl>
                                            </li>
                                            <li>
                                                <dl class="graph_content">
                                                    <dt class="time"><em>13시</em></dt>
                                                    <dd class="weather_box">
                                                        <i class="ico_w sunny_no"><span class="blind">맑음</span></i>
                                                    </dd>
                                                    <dd class="degree_point">
                                                        <div class="dp_inner">
                                                            <div class="point_box" style="height:60%;">
                                                                <span class="num">14<span class="celsius">°</span></span>
                                                            </div>
                                                        </div>
                                                    </dd>
                                                </dl>
                                            </li>
                                            <li>
                                                <dl class="graph_content">
                                                    <dt class="time"><em>14시</em></dt>
                                                    <dd class="weather_box">
                                                        <i class="ico_w sunny_no"><span class="blind">맑음</span></i>
                                                    </dd>
                                                    <dd class="degree_point">
                                                        <div class="dp_inner">
                                                            <div class="point_box" style="height:60%;">
                                                                <span class="num">14<span class="celsius">°</span></span>
                                                            </div>
                                                        </div>
                                                    </dd>
                                                </dl>
                                            </li>
                                            <li>
                                                <dl class="graph_content">
                                                    <dt class="time"><em>15시</em></dt>
                                                    <dd class="weather_box">
                                                        <i class="ico_w sunny_no"><span class="blind">맑음</span></i>
                                                    </dd>
                                                    <dd class="degree_point">
                                                        <div class="dp_inner">
                                                            <div class="point_box" style="height:60%;">
                                                                <span class="num">14<span class="celsius">°</span></span>
                                                            </div>
                                                        </div>
                                                    </dd>
                                                </dl>
                                            </li>
                                            <li>
                                                <dl class="graph_content">
                                                    <dt class="time"><em>16시</em></dt>
                                                    <dd class="weather_box">
                                                        <i class="ico_w nebulousness_no"><span class="blind">구름많음</span></i>
                                                    </dd>
                                                    <dd class="degree_point">
                                                        <div class="dp_inner">
                                                            <div class="point_box" style="height:50%;">
                                                                <span class="num">13<span class="celsius">°</span></span>
                                                            </div>
                                                        </div>
                                                    </dd>
                                                </dl>
                                            </li>
                                            <li>
                                                <dl class="graph_content">
                                                    <dt class="time"><em>17시</em></dt>
                                                    <dd class="weather_box">
                                                        <i class="ico_w nebulousness_no"><span class="blind">구름많음</span></i>
                                                    </dd>
                                                    <dd class="degree_point">
                                                        <div class="dp_inner">
                                                            <div class="point_box" style="height:50%;">
                                                                <span class="num">13<span class="celsius">°</span></span>
                                                            </div>
                                                        </div>
                                                    </dd>
                                                </dl>
                                            </li>
                                            <li>
                                                <dl class="graph_content">
                                                    <dt class="time"><em>18시</em></dt>
                                                    <dd class="weather_box">
                                                        <i class="ico_w nebulousness_no"><span class="blind">구름많음</span></i>
                                                    </dd>
                                                    <dd class="degree_point">
                                                        <div class="dp_inner">
                                                            <div class="point_box" style="height:60%;">
                                                                <span class="num">14<span class="celsius">°</span></span>
                                                            </div>
                                                        </div>
                                                    </dd>
                                                </dl>
                                            </li>
                                            <li>
                                                <dl class="graph_content">
                                                    <dt class="time"><em>19시</em></dt>
                                                    <dd class="weather_box">
                                                        <i class="ico_w nebulousness_no"><span class="blind">구름많음</span></i>
                                                    </dd>
                                                    <dd class="degree_point">
                                                        <div class="dp_inner">
                                                            <div class="point_box" style="height:60%;">
                                                                <span class="num">14<span class="celsius">°</span></span>
                                                            </div>
                                                        </div>
                                                    </dd>
                                                </dl>
                                            </li>
                                            <li>
                                                <dl class="graph_content">
                                                    <dt class="time"><em>20시</em></dt>
                                                    <dd class="weather_box">
                                                        <i class="ico_w nebulousness_no"><span class="blind">구름많음</span></i>
                                                    </dd>
                                                    <dd class="degree_point">
                                                        <div class="dp_inner">
                                                            <div class="point_box" style="height:60%;">
                                                                <span class="num">14<span class="celsius">°</span></span>
                                                            </div>
                                                        </div>
                                                    </dd>
                                                </dl>
                                            </li>
                                            <li>
                                                <dl class="graph_content">
                                                    <dt class="time"><em>21시</em></dt>
                                                    <dd class="weather_box">
                                                        <i class="ico_w sunny_rainny"><span class="blind">맑고비눈</span></i>
                                                    </dd>
                                                    <dd class="degree_point">
                                                        <div class="dp_inner">
                                                            <div class="point_box" style="height:80%;">
                                                                <span class="num">16<span class="celsius">°</span></span>
                                                            </div>
                                                        </div>
                                                    </dd>
                                                </dl>
                                            </li>
                                            <li>
                                                <dl class="graph_content">
                                                    <dt class="time"><em>22시</em></dt>
                                                    <dd class="weather_box">
                                                        <i class="ico_w sunny_rainny"><span class="blind">맑고비눈</span></i>
                                                    </dd>
                                                    <dd class="degree_point">
                                                        <div class="dp_inner">
                                                            <div class="point_box" style="height:90%;">
                                                                <span class="num">17<span class="celsius">°</span></span>
                                                            </div>
                                                        </div>
                                                    </dd>
                                                </dl>
                                            </li>
                                            <li>
                                                <dl class="graph_content">
                                                    <dt class="time"><em>23시</em></dt>
                                                    <dd class="weather_box">
                                                        <i class="ico_w sunny_rainny"><span class="blind">맑고비눈</span></i>
                                                    </dd>
                                                    <dd class="degree_point">
                                                        <div class="dp_inner">
                                                            <div class="point_box" style="height:100%;">
                                                                <span class="num">18<span class="celsius">°</span></span>
                                                            </div>
                                                        </div>
                                                    </dd>
                                                </dl>
                                            </li>
                                            <li class="tomorrow">
                                                <dl class="graph_content">
                                                    <dt class="time"><em>내일</em></dt>
                                                    <dd class="weather_box">
                                                        <i class="ico_w nebulousness_no"><span class="blind">구름많음</span></i>
                                                    </dd>
                                                    <dd class="degree_point">
                                                        <div class="dp_inner">
                                                            <div class="point_box" style="height:100%;">
                                                                <span class="num">18<span class="celsius">°</span></span>
                                                            </div>
                                                        </div>
                                                    </dd>
                                                </dl>
                                            </li>
                                            <li>
                                                <dl class="graph_content">
                                                    <dt class="time"><em>01시</em></dt>
                                                    <dd class="weather_box">
                                                        <i class="ico_w sunny_no"><span class="blind">맑음</span></i>
                                                    </dd>
                                                    <dd class="degree_point">
                                                        <div class="dp_inner">
                                                            <div class="point_box" style="height:80%;">
                                                                <span class="num">16<span class="celsius">°</span></span>
                                                            </div>
                                                        </div>
                                                    </dd>
                                                </dl>
                                            </li>
                                            <li>
                                                <dl class="graph_content">
                                                    <dt class="time"><em>02시</em></dt>
                                                    <dd class="weather_box">
                                                        <i class="ico_w sunny_no"><span class="blind">맑음</span></i>
                                                    </dd>
                                                    <dd class="degree_point">
                                                        <div class="dp_inner">
                                                            <div class="point_box" style="height:80%;">
                                                                <span class="num">16<span class="celsius">°</span></span>
                                                            </div>
                                                        </div>
                                                    </dd>
                                                </dl>
                                            </li>
                                            <li>
                                                <dl class="graph_content">
                                                    <dt class="time"><em>03시</em></dt>
                                                    <dd class="weather_box">
                                                        <i class="ico_w sunny_no"><span class="blind">맑음</span></i>
                                                    </dd>
                                                    <dd class="degree_point">
                                                        <div class="dp_inner">
                                                            <div class="point_box" style="height:70%;">
                                                                <span class="num">15<span class="celsius">°</span></span>
                                                            </div>
                                                        </div>
                                                    </dd>
                                                </dl>
                                            </li>
                                            <li>
                                                <dl class="graph_content">
                                                    <dt class="time"><em>04시</em></dt>
                                                    <dd class="weather_box">
                                                        <i class="ico_w sunny_no"><span class="blind">맑음</span></i>
                                                    </dd>
                                                    <dd class="degree_point">
                                                        <div class="dp_inner">
                                                            <div class="point_box" style="height:70%;">
                                                                <span class="num">15<span class="celsius">°</span></span>
                                                            </div>
                                                        </div>
                                                    </dd>
                                                </dl>
                                            </li>
                                            <li>
                                                <dl class="graph_content">
                                                    <dt class="time"><em>05시</em></dt>
                                                    <dd class="weather_box">
                                                        <i class="ico_w sunny_no"><span class="blind">맑음</span></i>
                                                    </dd>
                                                    <dd class="degree_point">
                                                        <div class="dp_inner">
                                                            <div class="point_box" style="height:70%;">
                                                                <span class="num">15<span class="celsius">°</span></span>
                                                            </div>
                                                        </div>
                                                    </dd>
                                                </dl>
                                            </li>
                                            <li>
                                                <dl class="graph_content">
                                                    <dt class="time"><em>06시</em></dt>
                                                    <dd class="weather_box">
                                                        <i class="ico_w nebulousness_no"><span class="blind">구름많음</span></i>
                                                    </dd>
                                                    <dd class="degree_point">
                                                        <div class="dp_inner">
                                                            <div class="point_box" style="height:60%;">
                                                                <span class="num">14<span class="celsius">°</span></span>
                                                            </div>
                                                        </div>
                                                    </dd>
                                                </dl>
                                            </li>
                                            <li>
                                                <dl class="graph_content">
                                                    <dt class="time"><em>07시</em></dt>
                                                    <dd class="weather_box">
                                                        <i class="ico_w nebulousness_no"><span class="blind">구름많음</span></i>
                                                    </dd>
                                                    <dd class="degree_point">
                                                        <div class="dp_inner">
                                                            <div class="point_box" style="height:60%;">
                                                                <span class="num">14<span class="celsius">°</span></span>
                                                            </div>
                                                        </div>
                                                    </dd>
                                                </dl>
                                            </li>
                                            <li>
                                                <dl class="graph_content">
                                                    <dt class="time"><em>08시</em></dt>
                                                    <dd class="weather_box">
                                                        <i class="ico_w nebulousness_no"><span class="blind">구름많음</span></i>
                                                    </dd>
                                                    <dd class="degree_point">
                                                        <div class="dp_inner">
                                                            <div class="point_box" style="height:60%;">
                                                                <span class="num">14<span class="celsius">°</span></span>
                                                            </div>
                                                        </div>
                                                    </dd>
                                                </dl>
                                            </li>
                                            <li>
                                                <dl class="graph_content">
                                                    <dt class="time"><em>09시</em></dt>
                                                    <dd class="weather_box">
                                                        <i class="ico_w nebulousness_no"><span class="blind">구름많음</span></i>
                                                    </dd>
                                                    <dd class="degree_point">
                                                        <div class="dp_inner">
                                                            <div class="point_box" style="height:60%;">
                                                                <span class="num">14<span class="celsius">°</span></span>
                                                            </div>
                                                        </div>
                                                    </dd>
                                                </dl>
                                            </li>
                                            <li>
                                                <dl class="graph_content">
                                                    <dt class="time"><em>10시</em></dt>
                                                    <dd class="weather_box">
                                                        <i class="ico_w nebulousness_no"><span class="blind">구름많음</span></i>
                                                    </dd>
                                                    <dd class="degree_point">
                                                        <div class="dp_inner">
                                                            <div class="point_box" style="height:70%;">
                                                                <span class="num">15<span class="celsius">°</span></span>
                                                            </div>
                                                        </div>
                                                    </dd>
                                                </dl>
                                            </li>
                                            <li>
                                                <dl class="graph_content">
                                                    <dt class="time"><em>11시</em></dt>
                                                    <dd class="weather_box">
                                                        <i class="ico_w sunny_no"><span class="blind">맑음</span></i>
                                                    </dd>
                                                    <dd class="degree_point">
                                                        <div class="dp_inner">
                                                            <div class="point_box" style="height:80%;">
                                                                <span class="num">16<span class="celsius">°</span></span>
                                                            </div>
                                                        </div>
                                                    </dd>
                                                </dl>
                                            </li>
                                            <li>
                                                <dl class="graph_content">
                                                    <dt class="time"><em>12시</em></dt>
                                                    <dd class="weather_box">
                                                        <i class="ico_w sunny_no"><span class="blind">맑음</span></i>
                                                    </dd>
                                                    <dd class="degree_point">
                                                        <div class="dp_inner">
                                                            <div class="point_box" style="height:80%;">
                                                                <span class="num">16<span class="celsius">°</span></span>
                                                            </div>
                                                        </div>
                                                    </dd>
                                                </dl>
                                            </li>
                                            <li>
                                                <dl class="graph_content">
                                                    <dt class="time"><em>13시</em></dt>
                                                    <dd class="weather_box">
                                                        <i class="ico_w sunny_no"><span class="blind">맑음</span></i>
                                                    </dd>
                                                    <dd class="degree_point">
                                                        <div class="dp_inner">
                                                            <div class="point_box" style="height:80%;">
                                                                <span class="num">16<span class="celsius">°</span></span>
                                                            </div>
                                                        </div>
                                                    </dd>
                                                </dl>
                                            </li>
                                            <li>
                                                <dl class="graph_content">
                                                    <dt class="time"><em>14시</em></dt>
                                                    <dd class="weather_box">
                                                        <i class="ico_w sunny_no"><span class="blind">맑음</span></i>
                                                    </dd>
                                                    <dd class="degree_point">
                                                        <div class="dp_inner">
                                                            <div class="point_box" style="height:90%;">
                                                                <span class="num">17<span class="celsius">°</span></span>
                                                            </div>
                                                        </div>
                                                    </dd>
                                                </dl>
                                            </li>
                                            <li>
                                                <dl class="graph_content">
                                                    <dt class="time"><em>15시</em></dt>
                                                    <dd class="weather_box">
                                                        <i class="ico_w sunny_no"><span class="blind">맑음</span></i>
                                                    </dd>
                                                    <dd class="degree_point">
                                                        <div class="dp_inner">
                                                            <div class="point_box" style="height:100%;">
                                                                <span class="num">18<span class="celsius">°</span></span>
                                                            </div>
                                                        </div>
                                                    </dd>
                                                </dl>
                                            </li>
                                            <li>
                                                <dl class="graph_content">
                                                    <dt class="time"><em>16시</em></dt>
                                                    <dd class="weather_box">
                                                        <i class="ico_w sunny_no"><span class="blind">맑음</span></i>
                                                    </dd>
                                                    <dd class="degree_point">
                                                        <div class="dp_inner">
                                                            <div class="point_box" style="height:100%;">
                                                                <span class="num">18<span class="celsius">°</span></span>
                                                            </div>
                                                        </div>
                                                    </dd>
                                                </dl>
                                            </li>
                                            <li>
                                                <dl class="graph_content">
                                                    <dt class="time"><em>17시</em></dt>
                                                    <dd class="weather_box">
                                                        <i class="ico_w sunny_no"><span class="blind">맑음</span></i>
                                                    </dd>
                                                    <dd class="degree_point">
                                                        <div class="dp_inner">
                                                            <div class="point_box" style="height:90%;">
                                                                <span class="num">17<span class="celsius">°</span></span>
                                                            </div>
                                                        </div>
                                                    </dd>
                                                </dl>
                                            </li>
                                            <li>
                                                <dl class="graph_content">
                                                    <dt class="time"><em>18시</em></dt>
                                                    <dd class="weather_box">
                                                        <i class="ico_w sunny_no"><span class="blind">맑음</span></i>
                                                    </dd>
                                                    <dd class="degree_point">
                                                        <div class="dp_inner">
                                                            <div class="point_box" style="height:70%;">
                                                                <span class="num">15<span class="celsius">°</span></span>
                                                            </div>
                                                        </div>
                                                    </dd>
                                                </dl>
                                            </li>
                                            <li>
                                                <dl class="graph_content">
                                                    <dt class="time"><em>19시</em></dt>
                                                    <dd class="weather_box">
                                                        <i class="ico_w sunny_no"><span class="blind">맑음</span></i>
                                                    </dd>
                                                    <dd class="degree_point">
                                                        <div class="dp_inner">
                                                            <div class="point_box" style="height:70%;">
                                                                <span class="num">15<span class="celsius">°</span></span>
                                                            </div>
                                                        </div>
                                                    </dd>
                                                </dl>
                                            </li>
                                            <li>
                                                <dl class="graph_content">
                                                    <dt class="time"><em>20시</em></dt>
                                                    <dd class="weather_box">
                                                        <i class="ico_w sunny_no"><span class="blind">맑음</span></i>
                                                    </dd>
                                                    <dd class="degree_point">
                                                        <div class="dp_inner">
                                                            <div class="point_box" style="height:60%;">
                                                                <span class="num">14<span class="celsius">°</span></span>
                                                            </div>
                                                        </div>
                                                    </dd>
                                                </dl>
                                            </li>
                                            <li>
                                                <dl class="graph_content">
                                                    <dt class="time"><em>21시</em></dt>
                                                    <dd class="weather_box">
                                                        <i class="ico_w sunny_no"><span class="blind">맑음</span></i>
                                                    </dd>
                                                    <dd class="degree_point">
                                                        <div class="dp_inner">
                                                            <div class="point_box" style="height:60%;">
                                                                <span class="num">14<span class="celsius">°</span></span>
                                                            </div>
                                                        </div>
                                                    </dd>
                                                </dl>
                                            </li>
                                            <li>
                                                <dl class="graph_content">
                                                    <dt class="time"><em>22시</em></dt>
                                                    <dd class="weather_box">
                                                        <i class="ico_w sunny_no"><span class="blind">맑음</span></i>
                                                    </dd>
                                                    <dd class="degree_point">
                                                        <div class="dp_inner">
                                                            <div class="point_box" style="height:50%;">
                                                                <span class="num">13<span class="celsius">°</span></span>
                                                            </div>
                                                        </div>
                                                    </dd>
                                                </dl>
                                            </li>
                                            <li>
                                                <dl class="graph_content">
                                                    <dt class="time"><em>23시</em></dt>
                                                    <dd class="weather_box">
                                                        <i class="ico_w sunny_no"><span class="blind">맑음</span></i>
                                                    </dd>
                                                    <dd class="degree_point">
                                                        <div class="dp_inner">
                                                            <div class="point_box" style="height:50%;">
                                                                <span class="num">13<span class="celsius">°</span></span>
                                                            </div>
                                                        </div>
                                                    </dd>
                                                </dl>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>

                            <a class="slide_prev" href=""><span class="blind">이전</span></a>
                            <a class="slide_next on" href=""><span class="blind">다음</span></a>
                        </div>
                    </div>
                    <div class="wt_tabcont" id="tab_precipitation">
                        <div class="precipitation_graph graph_box_wrap">
                            <div class="txt">확률 %</div>
                            <div class="txt2">강수량  mm</div>
                            <div class="graph_box">
                                <div class="scroll_box">
                                    <div class="graph_inner">
                                        <ul>
                                            <li>
                                                <dl class="graph_content">
                                                    <dt class="time"><em>11시</em></dt>
                                                    <dd class="probability_box">
                                                        <span class="icon_area">
                                                            <i class="rain" style="height:0%;"></i>
                                                        </span>
                                                        <em class="value">-</em>
                                                    </dd>
                                                    <dd class="rainfall_data">
                                                        <div class="data_inner">0</div>
                                                    </dd>
                                                </dl>
                                            </li>
                                            <li>
                                                <dl class="graph_content">
                                                    <dt class="time"><em>12시</em></dt>
                                                    <dd class="probability_box">
                                                        <span class="icon_area">
                                                            <i class="rain" style="height:10%;"></i>
                                                        </span>
                                                        <em class="value">10%</em>
                                                    </dd>
                                                    <dd class="rainfall_data">
                                                        <div class="data_inner full">0.4</div>
                                                    </dd>
                                                </dl>
                                            </li>
                                            <li>
                                                <dl class="graph_content">
                                                    <dt class="time"><em>13시</em></dt>
                                                    <dd class="probability_box">
                                                        <span class="icon_area">
                                                            <i class="rain" style="height:30%;"></i>
                                                        </span>
                                                        <em class="value">30%</em>
                                                    </dd>
                                                    <dd class="rainfall_data">
                                                        <div class="data_inner">0</div>
                                                    </dd>
                                                </dl>
                                            </li>
                                            <li>
                                                <dl class="graph_content">
                                                    <dt class="time"><em>14시</em></dt>
                                                    <dd class="probability_box">
                                                        <span class="icon_area">
                                                            <i class="rain" style="height:50%;"></i>
                                                        </span>
                                                        <em class="value">50%</em>
                                                    </dd>
                                                    <dd class="rainfall_data">
                                                        <div class="data_inner">0</div>
                                                    </dd>
                                                </dl>
                                            </li>
                                            <li>
                                                <dl class="graph_content">
                                                    <dt class="time"><em>15시</em></dt>
                                                    <dd class="probability_box">
                                                        <span class="icon_area">
                                                            <i class="rain" style="height:50%;"></i>
                                                        </span>
                                                        <em class="value">50%</em>
                                                    </dd>
                                                    <dd class="rainfall_data">
                                                        <div class="data_inner">0</div>
                                                    </dd>
                                                </dl>
                                            </li>
                                            <li>
                                                <dl class="graph_content">
                                                    <dt class="time"><em>16시</em></dt>
                                                    <dd class="probability_box">
                                                        <span class="icon_area">
                                                            <i class="rain" style="height:70%;"></i>
                                                        </span>
                                                        <em class="value">70%</em>
                                                    </dd>
                                                    <dd class="rainfall_data">
                                                        <div class="data_inner">0</div>
                                                    </dd>
                                                </dl>
                                            </li>
                                            <li>
                                                <dl class="graph_content">
                                                    <dt class="time"><em>17시</em></dt>
                                                    <dd class="probability_box">
                                                        <span class="icon_area">
                                                            <i class="rain" style="height:50%;"></i>
                                                        </span>
                                                        <em class="value">50%</em>
                                                    </dd>
                                                    <dd class="rainfall_data">
                                                        <div class="data_inner">0</div>
                                                    </dd>
                                                </dl>
                                            </li>
                                            <li>
                                                <dl class="graph_content">
                                                    <dt class="time"><em>18시</em></dt>
                                                    <dd class="probability_box">
                                                        <span class="icon_area">
                                                            <i class="rain" style="height:50%;"></i>
                                                        </span>
                                                        <em class="value">50%</em>
                                                    </dd>
                                                    <dd class="rainfall_data">
                                                        <div class="data_inner">0</div>
                                                    </dd>
                                                </dl>
                                            </li>
                                            <li>
                                                <dl class="graph_content">
                                                    <dt class="time"><em>19시</em></dt>
                                                    <dd class="probability_box">
                                                        <span class="icon_area">
                                                            <i class="rain" style="height:0%;"></i>
                                                        </span>
                                                        <em class="value">-</em>
                                                    </dd>
                                                    <dd class="rainfall_data">
                                                        <div class="data_inner">0</div>
                                                    </dd>
                                                </dl>
                                            </li>
                                            <li>
                                                <dl class="graph_content">
                                                    <dt class="time"><em>20시</em></dt>
                                                    <dd class="probability_box">
                                                        <span class="icon_area">
                                                            <i class="rain" style="height:100%;"></i>
                                                        </span>
                                                        <em class="value">100%</em>
                                                    </dd>
                                                    <dd class="rainfall_data">
                                                        <div class="data_inner full">0.5</div>
                                                    </dd>
                                                </dl>
                                            </li>
                                            <li>
                                                <dl class="graph_content">
                                                    <dt class="time"><em>21시</em></dt>
                                                    <dd class="probability_box">
                                                        <span class="icon_area">
                                                            <i class="rain" style="height:50%;"></i>
                                                        </span>
                                                        <em class="value">50%</em>
                                                    </dd>
                                                    <dd class="rainfall_data">
                                                        <div class="data_inner">0</div>
                                                    </dd>
                                                </dl>
                                            </li>
                                            <li>
                                                <dl class="graph_content">
                                                    <dt class="time"><em>22시</em></dt>
                                                    <dd class="probability_box">
                                                        <span class="icon_area">
                                                            <i class="rain" style="height:50%;"></i>
                                                        </span>
                                                        <em class="value">50%</em>
                                                    </dd>
                                                    <dd class="rainfall_data">
                                                        <div class="data_inner">0</div>
                                                    </dd>
                                                </dl>
                                            </li>
                                            <li>
                                                <dl class="graph_content">
                                                    <dt class="time"><em>23시</em></dt>
                                                    <dd class="probability_box">
                                                        <span class="icon_area">
                                                            <i class="rain" style="height:50%;"></i>
                                                        </span>
                                                        <em class="value">50%</em>
                                                    </dd>
                                                    <dd class="rainfall_data">
                                                        <div class="data_inner">0</div>
                                                    </dd>
                                                </dl>
                                            </li>
                                            <li class="tomorrow">
                                                <dl class="graph_content">
                                                    <dt class="time"><em>내일</em></dt>
                                                    <dd class="probability_box">
                                                        <span class="icon_area">
                                                            <i class="rain" style="height:50%;"></i>
                                                        </span>
                                                        <em class="value">50%</em>
                                                    </dd>
                                                    <dd class="rainfall_data">
                                                        <div class="data_inner">0</div>
                                                    </dd>
                                                </dl>
                                            </li>
                                            <li>
                                                <dl class="graph_content">
                                                    <dt class="time"><em>01시</em></dt>
                                                    <dd class="probability_box">
                                                        <span class="icon_area">
                                                            <i class="rain" style="height:50%;"></i>
                                                        </span>
                                                        <em class="value">20%</em>
                                                    </dd>
                                                    <dd class="rainfall_data">
                                                        <div class="data_inner">0</div>
                                                    </dd>
                                                </dl>
                                            </li>
                                            <li>
                                                <dl class="graph_content">
                                                    <dt class="time"><em>02시</em></dt>
                                                    <dd class="probability_box">
                                                        <span class="icon_area">
                                                            <i class="rain" style="height:50%;"></i>
                                                        </span>
                                                        <em class="value">20%</em>
                                                    </dd>
                                                    <dd class="rainfall_data">
                                                        <div class="data_inner full">0.2</div>
                                                    </dd>
                                                </dl>
                                            </li>
                                            <li>
                                                <dl class="graph_content">
                                                    <dt class="time"><em>03시</em></dt>
                                                    <dd class="probability_box">
                                                        <span class="icon_area">
                                                            <i class="rain" style="height:50%;"></i>
                                                        </span>
                                                        <em class="value">20%</em>
                                                    </dd>
                                                    <dd class="rainfall_data">
                                                        <div class="data_inner full">0.2</div>
                                                    </dd>
                                                </dl>
                                            </li>
                                            <li>
                                                <dl class="graph_content">
                                                    <dt class="time"><em>04시</em></dt>
                                                    <dd class="probability_box">
                                                        <span class="icon_area">
                                                            <i class="rain" style="height:100%;"></i>
                                                        </span>
                                                        <em class="value">100%</em>
                                                    </dd>
                                                    <dd class="rainfall_data">
                                                        <div class="data_inner full">0.2</div>
                                                    </dd>
                                                </dl>
                                            </li>
                                            <li>
                                                <dl class="graph_content">
                                                    <dt class="time"><em>05시</em></dt>
                                                    <dd class="probability_box">
                                                        <span class="icon_area">
                                                            <i class="rain" style="height:50%;"></i>
                                                        </span>
                                                        <em class="value">20%</em>
                                                    </dd>
                                                    <dd class="rainfall_data">
                                                        <div class="data_inner full">0.2</div>
                                                    </dd>
                                                </dl>
                                            </li>
                                            <li>
                                                <dl class="graph_content">
                                                    <dt class="time"><em>06시</em></dt>
                                                    <dd class="probability_box">
                                                        <span class="icon_area">
                                                            <i class="rain" style="height:50%;"></i>
                                                        </span>
                                                        <em class="value">20%</em>
                                                    </dd>
                                                    <dd class="rainfall_data">
                                                        <div class="data_inner full">0.2</div>
                                                    </dd>
                                                </dl>
                                            </li>
                                            <li>
                                                <dl class="graph_content">
                                                    <dt class="time"><em>07시</em></dt>
                                                    <dd class="probability_box">
                                                        <span class="icon_area">
                                                            <i class="rain" style="height:50%;"></i>
                                                        </span>
                                                        <em class="value">20%</em>
                                                    </dd>
                                                    <dd class="rainfall_data">
                                                        <div class="data_inner">0</div>
                                                    </dd>
                                                </dl>
                                            </li>
                                            <li>
                                                <dl class="graph_content">
                                                    <dt class="time"><em>08시</em></dt>
                                                    <dd class="probability_box">
                                                        <span class="icon_area">
                                                            <i class="rain" style="height:50%;"></i>
                                                        </span>
                                                        <em class="value">20%</em>
                                                    </dd>
                                                    <dd class="rainfall_data">
                                                        <div class="data_inner">0</div>
                                                    </dd>
                                                </dl>
                                            </li>
                                            <li>
                                                <dl class="graph_content">
                                                    <dt class="time"><em>09시</em></dt>
                                                    <dd class="probability_box">
                                                        <span class="icon_area">
                                                            <i class="rain" style="height:50%;"></i>
                                                        </span>
                                                        <em class="value">20%</em>
                                                    </dd>
                                                    <dd class="rainfall_data">
                                                        <div class="data_inner">0</div>
                                                    </dd>
                                                </dl>
                                            </li>
                                            <li>
                                                <dl class="graph_content">
                                                    <dt class="time"><em>10시</em></dt>
                                                    <dd class="probability_box">
                                                        <span class="icon_area">
                                                            <i class="rain" style="height:50%;"></i>
                                                        </span>
                                                        <em class="value">-</em>
                                                    </dd>
                                                    <dd class="rainfall_data">
                                                        <div class="data_inner">0</div>
                                                    </dd>
                                                </dl>
                                            </li>
                                            <li>
                                                <dl class="graph_content">
                                                    <dt class="time"><em>11시</em></dt>
                                                    <dd class="probability_box">
                                                        <span class="icon_area">
                                                            <i class="rain" style="height:50%;"></i>
                                                        </span>
                                                        <em class="value">-</em>
                                                    </dd>
                                                    <dd class="rainfall_data">
                                                        <div class="data_inner">0</div>
                                                    </dd>
                                                </dl>
                                            </li>
                                            <li>
                                                <dl class="graph_content">
                                                    <dt class="time"><em>12시</em></dt>
                                                    <dd class="probability_box">
                                                        <span class="icon_area">
                                                            <i class="rain" style="height:50%;"></i>
                                                        </span>
                                                        <em class="value">50%</em>
                                                    </dd>
                                                    <dd class="rainfall_data">
                                                        <div class="data_inner full">0.4</div>
                                                    </dd>
                                                </dl>
                                            </li>
                                            <li>
                                                <dl class="graph_content">
                                                    <dt class="time"><em>13시</em></dt>
                                                    <dd class="probability_box">
                                                        <span class="icon_area">
                                                            <i class="rain" style="height:50%;"></i>
                                                        </span>
                                                        <em class="value">50%</em>
                                                    </dd>
                                                    <dd class="rainfall_data">
                                                        <div class="data_inner">0</div>
                                                    </dd>
                                                </dl>
                                            </li>
                                            <li>
                                                <dl class="graph_content">
                                                    <dt class="time"><em>14시</em></dt>
                                                    <dd class="probability_box">
                                                        <span class="icon_area">
                                                            <i class="rain" style="height:50%;"></i>
                                                        </span>
                                                        <em class="value">50%</em>
                                                    </dd>
                                                    <dd class="rainfall_data">
                                                        <div class="data_inner">0</div>
                                                    </dd>
                                                </dl>
                                            </li>
                                            <li>
                                                <dl class="graph_content">
                                                    <dt class="time"><em>15시</em></dt>
                                                    <dd class="probability_box">
                                                        <span class="icon_area">
                                                            <i class="rain" style="height:50%;"></i>
                                                        </span>
                                                        <em class="value">50%</em>
                                                    </dd>
                                                    <dd class="rainfall_data">
                                                        <div class="data_inner">0</div>
                                                    </dd>
                                                </dl>
                                            </li>
                                            <li>
                                                <dl class="graph_content">
                                                    <dt class="time"><em>16시</em></dt>
                                                    <dd class="probability_box">
                                                        <span class="icon_area">
                                                            <i class="rain" style="height:50%;"></i>
                                                        </span>
                                                        <em class="value">50%</em>
                                                    </dd>
                                                    <dd class="rainfall_data">
                                                        <div class="data_inner">0</div>
                                                    </dd>
                                                </dl>
                                            </li>
                                            <li>
                                                <dl class="graph_content">
                                                    <dt class="time"><em>17시</em></dt>
                                                    <dd class="probability_box">
                                                        <span class="icon_area">
                                                            <i class="rain" style="height:50%;"></i>
                                                        </span>
                                                        <em class="value">50%</em>
                                                    </dd>
                                                    <dd class="rainfall_data">
                                                        <div class="data_inner">0</div>
                                                    </dd>
                                                </dl>
                                            </li>
                                            <li>
                                                <dl class="graph_content">
                                                    <dt class="time"><em>18시</em></dt>
                                                    <dd class="probability_box">
                                                        <span class="icon_area">
                                                            <i class="rain" style="height:50%;"></i>
                                                        </span>
                                                        <em class="value">50%</em>
                                                    </dd>
                                                    <dd class="rainfall_data">
                                                        <div class="data_inner">0</div>
                                                    </dd>
                                                </dl>
                                            </li>
                                            <li>
                                                <dl class="graph_content">
                                                    <dt class="time"><em>19시</em></dt>
                                                    <dd class="probability_box">
                                                        <span class="icon_area">
                                                            <i class="rain" style="height:50%;"></i>
                                                        </span>
                                                        <em class="value">50%</em>
                                                    </dd>
                                                    <dd class="rainfall_data">
                                                        <div class="data_inner">0</div>
                                                    </dd>
                                                </dl>
                                            </li>
                                            <li>
                                                <dl class="graph_content">
                                                    <dt class="time"><em>20시</em></dt>
                                                    <dd class="probability_box">
                                                        <span class="icon_area">
                                                            <i class="rain" style="height:50%;"></i>
                                                        </span>
                                                        <em class="value">50%</em>
                                                    </dd>
                                                    <dd class="rainfall_data">
                                                        <div class="data_inner">0</div>
                                                    </dd>
                                                </dl>
                                            </li>
                                            <li>
                                                <dl class="graph_content">
                                                    <dt class="time"><em>21시</em></dt>
                                                    <dd class="probability_box">
                                                        <span class="icon_area">
                                                            <i class="rain" style="height:50%;"></i>
                                                        </span>
                                                        <em class="value">50%</em>
                                                    </dd>
                                                    <dd class="rainfall_data">
                                                        <div class="data_inner">0</div>
                                                    </dd>
                                                </dl>
                                            </li>
                                            <li>
                                                <dl class="graph_content">
                                                    <dt class="time"><em>22시</em></dt>
                                                    <dd class="probability_box">
                                                        <span class="icon_area">
                                                            <i class="rain" style="height:50%;"></i>
                                                        </span>
                                                        <em class="value">50%</em>
                                                    </dd>
                                                    <dd class="rainfall_data">
                                                        <div class="data_inner">0</div>
                                                    </dd>
                                                </dl>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>

                            <a class="slide_prev" href=""><span class="blind">이전</span></a>
                            <a class="slide_next on" href=""><span class="blind">다음</span></a>
                        </div>
                    </div>
                    <div class="wt_tabcont" id="tab_humidity">
                        <div class="humidity_graph graph_box_wrap">
                            <div class="txt">습도 %</div>
                            <div class="graph_box">
                                <div class="scroll_box">
                                    <div class="graph_inner">
                                        <ul>
                                            <li>
                                                <dl class="graph_content">
                                                    <dt class="time"><em>11시</em></dt>
                                                    <dd class="data">
                                                        <div class="base_bar" style="height:50%;">
                                                            <span class="num">0</span>
                                                        </div>
                                                    </dd>
                                                </dl>
                                            </li>
                                            <li>
                                                <dl class="graph_content">
                                                    <dt class="time"><em>12시</em></dt>
                                                    <dd class="data">
                                                        <div class="base_bar" style="height:30%;">
                                                            <span class="num">30</span>
                                                        </div>
                                                    </dd>
                                                </dl>
                                            </li>
                                            <li>
                                                <dl class="graph_content">
                                                    <dt class="time"><em>13시</em></dt>
                                                    <dd class="data">
                                                        <div class="base_bar" style="height:60%;">
                                                            <span class="num">50</span>
                                                        </div>
                                                    </dd>
                                                </dl>
                                            </li>
                                            <li>
                                                <dl class="graph_content">
                                                    <dt class="time"><em>14시</em></dt>
                                                    <dd class="data">
                                                        <div class="base_bar" style="height:80%;">
                                                            <span class="num">70</span>
                                                        </div>
                                                    </dd>
                                                </dl>
                                            </li>
                                            <li>
                                                <dl class="graph_content">
                                                    <dt class="time"><em>15시</em></dt>
                                                    <dd class="data">
                                                        <div class="base_bar" style="height:100%;">
                                                            <span class="num">100</span>
                                                        </div>
                                                    </dd>
                                                </dl>
                                            </li>
                                            <li>
                                                <dl class="graph_content">
                                                    <dt class="time"><em>16시</em></dt>
                                                    <dd class="data">
                                                        <div class="base_bar" style="height:90%;">
                                                            <span class="num">90</span>
                                                        </div>
                                                    </dd>
                                                </dl>
                                            </li>
                                            <li>
                                                <dl class="graph_content">
                                                    <dt class="time"><em>17시</em></dt>
                                                    <dd class="data">
                                                        <div class="base_bar" style="height:90%;">
                                                            <span class="num">90</span>
                                                        </div>
                                                    </dd>
                                                </dl>
                                            </li>
                                            <li>
                                                <dl class="graph_content">
                                                    <dt class="time"><em>18시</em></dt>
                                                    <dd class="data">
                                                        <div class="base_bar" style="height:90%;">
                                                            <span class="num">90</span>
                                                        </div>
                                                    </dd>
                                                </dl>
                                            </li>
                                            <li>
                                                <dl class="graph_content">
                                                    <dt class="time"><em>19시</em></dt>
                                                    <dd class="data">
                                                        <div class="base_bar" style="height:80%;">
                                                            <span class="num">70</span>
                                                        </div>
                                                    </dd>
                                                </dl>
                                            </li>
                                            <li>
                                                <dl class="graph_content">
                                                    <dt class="time"><em>20시</em></dt>
                                                    <dd class="data">
                                                        <div class="base_bar" style="height:80%;">
                                                            <span class="num">70</span>
                                                        </div>
                                                    </dd>
                                                </dl>
                                            </li>
                                            <li>
                                                <dl class="graph_content">
                                                    <dt class="time"><em>21시</em></dt>
                                                    <dd class="data">
                                                        <div class="base_bar" style="height:80%;">
                                                            <span class="num">70</span>
                                                        </div>
                                                    </dd>
                                                </dl>
                                            </li>
                                            <li>
                                                <dl class="graph_content">
                                                    <dt class="time"><em>22시</em></dt>
                                                    <dd class="data">
                                                        <div class="base_bar" style="height:80%;">
                                                            <span class="num">70</span>
                                                        </div>
                                                    </dd>
                                                </dl>
                                            </li>
                                            <li>
                                                <dl class="graph_content">
                                                    <dt class="time"><em>23시</em></dt>
                                                    <dd class="data">
                                                        <div class="base_bar" style="height:80%;">
                                                            <span class="num">70</span>
                                                        </div>
                                                    </dd>
                                                </dl>
                                            </li>
                                            <li class="tomorrow">
                                                <dl class="graph_content">
                                                    <dt class="time"><em>내일</em></dt>
                                                    <dd class="data">
                                                        <div class="base_bar" style="height:80%;">
                                                            <span class="num">70</span>
                                                        </div>
                                                    </dd>
                                                </dl>
                                            </li>
                                            <li>
                                                <dl class="graph_content">
                                                    <dt class="time"><em>01시</em></dt>
                                                    <dd class="data">
                                                        <div class="base_bar" style="height:80%;">
                                                            <span class="num">70</span>
                                                        </div>
                                                    </dd>
                                                </dl>
                                            </li>
                                            <li>
                                                <dl class="graph_content">
                                                    <dt class="time"><em>02시</em></dt>
                                                    <dd class="data">
                                                        <div class="base_bar" style="height:80%;">
                                                            <span class="num">70</span>
                                                        </div>
                                                    </dd>
                                                </dl>
                                            </li>
                                            <li>
                                                <dl class="graph_content">
                                                    <dt class="time"><em>03시</em></dt>
                                                    <dd class="data">
                                                        <div class="base_bar" style="height:80%;">
                                                            <span class="num">70</span>
                                                        </div>
                                                    </dd>
                                                </dl>
                                            </li>
                                            <li>
                                                <dl class="graph_content">
                                                    <dt class="time"><em>04시</em></dt>
                                                    <dd class="data">
                                                        <div class="base_bar" style="height:80%;">
                                                            <span class="num">70</span>
                                                        </div>
                                                    </dd>
                                                </dl>
                                            </li>
                                            <li>
                                                <dl class="graph_content">
                                                    <dt class="time"><em>05시</em></dt>
                                                    <dd class="data">
                                                        <div class="base_bar" style="height:80%;">
                                                            <span class="num">70</span>
                                                        </div>
                                                    </dd>
                                                </dl>
                                            </li>
                                            <li>
                                                <dl class="graph_content">
                                                    <dt class="time"><em>06시</em></dt>
                                                    <dd class="data">
                                                        <div class="base_bar" style="height:80%;">
                                                            <span class="num">70</span>
                                                        </div>
                                                    </dd>
                                                </dl>
                                            </li>
                                            <li>
                                                <dl class="graph_content">
                                                    <dt class="time"><em>07시</em></dt>
                                                    <dd class="data">
                                                        <div class="base_bar" style="height:80%;">
                                                            <span class="num">70</span>
                                                        </div>
                                                    </dd>
                                                </dl>
                                            </li>
                                            <li>
                                                <dl class="graph_content">
                                                    <dt class="time"><em>08시</em></dt>
                                                    <dd class="data">
                                                        <div class="base_bar" style="height:80%;">
                                                            <span class="num">70</span>
                                                        </div>
                                                    </dd>
                                                </dl>
                                            </li>
                                            <li>
                                                <dl class="graph_content">
                                                    <dt class="time"><em>09시</em></dt>
                                                    <dd class="data">
                                                        <div class="base_bar" style="height:80%;">
                                                            <span class="num">70</span>
                                                        </div>
                                                    </dd>
                                                </dl>
                                            </li>
                                            <li>
                                                <dl class="graph_content">
                                                    <dt class="time"><em>10시</em></dt>
                                                    <dd class="data">
                                                        <div class="base_bar" style="height:80%;">
                                                            <span class="num">70</span>
                                                        </div>
                                                    </dd>
                                                </dl>
                                            </li>
                                            <li>
                                                <dl class="graph_content">
                                                    <dt class="time"><em>11시</em></dt>
                                                    <dd class="data">
                                                        <div class="base_bar" style="height:50%;">
                                                            <span class="num">0</span>
                                                        </div>
                                                    </dd>
                                                </dl>
                                            </li>
                                            <li>
                                                <dl class="graph_content">
                                                    <dt class="time"><em>12시</em></dt>
                                                    <dd class="data">
                                                        <div class="base_bar" style="height:30%;">
                                                            <span class="num">30</span>
                                                        </div>
                                                    </dd>
                                                </dl>
                                            </li>
                                            <li>
                                                <dl class="graph_content">
                                                    <dt class="time"><em>13시</em></dt>
                                                    <dd class="data">
                                                        <div class="base_bar" style="height:60%;">
                                                            <span class="num">50</span>
                                                        </div>
                                                    </dd>
                                                </dl>
                                            </li>
                                            <li>
                                                <dl class="graph_content">
                                                    <dt class="time"><em>14시</em></dt>
                                                    <dd class="data">
                                                        <div class="base_bar" style="height:80%;">
                                                            <span class="num">70</span>
                                                        </div>
                                                    </dd>
                                                </dl>
                                            </li>
                                            <li>
                                                <dl class="graph_content">
                                                    <dt class="time"><em>15시</em></dt>
                                                    <dd class="data">
                                                        <div class="base_bar" style="height:100%;">
                                                            <span class="num">100</span>
                                                        </div>
                                                    </dd>
                                                </dl>
                                            </li>
                                            <li>
                                                <dl class="graph_content">
                                                    <dt class="time"><em>16시</em></dt>
                                                    <dd class="data">
                                                        <div class="base_bar" style="height:90%;">
                                                            <span class="num">90</span>
                                                        </div>
                                                    </dd>
                                                </dl>
                                            </li>
                                            <li>
                                                <dl class="graph_content">
                                                    <dt class="time"><em>17시</em></dt>
                                                    <dd class="data">
                                                        <div class="base_bar" style="height:90%;">
                                                            <span class="num">90</span>
                                                        </div>
                                                    </dd>
                                                </dl>
                                            </li>
                                            <li>
                                                <dl class="graph_content">
                                                    <dt class="time"><em>18시</em></dt>
                                                    <dd class="data">
                                                        <div class="base_bar" style="height:90%;">
                                                            <span class="num">90</span>
                                                        </div>
                                                    </dd>
                                                </dl>
                                            </li>
                                            <li>
                                                <dl class="graph_content">
                                                    <dt class="time"><em>19시</em></dt>
                                                    <dd class="data">
                                                        <div class="base_bar" style="height:80%;">
                                                            <span class="num">70</span>
                                                        </div>
                                                    </dd>
                                                </dl>
                                            </li>
                                            <li>
                                                <dl class="graph_content">
                                                    <dt class="time"><em>20시</em></dt>
                                                    <dd class="data">
                                                        <div class="base_bar" style="height:80%;">
                                                            <span class="num">70</span>
                                                        </div>
                                                    </dd>
                                                </dl>
                                            </li>
                                            <li>
                                                <dl class="graph_content">
                                                    <dt class="time"><em>21시</em></dt>
                                                    <dd class="data">
                                                        <div class="base_bar" style="height:80%;">
                                                            <span class="num">70</span>
                                                        </div>
                                                    </dd>
                                                </dl>
                                            </li>
                                            <li>
                                                <dl class="graph_content">
                                                    <dt class="time"><em>22시</em></dt>
                                                    <dd class="data">
                                                        <div class="base_bar" style="height:80%;">
                                                            <span class="num">70</span>
                                                        </div>
                                                    </dd>
                                                </dl>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>

                            <a class="slide_prev" href=""><span class="blind">이전</span></a>
                            <a class="slide_next on" href=""><span class="blind">다음</span></a>
                        </div>
                    </div>
                </div>
            </div>
            <!-- //탭 : 날씨, 강수, 습도 -->
            
            
            <!-- 주간예보 -->
            <div class="week_weather">
                <div id="box2_1" style="display: none;"></div>
                <div id="box2_3" style="display: none;"></div>
                <h3 class="tit">주간예보</h3>
                <ul class="week_list">
                    <li class="today">
                        <div class="day_data">
                            <div class="cell_date">
                                <span class="day" id="day1">오늘</span>
                                <span class="date" id="date1">11.18</span>
                            </div>
                            <div class="cell_weather">
                                <span class="weather_inner">
                                    <span class="weather_left">
                                        <strong class="time">오전</strong>
                                        <span class="rainfall" id="rnSt0Am">20%</span>
                                    </span>
                                    <i class="ico_w"><span class="blind">맑음</span></i>
                                </span>
                                <span class="weather_inner">
                                    <span class="weather_left">
                                        <strong class="time">오후</strong>
                                        <span class="rainfall" id="rnSt0Pm">20%</span>
                                    </span>
                                    <i class="ico_w"><span class="blind">맑음</span></i>
                                </span>
                            </div>
                            <div class="cell_temperature">
                                <span class="lowest" id="taMin0">14°</span>
                                <span class="slash">/</span>
                                <span class="highest" id="taMax0">20°</span>
                            </div>
                        </div>
                    </li>
                    <li class="tomorrow">
                        <div class="day_data">
                            <div class="cell_date">
                                <span class="day" id="day2">내일</span>
                                <span class="date" id="date2">11.18</span>
                            </div>
                            <div class="cell_weather">
                                <span class="weather_inner">
                                    <span class="weather_left">
                                        <strong class="time">오전</strong>
                                        <span class="rainfall" id="rnSt1Am">20%</span>
                                    </span>
                                    <i class="ico_w"><span class="blind">맑음</span></i>
                                </span>
                                <span class="weather_inner">
                                    <span class="weather_left">
                                        <strong class="time">오후</strong>
                                        <span class="rainfall" id="rnSt1Pm">20%</span>
                                    </span>
                                    <i class="ico_w"><span class="blind">맑음</span></i>
                                </span>
                            </div>
                            <div class="cell_temperature">
                                <span class="lowest" id="taMin1">14°</span>
                                <span class="slash">/</span>
                                <span class="highest" id="taMax1">20°</span>
                            </div>
                        </div>
                    </li>
                    <li class="holiday">
                        <div class="day_data">
                            <div class="cell_date">
                                <span class="day" id="day3">일</span>
                                <span class="date" id="date3">11.20</span>
                            </div>
                            <div class="cell_weather">
                                <span class="weather_inner">
                                    <span class="weather_left">
                                        <span class="rainfall" id="rnSt2Am">20%</span>
                                    </span>
                                    <i class="ico_w"><span class="blind">맑음</span></i>
                                </span>
                                <span class="weather_inner">
                                    <span class="weather_left">
                                        <span class="rainfall" id="rnSt2Pm">20%</span>
                                    </span>
                                    <i class="ico_w"><span class="blind">맑음</span></i>
                                </span>
                            </div>
                            <div class="cell_temperature">
                                <span class="lowest" id="taMin2">14°</span>
                                <span class="slash">/</span>
                                <span class="highest" id="taMax2">20°</span>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="day_data">
                            <div class="cell_date">
                                <span class="day" id="day4">월</span>
                                <span class="date" id="date4">11.21</span>
                            </div>
                            <div class="cell_weather">
                                <span class="weather_inner">
                                    <span class="weather_left">
                                        <span class="rainfall" id="rnSt3Am">20%</span>
                                    </span>
                                    <i class="ico_w"><span class="blind">맑음</span></i>
                                </span>
                                <span class="weather_inner">
                                    <span class="weather_left">
                                        <span class="rainfall" id="rnSt3Pm">20%</span>
                                    </span>
                                    <i class="ico_w"><span class="blind">맑음</span></i>
                                </span>
                            </div>
                            <div class="cell_temperature">
                                <span class="lowest" id="taMin3">14°</span>
                                <span class="slash">/</span>
                                <span class="highest" id="taMax3">20°</span>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="day_data">
                            <div class="cell_date">
                                <span class="day" id="day5">화</span>
                                <span class="date" id="date5">11.22</span>
                            </div>
                            <div class="cell_weather">
                                <span class="weather_inner">
                                    <span class="weather_left">
                                        <span class="rainfall" id="rnSt4Am">20%</span>
                                    </span>
                                    <i class="ico_w"><span class="blind">맑음</span></i>
                                </span>
                                <span class="weather_inner">
                                    <span class="weather_left">
                                        <span class="rainfall" id="rnSt4Pm">20%</span>
                                    </span>
                                    <i class="ico_w"><span class="blind">맑음</span></i>
                                </span>
                            </div>
                            <div class="cell_temperature">
                                <span class="lowest" id="taMin4">14°</span>
                                <span class="slash">/</span>
                                <span class="highest" id="taMax4">20°</span>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="day_data">
                            <div class="cell_date">
                                <span class="day" id="day6">수</span>
                                <span class="date" id="date6">11.23</span>
                            </div>
                            <div class="cell_weather">
                                <span class="weather_inner">
                                    <span class="weather_left">
                                        <span class="rainfall" id="rnSt5Am">20%</span>
                                    </span>
                                    <i class="ico_w"><span class="blind">맑음</span></i>
                                </span>
                                <span class="weather_inner">
                                    <span class="weather_left">
                                        <span class="rainfall" id="rnSt5Pm">20%</span>
                                    </span>
                                    <i class="ico_w"><span class="blind">맑음</span></i>
                                </span>
                            </div>
                            <div class="cell_temperature">
                                <span class="lowest" id="taMin5">14°</span>
                                <span class="slash">/</span>
                                <span class="highest" id="taMax5">20°</span>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="day_data">
                            <div class="cell_date">
                                <span class="day" id="day7">목</span>
                                <span class="date" id="date7">11.24</span>
                            </div>
                            <div class="cell_weather">
                                <span class="weather_inner">
                                    <span class="weather_left">
                                        <span class="rainfall" id="rnSt6Am">20%</span>
                                    </span>
                                    <i class="ico_w"><span class="blind">맑음</span></i>
                                </span>
                                <span class="weather_inner">
                                    <span class="weather_left">
                                        <span class="rainfall" id="rnSt6Pm">20%</span>
                                    </span>
                                    <i class="ico_w"><span class="blind">맑음</span></i>
                                </span>
                            </div>
                            <div class="cell_temperature">
                                <span class="lowest" id="taMin6">14°</span>
                                <span class="slash">/</span>
                                <span class="highest" id="taMax6">20°</span>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="day_data">
                            <div class="cell_date">
                                <span class="day" id="day8">금</span>
                                <span class="date" id="date8" >11.25</span>
                            </div>
                            <div class="cell_weather">
                                <span class="weather_inner">
                                    <span class="weather_left">
                                        <span class="rainfall" id="rnSt7Am">20%</span>
                                    </span>
                                    <i class="ico_w"><span class="blind">맑음</span></i>
                                </span>
                                <span class="weather_inner">
                                    <span class="weather_left">
                                        <span class="rainfall" id="rnSt7Pm">20%</span>
                                    </span>
                                    <i class="ico_w"><span class="blind">맑음</span></i>
                                </span>
                            </div>
                            <div class="cell_temperature">
                                <span class="lowest" id="taMin7">14°</span>
                                <span class="slash">/</span>
                                <span class="highest" id="taMax7">20°</span>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="day_data">
                            <div class="cell_date">
                                <span class="day" id="day9">토</span>
                                <span class="date" id="date9">11.26</span>
                            </div>
                            <div class="cell_weather">
                                <span class="weather_inner">
                                    <span class="weather_left">
                                        <span class="rainfall" id="rnSt8Am">20%</span>
                                    </span>
                                    <i class="ico_w"><span class="blind">맑음</span></i>
                                </span>
                                <span class="weather_inner">
                                    <span class="weather_left">
                                        <span class="rainfall" id="rnSt8Pm">20%</span>
                                    </span>
                                    <i class="ico_w"><span class="blind">맑음</span></i>
                                </span>
                            </div>
                            <div class="cell_temperature">
                                <span class="lowest" id="taMin8">14°</span>
                                <span class="slash">/</span>
                                <span class="highest" id="taMax8">20°</span>
                            </div>
                        </div>
                    </li>
                    <li class="holiday">
                        <div class="day_data">
                            <div class="cell_date">
                                <span class="day" id="day10">일</span>
                                <span class="date" id="date10">11.27</span>
                            </div>
                            <div class="cell_weather">
                                <span class="weather_inner">
                                    <span class="weather_left">
                                        <span class="rainfall" id="rnSt9Am">20%</span>
                                    </span>
                                    <i class="ico_w"><span class="blind">맑음</span></i>
                                </span>
                                <span class="weather_inner">
                                    <span class="weather_left">
                                        <span class="rainfall" id="rnSt9Pm">20%</span>
                                    </span>
                                    <i class="ico_w"><span class="blind">맑음</span></i>
                                </span>
                            </div>
                            <div class="cell_temperature">
                                <span class="lowest" id="taMin9">14°</span>
                                <span class="slash">/</span>
                                <span class="highest" id="taMax9">20°</span>
                            </div>
                        </div>
                    </li>
                </ul>
            </div>
            <!-- //주간예보 -->

            <div class="weather_foot">
                <a href="https://www.weather.go.kr/w/weather/forecast/short-term.do" target="_blank" rel="noopener" title="새창">
                    <img width="90" height="36" src="${pageContext.request.contextPath}/resources/static/images_old/weather/wt_logo.png" alt="기상청" />
                </a>
            </div>
        </div>
    </div>
</div>
<!--날씨 jquery-->
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/static/js_old/weather.js"></script>

<script>

$("#weathers").click(function(e){
      e.preventDefault();
   $('#weatherShow').show();
 //   window.open(getContextPath()+"/useinfo/weather", "_blank", "height:500, width:500"); 
    $('.popup_bg, .pop_weather').show();
    //$('.popup_bg, .popup').fadeIn();
  });

</script>

