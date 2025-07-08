<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<style>
body {background-color:pink !important;}
</style>
    <!-- Header -->
    <header class="header">

        <!-- 스크롤시 보여지는 로고 -->
        <div class="hidden_logo">
            <a href="${pageContext.request.contextPath}/">SKIN QURATOR</a>
        </div>

        <div class="inner">
            <h1><a href="${pageContext.request.contextPath}/">SKIN QURATOR</a></h1>
            <div class="member">
                <!-- <a class="loginStatus"  href="${pageContext.request.contextPath}/login"><span cal="loginStatus">LOGIN</span></a>
                <a href="${pageContext.request.contextPath}/join/signUpTerms">회원가입</a> -->
            </div>
        </div>

        <nav class="gnb">
            <div class="inner">
                <ul class="depth_01">
                    <li><a href="${pageContext.request.contextPath}/business/business_01_1">산업혁신기반구축사업</a>
                        <div class="sub">
                            <ul class="depth_02">
                                <li><a href="${pageContext.request.contextPath}/business/business_01_1">사업소개</a></li>
                                <li><a href="${pageContext.request.contextPath}/business/business_02_1">기관소개</a></li>
                            </ul>
                        </div>
                    </li>
                    <li><a href="${pageContext.request.contextPath}/cosmetic/cosmetic_01_1">맞춤형화장품 소개</a>
                        <div class="sub">
                            <ul class="depth_02">
                                <li><a href="${pageContext.request.contextPath}/cosmetic/cosmetic_01_1">정의 및 History</a></li>
                                <li><a href="${pageContext.request.contextPath}/cosmetic/cosmetic_02_1">맞춤형화장품 판매업</a></li>
                                <li><a href="${pageContext.request.contextPath}/cosmetic/cosmetic_03_1">SkinQurator</a></li>
                            </ul>
                        </div>
                    </li>
                    <li><a href="${pageContext.request.contextPath}/solution/solution_01_1">나의 피부고민 솔루션</a>
                        <div class="sub">
                            <ul class="depth_02">
                                <li><a href="${pageContext.request.contextPath}/solution/solution_01_1">자가진단</a></li>
                                <li><a href="${pageContext.request.contextPath}/solution/solution_02_1">SkinLink</a></li>
                                <li><a href="${pageContext.request.contextPath}/solution/solution_03_1">AI기반 피부진단</a></li>
                                <li><a href="${pageContext.request.contextPath}/solution/solution_04_2">진단이력관리</a></li>
                            </ul>
                        </div>
                    </li>
                    <li><a href="${pageContext.request.contextPath}/beautytech/tech_02_1">스마트뷰티테크</a><!--초위스컴퍼니페이지있기때문에 넣었음 추후 아람휴비스생기면 바꾸세요.-->
                        <div class="sub">
                            <ul class="depth_02">
                                <li><a href="${pageContext.request.contextPath}/beautytech/tech_01_1">아람휴비스</a></li>
                                <li><a href="${pageContext.request.contextPath}/beautytech/tech_02_1">초위스컴퍼니</a></li>
                                <li><a href="${pageContext.request.contextPath}/beautytech/tech_03_1">룰루랩</a></li>
                                <li><a href="${pageContext.request.contextPath}/beautytech/tech_04_1">릴리커버</a></li>
                                <li><a href="${pageContext.request.contextPath}/beautytech/tech_05_1">링커버스</a></li>
                                <li><a href="${pageContext.request.contextPath}/beautytech/tech_06_1">에프앤디파트너스</a></li>
                                <li><a href="${pageContext.request.contextPath}/beautytech/tech_07_1">케이씨테크놀러지</a></li>
                                <li><a href="${pageContext.request.contextPath}/beautytech/tech_08_1">파이</a></li>
                                <li><a href="${pageContext.request.contextPath}/beautytech/tech_09_1">헬리오스</a></li>
                                <li><a href="${pageContext.request.contextPath}/beautytech/tech_10_1">인바디</a></li>
                            </ul>
                        </div>
                    </li>
                    <li><a href="${pageContext.request.contextPath}/performance/performance_03_1">융복합 기술개발성과</a>
                        <div class="sub">
                            <ul class="depth_02">
                                <li><a href="${pageContext.request.contextPath}/performance/performance_03_1">융복합 기술개발 성과</a></li>
                                <li><a href="${pageContext.request.contextPath}/performance/performance_04_1">피부정보 데이터 소개</a></li>
                            </ul>
                        </div>
                    </li>
                    <li><a href="">ICT융복합 서비스</a>
                        <div class="sub">
                            <ul class="depth_02">
                                <li><a href="${pageContext.request.contextPath}/service/service_01_1">스마트미러</a></li>
                                <li><a href="${pageContext.request.contextPath}/service/service_02_1">스마트팩토리</a></li>
                            </ul>
                        </div>
                    </li>
                    <li><a href="">커뮤니티</a>
                        <div class="sub">
                            <ul class="depth_02">
                                <li><a href="${pageContext.request.contextPath}/community/community_01">공지사항</a></li>
                                <li><a href="${pageContext.request.contextPath}/community/community_02_1">자료실</a></li>
                                <!-- <li><a href="${pageContext.request.contextPath}/community/community_03_1">맞춤형화장품 조제관리사 Network</a></li> -->
                                <li><a href="${pageContext.request.contextPath}/community/community_04">자주묻는 질문</a></li>
                            </ul>
                        </div>
                    </li>
                </ul>
            </div>
        </nav>

        <div class="side_menu">
            <button type="button">유용정보</button>
            <ul>
                <li><a href="${pageContext.request.contextPath}/useinfo/toursInfo" id="toursInfo"><span class="ico ico_01"></span>관광</a></li>
                <li><a href="${pageContext.request.contextPath}/useinfo/weather" id="weathers"><span class="ico ico_02"></span>기상정보</a></li>
                <li><a href="${pageContext.request.contextPath}/useinfo/medical" id="medicalInfo"><span class="ico ico_07"></span>의료기관 정보</a></li>
                <li><a href="" class="prepares" id="prepares1"><span class="ico ico_03"></span>지역음식</a></li>
                <li><a  href="" class="prepares" id="prepare2"><span class="ico ico_04"></span>쇼핑</a></li>
                <li><a href="" class="prepares" id="prepare3"><span class="ico ico_05"></span>축제및행사</a></li>
                <li><a href="" class="prepares" id="prepare4"><span class="ico ico_06"></span>교통</a></li>             
            </ul>
        </div>
        
    </header>
    <!-- //Header -->
