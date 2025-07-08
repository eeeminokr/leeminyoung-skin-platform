$(function() {
	// role_user
	// role_business
	// role_cosmetic
	// if ( roleType.toLowerCase() )
	if ( roleType === ROLE_TYPE.ROLE_COSMETIC ) {
		$(".ff_nm.bar").text("조제관리사");
	} else if ( roleType === ROLE_TYPE.ROLE_BUSINESS ) {
		$(".ff_nm.bar").text("기업");
	} else if ( roleType === ROLE_TYPE.ROLE_ADMINISTRATOR ) {
		$(".ff_nm.bar").text("관리자");
	} else {
		$(".ff_nm.bar").text("일반사용자");
		roleType = ROLE_TYPE.ROLE_USER;
	}

	$("."+roleType.toLowerCase()).removeClass("none");

	var ctx = getContextPath();
	console.log("ctx : " + ctx);
	$("#addfilebox1").hide();
	$("#addfilebox2").hide();

	console.log("certificate : " + $("input:radio[name='certificate']:checked").val());
	console.log("declaration : " + $("input:radio[name='declaration']:checked").val());

	if ( ROLE_TYPE.ROLE_COSMETIC === roleType ) {
		$('input[name="certificate"]').eq(0).prop("checked", true).trigger("change");
	} else if (ROLE_TYPE.ROLE_BUSINESS === roleType ) {
		$('input[name="declaration"]').eq(0).prop("checked", true).trigger("change");
	}

    // function getContextPath() {
    // 	return ctxPath;
    // 	// return sessionStorage.getItem("contextpath");
  	// }
	getCosmeticList(function(result){
		$('.recommandUserId').empty();
		$('.recommandUserId').append($("<option value='0'>-선택-</option>"));
		$.each(result, function(idx, row) {
			var option = $("<option value='" + row.id + "'>"+row.username + " [" + row.companyName + "]"+"</option>");
			$('.recommandUserId').append(option);
		});
	});

 	$("#password").on('keyup', function(){
		var number = /([0-9])/;
		var alphabets = /([a-zA-Z])/;
		var special_characters = /([~,!,@,#,$,%,^,&,*,-,_,+,=,?,>,<])/;
		if ($('#password').val().length < 6) {
			$('#password-strength-status').removeClass();
			$('#password-strength-status').addClass('weak-password');

			$('#password-strength-status').html("보안 약함 (6자 이상,영문, 숫자, 특수문자 또는 이들의 조합을 포함)");
			return false;
		} else {
			if ($('#password').val().match(number) && $('#password').val().match(alphabets) && $('#password').val().match(special_characters)) {
				$('#password-strength-status').removeClass();
				$('#password-strength-status').addClass('strong-password');
				$('#password-strength-status').html("보안 강함");
				return false;
			} else {
				$('#password-strength-status').removeClass();
				$('#password-strength-status').addClass('medium-password');
				$('#password-strength-status').html("보통");
			}
		}
	 });
	 
	 
	 

	function isPassword(asValue) {
	  var regExp = /^(?=.*\d)(?=.*[a-zA-Z])[0-9a-zA-Z]{8,10}$/; //  8 ~ 10자 영문, 숫자 조합
	  return regExp.test(asValue); // 형식에 맞는 경우 true 리턴
	}

	/*function upload() {
		const imageInput = $("#input_file_1")[0];
		// 파일을 여러개 선택할 수 있으므로 files 라는 객체에 담긴다.
		console.log("imageInput: ", imageInput.files)

		if(imageInput.files.length === 0){
			alert("파일은 선택해주세요");
			return;
		}

		const formData = new FormData();
		formData.append("image", imageInput.files[0]);


		$.ajax({
			type:"POST",
			url: "/temp/api/upload/image/v1",
			processData: false,
			contentType: false,
			data: formData,
			success: function(rtn){
				const message = rtn.data.values[0];
				console.log("message: ", message)
				$("#resultUploadPath").text(message.uploadFilePath)
			},
			err: function(err){
				console.log("err:", err)
			}
		})
	}*/
	 
	  	
	  	
	  	
	  	$("#chkPassword, #password").on("change", function() {
	  		
		  	
	  		var password = $('#password').val(); /* 패스워드와 패스워드 확인 부분 가져오기 */
	  		var chkPassword = $('#chkPassword').val();
	  		console.log("password:"+password)
	  			console.log("chkPassword:"+chkPassword)
	  		
	  	 	
		  //  $('#passwordStatus').css('display','none;');
		 
		  		if(password == chkPassword && password !=='' && chkPassword !== '') {
		  			$('#passwordStatus').show;
			    	$("#passwordStatus").text("암호가 일치합니다");
			    	$("#passwordStatus").css("color","green");
			    	return
		  		}else if(password !== chkPassword){
		  		 	$('#passwordStatus').show;
			    	$("#passwordStatus").text("암호가 불일치합니다");
			    	$("#passwordStatus").css("color","red");
			    	return
		  		}else if(password =='' && chkPassword== ''){
		  			$('#passwordStatus').hide;
			    	$("#passwordStatus").text("");
			    	$("#passwordStatus").css("color","");
			    	return
		  		}else if(password =='' && chkPassword !== ''){
		  		 	$('#passwordStatus').show;
			    	$("#passwordStatus").text("암호가 불일치합니다");
			    	$("#passwordStatus").css("color","red");
			    	return
		  		}else if(password !=='' && chkPassword == ''){
		  			$('#passwordStatus').show;
			    	$("#passwordStatus").text("암호가 불일치합니다");
			    	$("#passwordStatus").css("color","red");
			    	return
		  		}
	  		});
	  		
	  	$("#password").on("change", function() {
	  		
		  	
	  		var password = $('#password').val(); /* 패스워드와 패스워드 확인 부분 가져오기 */
	  		var chkPassword = $('#chkPassword').val();
	  		console.log("password:"+password)
	  			console.log("chkPassword:"+chkPassword)
	  		
	  	 	
		  //  $('#passwordStatus').css('display','none;');
		 
		  		if(password == chkPassword && password !=='' && chkPassword !== '') {
		  			$('#passwordStatus').show;
			    	$("#passwordStatus").text("암호가 일치합니다");
			    	$("#passwordStatus").css("color","green");
			    	return
		  		}else if(password !== chkPassword){
		  		 	$('#passwordStatus').show;
			    	$("#passwordStatus").text("암호가 불일치합니다");
			    	$("#passwordStatus").css("color","red");
			    	return
		  		}else if(password =='' && chkPassword== ''){
		  			$('#passwordStatus').hide;
			    	$("#passwordStatus").text("");
			    	$("#passwordStatus").css("color","");
			    	return
		  		}else if(password =='' && chkPassword !== ''){
		  		 	$('#passwordStatus').show;
			    	$("#passwordStatus").text("암호가 불일치합니다");
			    	$("#passwordStatus").css("color","red");
			    	return
		  		}else if(password !=='' && chkPassword == ''){
		  			$('#passwordStatus').show;
			    	$("#passwordStatus").text("암호가 불일치합니다");
			    	$("#passwordStatus").css("color","red");
			    	return
		  		}
	  		});
	  	
	  	$("#chkPassword").on("change", function() {
	  		
		  	
	  		var password = $('#password').val(); /* 패스워드와 패스워드 확인 부분 가져오기 */
	  		var chkPassword = $('#chkPassword').val();
	  		console.log("password:"+password)
	  			console.log("chkPassword:"+chkPassword)
	  		
	  	 	
		  //  $('#passwordStatus').css('display','none;');
		 
		  		if(password == chkPassword && password !=='' && chkPassword !== '') {
		  			$('#passwordStatus').show;
			    	$("#passwordStatus").text("암호가 일치합니다");
			    	$("#passwordStatus").css("color","green");
			    	return
		  		}else if(password !== chkPassword){
		  		 	$('#passwordStatus').show;
			    	$("#passwordStatus").text("암호가 불일치합니다");
			    	$("#passwordStatus").css("color","red");
			    	return
		  		}else if(password =='' && chkPassword== ''){
		  			$('#passwordStatus').hide;
			    	$("#passwordStatus").text("");
			    	$("#passwordStatus").css("color","");
			    	return
		  		}else if(password =='' && chkPassword !== ''){
		  		 	$('#passwordStatus').show;
			    	$("#passwordStatus").text("암호가 불일치합니다");
			    	$("#passwordStatus").css("color","red");
			    	return
		  		}else if(password !=='' && chkPassword == ''){
		  			$('#passwordStatus').show;
			    	$("#passwordStatus").text("암호가 불일치합니다");
			    	$("#passwordStatus").css("color","red");
			    	return
		  		}
	  		});
	  
		
		$("#password,#chkPassword").mouseleave(function() {
		  	 
	  		var password = $('#password').val();
	  		var chkPassword = $('#chkPassword').val();
	 
	  		if(password == chkPassword && password !=='' && chkPassword !== '') {
	  			$('#passwordStatus').show;
		    	$("#passwordStatus").text("암호가 일치합니다");
		    	$("#passwordStatus").css("color","green");
		    	return
	  		}else if(password !== chkPassword){
	  		 	$('#passwordStatus').show;
		    	$("#passwordStatus").text("암호가 불일치합니다");
		    	$("#passwordStatus").css("color","red");
		   
	  		}else if(password =='' && chkPassword== ''){
	  			$('#passwordStatus').hide;
		    	$("#passwordStatus").text("");
		    	$("#passwordStatus").css("color","");
		
	  		}else if(password =='' && chkPassword !== ''){
	  		 	$('#passwordStatus').show;
		    	$("#passwordStatus").text("암호가 불일치합니다");
		    	$("#passwordStatus").css("color","red");
		   
	  		}else if(password !=='' && chkPassword == ''){
	  			$('#passwordStatus').show;
		    	$("#passwordStatus").text("암호가 불일치합니다");
		    	$("#passwordStatus").css("color","red");
	  		}

	  	});
	  	
		$("#password,#chkPassword").mouseenter(function() {
		  	 
	  		var password = $('#password').val();
	  		var chkPassword = $('#chkPassword').val();

	  		if(password == chkPassword && password !=='' && chkPassword !== '') {
	  			$('#passwordStatus').show;
		    	$("#passwordStatus").text("암호가 일치합니다");
		    	$("#passwordStatus").css("color","green");
		    	return
	  		}else if(password !== chkPassword){
	  		 	$('#passwordStatus').show;
		    	$("#passwordStatus").text("암호가 불일치합니다");
		    	$("#passwordStatus").css("color","red");
		   
	  		}else if(password =='' && chkPassword== ''){
	  			$('#passwordStatus').hide;
		    	$("#passwordStatus").text("");
		    	$("#passwordStatus").css("color","");
		
	  		}else if(password =='' && chkPassword !== ''){
	  		 	$('#passwordStatus').show;
		    	$("#passwordStatus").text("암호가 불일치합니다");
		    	$("#passwordStatus").css("color","red");
		   
	  		}else if(password !=='' && chkPassword == ''){
	  			$('#passwordStatus').show;
		    	$("#passwordStatus").text("암호가 불일치합니다");
		    	$("#passwordStatus").css("color","red");
	  		}

	  	});

		
		
	  function isEmail(asValue) {
		  var regExp = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i;
		  return regExp.test(asValue); // 형식에 맞는 경우 true 리턴
		}

		var emconfirmchk = false;
		// 이메일 인증번호 체크 함수
		function chkEmailConfirm(data){
			$("#memailconfirm").on("keyup", function(){
				if (data != $("#memailconfirm").val()) { //
					emconfirmchk = false;
					$("#memailconfirmTxt").html("<span id='emconfirmchk'>인증번호가 잘못되었습니다</span>")
					$("#emconfirmchk").css({
						"color" : "#FA3E3E",
						// "font-weight" : "bold",
						// "font-size" : "10px"

					})
					//console.log("중복아이디");
				} else { // 아니면 중복아님
					if ( $(this).val().trim() ) {
						emconfirmchk = true;
						$("#memailconfirmTxt").html("<span id='emconfirmchk'>인증번호 확인 완료</span>")

						$("#emconfirmchk").css({
							"color" : "#0D6EFD",
							// "font-weight" : "bold",
							// "font-size" : "10px"

						});
					}
				}
			})
		}

		var email;
		$("#overlapCheckEmail").click(function() {
			
			email = $('input:text[id="email"]').val();
	
				
			if(!isEmail(email)){
				alert("이메일 형식에 맞게 기입해주세요!")
				$("#email").focus();
				return false;
			}


			$.ajax({
				// url : ctx+"/api/user/mailConfirm",
				url : ctx+"/api/member/mailConfirm",
				type : "POST",
				data : {email: email},
				dataType : 'json',
				success : function(result){
					//alert("result : "+result);
					document.getElementById('emailNumber').value = result;
					console.log("result : "+result);
					//document.getElementById('memailconfirm').value = result;

					var EmailCheckreset = $("#checkEmail").attr("class");
					$("#checkEmail").removeClass(EmailCheckreset)
					if(result == '0'){
						$("#checkEmail").addClass('red');
						$("#checkEmail").text('이미사용중이거나 사용할 수 없는 아이디입니다.');
						$("#checkEmail").css('color','red');

						// setTimeout(function() {
						// 	$("#checkEmail").text('');
						// }, 2000);

						$("#checkEmail").text('이미사용중이거나 사용할 수 없는 아이디입니다.');
					}else{
						alert("해당 이메일로 인증번호 발송이 완료되었습니다. \n 확인부탁드립니다.")
						document.getElementById('checkEmail').value = true;
						$("#checkEmail").addClass('green');
						$("#checkEmail").text('사용할 수 있는 아이디입니다.');
						$("#checkEmail").css('color','green');
					}
					chkEmailConfirm(result);
				},
				error : function(){
					alert("이메일인증 실패");
				}
			})
		});


		var emailNum;
		var emailCode;
		$("#confirmEmail").click(function() {
			emailNum = $('input:text[id="memailconfirm"]').val();
			emailCode = $('input:hidden[id="emailNumber"]').val();

			if(emailCode != emailNum){
				alert("인증번호가 다릅니다. 확인하여 다시 입력 부탁드립니다.")
				$("#memailconfirm").focus();
				return false;
			} else {
				alert("이메일이 인증되었습니다.")
				$("#checkEmail").addClass('green');
				$("#checkEmail").text('이메일이 인증되었습니다.');
				$("#checkEmail").css('color','green');
				return false;
			}
		});
		
		
		$("#phoneNumber").mouseleave(function() {
			var phoneVal = $("#phoneNumber").val();
			
			phoneVal
			  .replace(/[^0-9]/g, '') // 숫자를 제외한 모든 문자 제거
			  .replace(/^(\d{2,3})(\d{3,4})(\d{4})$/, `$1-$2-$3`);
			
		});

		//Popup Close
		$('.popup').each(function(){
			$(this).find('.btn_close').click(function(){
				$('.popup_bg, .popup').fadeOut();
			});
		});

		//input file style
		$('.filebox').each(function(){
			var labelFor = $(this).find('label').attr('for');
			var inputId =  $('#'+labelFor);

			inputId.on('change',function(){
				var fileName = inputId.val();
				$(this).closest('.filebox').find('.upload_name').val(fileName);
			});
		});




	 var certificate;
	 var declaration;
	 var birthDay;
	 var certificateNumber;
	 let image = null;
	 var phoneNumber;
	 var birthYear;
	 var birthMonth;
	 var birthWeek;
	 var chkCertificate;
	 var chkDeclaration;
	 let index = {
				init: function() {
					$("#signUp").on("click", () => {
						this.save();
					});
				},
				save: function() {
					console.log("save");
					 const regBirth = /^(19[0-9][0-9]|20\d{2})(0[0-9]|1[0-2])(0[1-9]|[1-2][0-9]|3[0-1])$/ 
					// $("input:radio[name=r"+i+"]").is("checked")
					// $('input:radio[name="r2"]:checked').val();
					var username = $("#username").val();
					var email = $("#email").val();
					var password = $("#password").val();
					var chkPassword = $("#chkPassword").val();
					var Eagree = ($('#emailagree').is(":checked")?"1":"0");
					var Magree = ($('#messageagree').is(":checked")?"1":"0");
					var gender = $("#gender").val();

					console.log("Eagree:"+Eagree);
					console.log("Magree:"+Magree);
					
					 birthYear = $("#birthYear").val();
					 birthMonth = $("#birthMonth").val();
					 birthWeek = $("#birthWeek").val();

					var birthWeek = $("#birthWeek").val();
					var companyname = $("#companyName").val();

				    chkCertificate = $("input:radio[name='certificate']:checked").val();    
					chkDeclaration = $("input:radio[name='declaration']:checked").val();
				    certificateNumber =  $("#qfc_number").val();
				    
				    phoneNumber =  $('#phoneNumber').val();
				    
				    var days = Number(birthWeek);
				    var month = Number(birthMonth);
				    
				    month = month >= 10 ? month : '0' + month; 
				    days = days >= 10 ? days : '0' + days;       

				    var birthDay = birthYear+month+days;
				    let phoneSize =   $('#phoneNumber').val().length

					let data = {
						username: $("#username").val(),//id="username"
						email: $("#email").val(),
						password: $("#password").val(),
						gender: $('#gender').val(),
						birthDay: birthDay,
						residence :  $('#residence').val(),
						companyName :  $('#companyName').val(),
						phoneNumber :   phoneNumber,
						certificate :  certificate,
						certificateNumber : certificateNumber,
						declaration :  declaration,
						emailagree : Eagree,
						messageagree : Magree,
					//	image : image
					};
						
						//    const formData = new FormData();
						//    if(image !== undefined){
						// 	formData.append("image",image);
						// }
					  
					    // formData.append("signUpForm", new Blob([JSON.stringify(data)] , {type: "application/json"}));	
						let residence = $('#residence').val();
						let residenceDetail = $('#residence_detail').val();
						if ( residence && !residenceDetail ) {
							alert("상세주소를 입력해주세요.");
						}

						//맞춤형화장품 조제관리사 자격증 업로드
						const imageInput1 = $("#input_file_1")[0];
						//맞춤형 화장품 판매업 신고 또는 운영 == 사업자등록증
						const imageInput2 = $("#input_file_2")[0];
						//사업자등록증 not used
						// const imageInput3 = $("#input_file_3")[0];

						const formData = new FormData();
						formData.append("username",$("#username").val());
						formData.append("email",$("#email").val());
						formData.append("password",$("#password").val());
						formData.append("gender",$("input[name='gender']:checked").val());
						formData.append("birthDay",birthDay);
						formData.append("residence",$('#residence').val());
						formData.append("companyName",$('#companyName').val());
						formData.append("phoneNumber",phoneNumber);
						formData.append("certificate",chkCertificate);
						formData.append("certificateNumber",certificateNumber);
						formData.append("declaration",chkDeclaration);
						formData.append("emailAgree",Eagree);
						formData.append("messageAgree",Magree);
						formData.append("zipcode",$("#zipcode").val());
						formData.append("address",$("#address").val());
						formData.append("detailAddress",$("#detailAddress").val());
						formData.append("recommandUserId",$("#recommandUserId").val());
						formData.append("bizRegNumber",$("#bizRegNumber").val());
						formData.append("bizPhoneNumber",$("#bizPhoneNumber").val());

						//formData.append("image",image);
						formData.append("file1", imageInput1.files[0]);
						formData.append("file2", imageInput2.files[0]);
						// formData.append("file3", imageInput3.files[0]);
						formData.append("regRoleType", roleType);

					    var emailStatus = $("#checkEmail").attr("class");
					        
   						console.log("emailStatus:" +emailStatus)
					    console.log("username:"+username)
					    console.log("email:"+email)
					    console.log("birthDay:"+birthDay)
					    console.log("phoneNumber"+ phoneNumber)
					    console.log("passwordl:"+password)
					    console.log("chkPassword:"+chkPassword)
					    console.log("phoneSize:"+phoneSize)
					    console.log("certificate:"+chkCertificate)
					    console.log("certificateNumber:;"+certificateNumber)
					    console.log("declaration:"+chkDeclaration)
					    console.log("Eagree:"+Eagree)
					    console.log("Magree:"+Magree)

						emailCode = $('#emailNumber').val();
						emailNum = $('#memailconfirm').val();

					    //console.log("image:"+image)
						if(username =='') {
							alert("이름을 기입해주세요[필수항목]")
							$("#username").focus();
							return false;
						}else if(email ==''){
							alert("이메일을 기입해주세요[필수항목]")
							$("#email").focus();
							return false;
						} else if (!emailCode) {
							alert("인증번호 받기를 확인하세요.");
							$("#memailconfirm").focus();
							return false;
						} else if(emailCode != emailNum){
							alert("인증번호가 다릅니다. 확인하여 다시 입력 부탁드립니다.")
							$("#memailconfirm").focus();
							return false;
						}else if(emailStatus == undefined){
							alert("이메일 중복확인을 해주세요");
							$("#email").focus();
							return false;
						}else if(emailStatus == 'red'){
							alert("사용할수 없는 아이디로 다시 기입해주세요");
							$("#email").focus();
							return false;
						}else if(!chkPW($("#password").val())){
							// alert("비밀번호를 확인해주세요.")
							$("#password").focus();
							return false;
						}else if(password ==''){
							alert("비밀번호을 기입해주세요[필수항목]")
							$("#password").focus();
							return false;
						}else if(chkPassword ==''){
							alert("비밀번호를 확인해주세요")
							$("#chkPassword").focus();
							return false;
						}else if(password != chkPassword){
							alert("비밀번호을 확인해주세요")
							$("#password").focus();
							return false;
						}else if( !birthYear ) {
							alert("생일을 올바르게 입력해주세요")
							$("#birthYear").focus();
							return false;
						}else if( !birthMonth ) {
							alert("생일을 올바르게 입력해주세요")
							$("#birthMonth").focus();
							return false;
						}else if( !birthWeek ){
							alert("생일을 올바르게 입력해주세요")
							$("#birthWeek").focus();
							return false;
						}else if( !isDate(birthDay) ){
							alert("생일을 올바르게 입력해주세요")
							$("#birthWeek").focus();
							return false;
						}else if(phoneNumber ==''){
							alert("휴대폰번호를 기입해주세요")
							$("#phoneNumber").focus();
							return false;
						}else if(phoneSize <11 ){
							alert("휴대폰번호 11자리를 입력해주세요")
							$("#phoneNumber").focus();
							return false;
						}else if(chkDeclaration==''){
							alert("판매업 운영 유무체크를 체크해주세요")
							$("#declaration").focus();
							return false;
						}
						else if(chkCertificate==''){
							alert("조제관리사 자격증 유무를 체크해주세요")
							$("#certificate").focus();
							return false;
						}

						if ( roleType === ROLE_TYPE.ROLE_COSMETIC ) {
							if (!$("#address").val().trim()) {
								alert("주소를 입력하세요.");
								$("#address").focus();
								return false;
							} else if (!$("#detailAddress").val().trim()) {
								alert("상세주소를 입력하세요.");
								$("#detailAddress").focus();
								return false;
							}
						}

						if ( roleType === ROLE_TYPE.ROLE_COSMETIC || roleType === ROLE_TYPE.ROLE_BUSINESS ) {
							if (!$("#companyName").val().trim()) {
								alert("회사명을 입력하세요.");
								$("#companyName").focus();
								return false;
							}
						}

						if ( roleType === ROLE_TYPE.ROLE_BUSINESS ) {
							if (!$("#bizRegNumber").val().trim()) {
								alert("사업자등록번호을 입력하세요.");
								$("#bizRegNumber").focus();
								return false;
							} else if (!$("#bizPhoneNumber").val().trim()) {
								alert("사업장 번호를 입력하세요.");
								$("#bizPhoneNumber").focus();
								return false;
							}
							if( imageInput2.files.length === 0){
								alert("사업자등록증을 선택해주세요.");
								return false;
							}
						}

						if(chkCertificate == "1"){
							certificate = true;
						}else{
							certificate = false;
							certificateNumber = '';
							image = undefined;
						}

						if(chkDeclaration == "1"){
							declaration = true;
						}else{
							declaration = false;

						}

						// 파일을 여러개 선택할 수 있으므로 files 라는 객체에 담긴다.
						console.log("imageInput1: ", imageInput1.files)

						if((chkCertificate == '1') && imageInput1.files.length === 0){
							alert("맞춤형화장품 조제관리사 자격증을 선택해주세요.");
							return false;
						}

						// 파일을 여러개 선택할 수 있으므로 files 라는 객체에 담긴다.
						console.log("imageInput2: ", imageInput2.files)

						if((declaration == '1') && imageInput2.files.length === 0){
							alert("맞춤형 화장품 판매업 신고 또는 운영 관련 파일을 선택해주세요.");
							return false;
						}


						if(username!==''&& email !=='' && password !=='' && chkPassword !=='' && emailStatus == 'green' && phoneSize == 11) {
							console.log("signup");
							$.ajax({
								// url         :   ctx+"/api/security/signup",
								url: ctx + "/api/member/join",
								//    dataType    :   "json",
								//  contentType :   'application/json; charset=UTF-8',
								//enctype : 'multipart/form-data',
								cache: false,
								// xhrFields: {
								// 	responseType: "blob",
								// },
								//	headers: {'Content-Type': undefined},
								// headers: {
								// 	//"X-AUTH-TOKEN": token,
								// 	"Content-Type": `false`,
								//   },
								contentType: false,
								processData: false,
								type: "POST",
								data: formData,
								success: function (data) {
									//	if(result==1){
									//	$(".join_complete").show();
									// $('.popup_bg').show();
									// $('.popups .join_complete').show();
									$('.popup_bg, .join_complete').show();
									//	}

								},
								error: function (res, status, error) {
									console.log("AjaxError", res);
									alert(res.responseJSON.message.split(": ")[1]);
								}

							})
								.done(function (resp) {
									alert("회원가입이 완료되었습니다.");
									location.href = ctx + "/login";
								}).fail(function (error) {
								// var errMsgs = error.responseJSON.message.split(": ");
								// var errMsg = errMsgs[errMsgs.length-1];;
								// alert(errMsg);
								// alert(JSON.stringfy(error.message));
							});
						}

			}
	 }
			index.init();

	 
		//Popup Close
	    $('.popup').each(function(){
	        $(this).find('.btn_st2').click(function(){
	            $('.popup_bg, .popup').fadeOut();
	            
	            setTimeout(function() {
	            	location.href = ctx+"/login"
	            }, 1000)
	            
	        });
	    });
	 
	 
//		//Popup Close
//	    $('.popup').each(function(){
//	        $(this).find('.btn_close').click(function(){
//	            $('.popup_bg, .popup').fadeOut();
//	            setTimeout(function() {
//	            	location.href = ct
//	            }, 1000)
//	        });
//	    });
	    
    
});