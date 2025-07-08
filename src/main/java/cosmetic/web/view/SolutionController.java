package cosmetic.web.view;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;


@Controller
@RequestMapping("/solution")
public class SolutionController {

	@GetMapping(value = "/solution_01_1")
	public String solution_01_1() {
		
		return "solution/solution_01_1";
	
	}			 
	@GetMapping(value = "/solution_01_2")
	public String solution_01_2() {
		
		return "solution/solution_01_2";
				
	}
	
	
	@GetMapping(value = "/solution_01_2_2")
	public String solution_01_2_2() {
		
		return "solution/solution_01_2_2";
	
	}
	
	
	@ResponseBody // 자바 객체를 HTTP 응답 본문의 객체로 변환
	@GetMapping(value = "/solution_01_2_2_action")
	public String solution_01_2_2_action() {
		
	    String success= "OK";
		return success;
	
	}
	
	@GetMapping(value = "/solution_01_2_3")
	public String solution_01_2_3() {
		
		return "solution/solution_01_2_3";
	
	}
	@ResponseBody // 자바 객체를 HTTP 응답 본문의 객체로 변환
	@GetMapping(value = "/solution_01_2_3_action")
	public String solution_01_2_3_action() {
		
	    String success= "OK";
		
		
		
		
		return success;
	
	}
	
	@GetMapping(value = "/solution_01_2_4")
	public String solution_01_2_4() {
		
		return "solution/solution_01_2_4";
	
	}
	@ResponseBody // 자바 객체를 HTTP 응답 본문의 객체로 변환
	@GetMapping(value = "/solution_01_2_4_action")
	public String solution_01_2_4_action() {
		
	    String success= "OK";
		
		
		
		
		return success;
	
	}

	@ResponseBody // 자바 객체를 HTTP 응답 본문의 객체로 변환
	@PostMapping(value = "/solution_result_action")
	public String solution_result_action() {
		
	    String success= "OK";
		return success;
	}	

	@GetMapping(value = "/solution_01_2_result_1")
	public String solution_01_2_result_1() {
		
		return "solution/solution_01_2_result_1";
	
	}
	@GetMapping(value = "/solution_01_2_result_2")
	public String solution_01_2_result_2() {
		
		return "solution/solution_01_2_result_2";
	
	}
	@GetMapping(value = "/solution_01_2_result_3")
	public String solution_01_2_result_3() {
		
		return "solution/solution_01_2_result_3";
	
	}
	@GetMapping(value = "/solution_01_2_result_4")
	public String solution_01_2_result_4() {
		
		return "solution/solution_01_2_result_4";
	
	}
	@GetMapping(value = "/solution_01_2_result_5")
	public String solution_01_2_result_5() {
		
		return "solution/solution_01_2_result_5";
	
	}
	@GetMapping(value = "/solution_01_2_result_6")
	public String solution_01_2_result_6() {
		
		return "solution/solution_01_2_result_6";
	
	}
	@GetMapping(value = "/solution_01_2_result_7")
	public String solution_01_2_result_7() {
		
		return "solution/solution_01_2_result_7";
	
	}
	@GetMapping(value = "/solution_01_2_result_8")
	public String solution_01_2_result_8() {
		
		return "solution/solution_01_2_result_8";
	
	}
	@GetMapping(value = "/solution_01_2_result_9")
	public String solution_01_2_result_9() {
		
		return "solution/solution_01_2_result_9";
	
	}
	@GetMapping(value = "/solution_01_2_result_10")
	public String solution_01_2_result_10() {
		
		return "solution/solution_01_2_result_10";
	
	}
	@GetMapping(value = "/solution_01_2_result_11")
	public String solution_01_2_result_11() {
		
		return "solution/solution_01_2_result_11";
	
	}
	@GetMapping(value = "/solution_01_2_result_12")
	public String solution_01_2_result_12() {
		
		return "solution/solution_01_2_result_12";
	
	}
	@GetMapping(value = "/solution_01_2_result_13")
	public String solution_01_2_result_13() {
		
		return "solution/solution_01_2_result_13";
	
	}
	@GetMapping(value = "/solution_01_2_result_14")
	public String solution_01_2_result_14() {
		
		return "solution/solution_01_2_result_14";
	
	}
	@GetMapping(value = "/solution_01_2_result_15")
	public String solution_01_2_result_15() {
		
		return "solution/solution_01_2_result_15";
	
	}
	@GetMapping(value = "/solution_01_2_result_16")
	public String solution_01_2_result_16() {
		
		return "solution/solution_01_2_result_16";
	
	}
	
	@GetMapping(value = "/solution_02_1")
	public String solution_02_1() {
		
		return "solution/solution_02_1";
	
	}
	@GetMapping(value = "/solution_02_2")
	public String solution_02_2() {
		
		return "solution/solution_02_2";
	
	}
	@GetMapping(value = "/solution_03_1")
	public String solution_03_1() {
		
		return "solution/solution_03_1";
	
	}
	@GetMapping(value = "/solution_03_2")
	public String solutionList_03_2() {
		
		return "solution/solution_03_2";
	
	}
	@GetMapping(value = "/solution_04_1")
	public String solution_04_1() {
		
		return "solution/solution_04_1";
	
	}
	@GetMapping(value = "/solution_04_2")
	public String solution_04_2() {
		
		return "solution/solution_04_2";
	
	}
	@GetMapping(value = "/solutionList_04_2")
	public String solutionList_04_2() {
		
		return "solution/solutionList_04_2";
	
	}
	@GetMapping(value = "/solution_04_3")
	public String solution_04_3() {
		
		return "solution/solution_04_3";
	
	}
}
