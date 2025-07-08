$(function() {

	//pushClick();
	
	$('.steps1').trigger('click', function() {
		alert("들어옴")
	})
	function pushClick() {
		$("#step1_1").trigger("click")
	}
	$('#step1_1').click(function() {
		alert("step1_1 들어왔다")
		var stepNm;
		if(sessionStorage.length>=11){
		for(var i =1; i <12; i++){
			stepNm = "check_step1_"+i;
			console.log("step1Nm::"+stepNm)
		
			
		var getVal =	$('input:radio[name="'+stepNm+'"]').val();
		var getSeVal =	sessionStorage.getItem("check_step1_"+i)
		console.log("getVal::"+getVal)
		console.log("getSeVal::"+getSeVal)
		
		if(getVal ==  getSeVal){
			$('input:radio[name="'+stepNm+'"][value="'+getSeVal+'"]').prop("checked",true)
		}
		
		}
	}// 	sessionStorage.length>=11		
	})




});
