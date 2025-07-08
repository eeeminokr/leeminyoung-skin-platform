<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
	java.util.ArrayList<String> local = new java.util.ArrayList<String>(java.util.Arrays.asList("서울","부산","대구","인천","광주","대전","울산","세종","경기","강원","충북","충남","전북","전남","경북","경남","제주"));
		
	
	request.setAttribute("residence", local);


%>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>SKIN QURATOR</title>
      <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/static/js_old/lib/jquery-3.6.1.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/static/js_old/lib/jquery-1.6.4.min.js"></script>
    <!-- jquery -->
	<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
	<!-- jquery-ui -->
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<!-- jquery-ui css -->
	<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css"> 
     <script type="text/javascript" src="${pageContext.request.contextPath}/resources/static/js_old/join.js"> </script>

    <jsp:include page="../common/common.jsp"/>

<style>          
            #password-strength-status {
                padding: 5px 10px;
                color: #FFFFFF;
                border-radius: 4px;
                margin-top: 5px;
                position: absolute;
                display: inline-block;
    			text-align: center;
            }

            .medium-password {
                background-color: #b7d60a;
                border: #BBB418 1px solid;
            }

            .weak-password {
                background-color: #ce1d14;
              /*border: #AA4502 1px solid;*/
            	width: 500px;
            }

            .strong-password {
                background-color: #12CC1A;
                /*border: #0FA015 1px solid;*/
                
            }

			.dn {
				display: none;
				
			}



</style>

</head>

