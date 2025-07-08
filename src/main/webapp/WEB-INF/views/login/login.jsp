<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>SKIN QURATOR</title>
    <jsp:include page="../common/common.jsp"/>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/static/js_old/login.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/static/js_old/common.js"></script>

</head>

<body class="page_cosmetic">
    <jsp:include page="../common/header.jsp"/>

     <!-- Container -->
    <section class="container">

        <!-- 타이틀 -->
        <div class="title title_bg_join">
            <div class="inner">
                <div class="txtbox">
                    <h3 class="ff_nm">로그인</h3>
                </div>
            </div>
        </div>
        <!-- //타이틀 -->

        <!-- 컨텐츠 -->
        <div class="content login">
            <div class="inner">

                <div class="loginbox">
                    <form action="" method="post">
                        <h4 class="ff_nm">LOGIN</h4>
                        <ul class="form_style">
                            <li>
                                <label for="user_id">아이디</label>
                                <input id="user_id" type="text" value="" />
                            </li>
                            <li>
                                <label for="user_pw">비밀번호</label>
                                <input id="user_pw" type="password" value="" />
                            </li>
                        </ul>
                        <button class="btn_st1 btn_login" type="button" id="btn_login">로그인</button>
                    </form>

                    <div class="login_btm">
                        <a href="${pageContext.request.contextPath}/join/findId" id="join_find_id" >아이디 찾기</a>
                        <a href="${pageContext.request.contextPath}/join/findPassword" id="join_find_pw">비밀번호 찾기</a>
                        <a class="fc_gold" href="${pageContext.request.contextPath}/join/signUpTerms">회원가입</a>
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