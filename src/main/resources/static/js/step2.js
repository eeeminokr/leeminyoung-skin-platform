$(function() {
	
	if(sessionStorage.length>=11){
//	for(var i =1; i <20; i++){
//		$('input:radio[name="check_step2_'+i+'"]').val(sessionStorage.getItem("check_step2_"+i))			
//	}
		var stepNm2;
		for(var i =1; i <20; i++){
			stepNm2 = "check_step2_"+i;
			
			
			
		var getVal2 =	$('input:radio[name="'+stepNm2+'"]').val();
		var getSeVal2 =	sessionStorage.getItem("check_step1_"+i)
		
		if(getVal2 ==  getSeVal2){
			$('input:radio[name="'+stepNm2+'"]:checked')
		}
		
		}
	}


	$('#step2_2').click(function() {
		alert("step2_2 들어왔다")
		var stepNm2;
		for(var i =1; i <20; i++){
			stepNm2 = "check_step2_"+i;
			console.log("step2Nm::"+stepNm2)
			
			
		var getVal2 =	$('input:radio[name="'+stepNm2+'"]').val();
		var getSeVal2 =	sessionStorage.getItem("check_step1_"+i)
		console.log("getVal::"+getVa2)
		console.log("getSeVal::"+getSeVa2)
		if(getVal2 ==  getSeVal2){
			$('input:radio[name="'+stepNm2+'"]:checked')
		}
		
		}
			
	})
	
	

	
	

});