<body class="page_cosmetic">
    <jsp:include page="../common/header.jsp"/>

    <!-- Container -->
    <section class="container">

        <!-- 타이틀 -->
        <div class="title title_bg_join">
            <div class="inner">
                <div class="txtbox">
                    <h3 class="ff_nm">회원가입</h3>
                </div>
            </div>
        </div>
        <!-- //타이틀 -->

        <!-- 컨텐츠 -->
        <div class="content join">
            <div class="inner">

                <div class="join_form">
                    <form action="" method="post">
                        <ul class="form_style">
                            <li>
                                <label for="username">이름</label>
                                <input id="username" type="text" placeholder="이름입력" />
                            </li>
                            <li>
                                <label for="email">아이디(이메일)</label>
                                <input id="email" type="text" placeholder="이메일 주소입력" />
                                <button class="btn_st2" id="overlapCheckEmail"  type="button">인증번호 받기</button>
                                <input type="hidden" id="emailNumber" value="${emailNumber}">
                            </li>
                            <li>
                                <label for="memailconfirm" id="memailconfirmTxt">인증번호 입력</label>
                                <input class="bg_color" type="text" id="memailconfirm" />
                                <button class="btn_st2" type="button" id="confirmEmail">확인</button>
                                <span id="checkEmail"></span>
                                <p class="txt">로그인 아이디로 이메일 주소가 사용됩니다.<br />
                                    평소에 주로 사용하는 이메일 주소를 입력해 주시기 바랍니다.</p>
                                <!--div class="message">
                                    <p class="txt">로그인 아이디로 이메일 주소가 사용됩니다.<br />
                                        평소에 주로 사용하는 이메일 주소를 입력해 주시기 바랍니다.</p>
                                </div-->
                            </li>
                            <li>
                                <label for="password">비밀번호</label>
                                <input id="password" type="password" value="" placeholder="최소 8자 이상, 숫자 및 특수문자 포함"  autocomplete="off"/>
                           		<span id="password-strength-status"></span>
                            </li>

                            <li>
                                <label for="chkPassoword">비밀번호 재확인</label>
                                <input id="chkPassoword" type="password" value=""  />
                            	<span id ="passwordStatus"></span>
                            </li>
                            <li>
                                <span class="label">성별</span>
                                <label class="none_st"><input id="gender" name="gender" type="radio" value="1"  /><span>남</span></label>
                                <label class="none_st ml_40"><input id="gender" name="gender" type="radio" value="2"  /><span>여</span></label>
                            </li>
                            <li>
                                <label for="user_birth">생년월일</label>
                                <c:set var="now" value="<%=new java.util.Date()%>" />
                               <fmt:formatDate var ="year" value="${now}" pattern="yyyy" />

                                <select class="birth_y" id="birthYear" name="">
                                 <option value="">생년</option>
                                <c:forEach var="i" begin="1940" end="${year}">
                                  <option value="${i}">${i}</option>
                                 </c:forEach>
                                </select>
                                <select class="birth_m" id="birthMonth" name="">
                                 <option value="">월</option>
                                <c:forEach var="i" begin="1" end="12">
                                    <option value="${i}">${i}</option>
                                </c:forEach>
                                </select>

                                <select class="birth_d" id="birthWeek" name="">
                                   <option value="">일</option>
                                 <c:forEach var="i" begin="1" end="31">
                                    <option value="${i}">${i}</option>
                                 </c:forEach>
                                </select>
                            </li>
                            <li>
                                <label for="user_area">거주지</label>
                                <c:set var="local" value="${local}" />
                                <select class="area" id="residence" name="">
                                <option value="">지역선택</option>
                               	 <c:forEach var="item" items="${residence}" varStatus="status">
                                    <option value="${status.count}">${status.current}</option>
                                 </c:forEach>
                                </select>
                            </li>
                            <li>
                                <label for="companyName">회사명</label>
                                <input id="companyName" type="text" value="" placeholder="선택사항" />
                            </li>
                            <li>
                                <label for="phoneNumber">휴대폰 번호</label>
                                <input id="phoneNumber" maxlength="11" pattern="[0-9]+" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');" type="text" value=""/>

                            </li>
                        </ul>

                        <div class="join_radio">
                            <ul>
                                <li>
                                    <p class="fl">맞춤형화장품 조제관리사 자격증을 보유하고 계십니까?</p>
                                    <div class="fr radiobox">
                                        <label><input type="radio" id="certificate" name="certificate" value="1" /><span>예</span></label>
                                        <label class="ml_40"><input type="radio" id="certificate" name="certificate" value="0" checked/><span>아니오</span></label>
                                    </div>
                                    <div class="addbox" id="addfilebox1" style="display: none;">
                                        <span class="label">파일업로드</span>
                                        <div class="filebox">
                                            <input type="text" class="upload_name" value="" readonly="">
                                            <label for="input_file_1">파일첨부</label>
                                            <input type="file" id="input_file_1">
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <p class="fl">맞춤형 화장품 판매업 신고 또는 운영하고 계십니까?</p>
                                    <div class="fr radiobox">
                                        <label><input type="radio" id="declaration" name="declaration" value="1" /><span>예</span></label>
                                        <label class="ml_40"><input type="radio" id="declaration" name="declaration" value="0" checked/><span>아니오</span></label>
                                    </div>
                                    <div class="addbox" id="addfilebox2" style="display: none;">
                                        <span class="label">파일업로드</span>
                                        <div class="filebox">
                                            <input type="text" class="upload_name" value="" readonly="">
                                            <label for="input_file_2">파일첨부</label>
                                            <input type="file" id="input_file_2">
                                        </div>
                                    </div>
                                </li>
                            </ul>
                        </div>

                        <!--div class="join_radio">
                            <ul>
                                <li>
                                    <p class="fl">맞춤형화장품 조제관리사 자격증을 보유하고 계십니까?</p>
                                    <div class="fr radiobox">
                                        <label><input type="radio" id="certificate" name="certificate" value="1" /><span>예</span></label>
                                        <label class="ml_40"><input type="radio"  id="certificate" name="certificate" value="0"/><span>아니오</span></label>
                                    </div>
                                    <div class="addbox">
                                        <span class="label">파일업로드</span>
                                        <div class="filebox">
                                            <input type="text" class="upload_name" value="" readonly="">
                                            <label for="input_file_2">파일첨부</label>
                                            <input type="file" id="input_file_2">
                                        </div>
                                    </div>
     							     <div class="addbox">
                                        <div class="fl">
                                            <label for="qfc_number" class="label">자격번호</label>
                                            <input id="qfc_number"  class="certificateNumber"maxlength="10" pattern="[0-9]+" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');" type="text"/>
                                        </div>
                                        <div class="addbox">
                                            <span class="label">파일업로드</span>
                                            <div class="filebox">
                                                <input type="text" class="upload_name" value="" readonly />
                                                <label for="input_file">파일찾기</label>
                                                <input type="file" id="input_file" class="image" />
                                            </div>
                                        </div>
                                    </div>
                                <li>
                                    <p class="fl">맞춤형 화장품 판매업 신고 또는 운영하고 계십니까?</p>
                                    <div class="fr radiobox">
                                        <label><input type="radio" name="declaration" id="declaration" value="1" /><span>예</span></label>
                                        <label class="ml_40"><input type="radio"name="declaration" id="declaration"  value="0"/><span>아니오</span></label>
                                    </div>
                                    <div class="addbox">
                                        <span class="label">파일업로드</span>
                                        <div class="filebox">
                                            <input type="text" class="upload_name" value="" readonly="">
                                            <label for="input_file_2">파일첨부</label>
                                            <input type="file" id="input_file_2">
                                        </div>
                                    </div>
                                </li>
                            </ul>
                        </div-->

                        <div class="join_check">
                            <label><input type="checkbox" id="emailagree" name="emailagree"  /><span>이메일 정보 수신동의</span></label>
                            <label><input type="checkbox" id="messageagree" name="messageagree" /><span>문자메시지 정보 수신동의</span></label>
                        </div>

                        <div class="btn_wrap ta_c"><a class="btn_st1" id="signUp">가입하기</a></div>
                    </form>
                </div>

            </div>
        </div>
        <!-- //컨텐츠 -->

    </section>
    <!-- //Container -->
 <!-- 가입완료 팝업창 -->
 <div class="popup_bg" style="display: none;"></div>
 <div class="popup join_complete" id="join_complete" style="display: none;" >
     <div class="pop_cont">
         <p class="txt">가입이 <span class="fc_gold">완료</span> 되었습니다.</p>
         <button class="btn_st2" type="button">확인</button>
     </div>
 </div>    
   
    <jsp:include page="../common/footer.jsp"/>


</body>
</html>