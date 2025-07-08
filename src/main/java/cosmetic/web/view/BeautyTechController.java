package cosmetic.web.view;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/beautytech")
public class BeautyTechController {

	//아람휴비스
    @GetMapping(value = "/tech_01_1")
	public String tech_01_1() {
		
		return "tech/tech_01_1";	
	}
    @GetMapping(value = "/tech_01_2")
	public String tech_01_2() {
		
		return "tech/tech_01_2";	
	}
	//초위스컴퍼니
    @GetMapping(value = "/tech_02_1")
	public String tech_02_1() {
		
		return "tech/tech_02_1";	
	}
    @GetMapping(value = "/tech_02_2")
	public String tech_02_2() {
		
		return "tech/tech_02_2";	
	}
	//룰루랩
    @GetMapping(value = "/tech_03_1")
	public String tech_03_1() {
		
		return "tech/tech_03_1";	
	}
    @GetMapping(value = "/tech_03_2")
	public String tech_03_2() {
		
		return "tech/tech_03_2";	
	}

	//릴리커버
    @GetMapping(value = "/tech_04_1")
	public String tech_04_1() {
		
		return "tech/tech_04_1";	
	}
    @GetMapping(value = "/tech_04_2")
	public String tech_04_2() {
		
		return "tech/tech_04_2";	
	}
	//링커버스
    @GetMapping(value = "/tech_05_1")
	public String tech_05_1() {
		
		return "tech/tech_05_1";	
	}
    @GetMapping(value = "/tech_05_2")
	public String tech_05_2() {
		
		return "tech/tech_05_2";	
	}
	//에프앤디파트너스
    @GetMapping(value = "/tech_06_1")
	public String tech_06_1() {
		
		return "tech/tech_06_1";	
	}
    @GetMapping(value = "/tech_06_2")
	public String tech_06_2() {
		
		return "tech/tech_06_2";	
	}
	//케이씨테크놀러지
    @GetMapping(value = "/tech_07_1")
	public String tech_07_1() {
		
		return "tech/tech_07_1";	
	}
    @GetMapping(value = "/tech_07_2")
	public String tech_07_2() {
		
		return "tech/tech_07_2";	
	}
	//파이
    @GetMapping(value = "/tech_08_1")
	public String tech_08_1() {
		
		return "tech/tech_08_1";	
	}
    @GetMapping(value = "/tech_08_2")
	public String tech_08_2() {
		
		return "tech/tech_08_2";	
	}

	//헬리오스
	@GetMapping(value = "/tech_09_1")
	public String tech_09_1() {
		
		return "tech/tech_09_1";	
	}
    @GetMapping(value = "/tech_09_2")
	public String tech_09_2() {
		
		return "tech/tech_09_2";	
	}
	//인바디
    @GetMapping(value = "/tech_10_1")
	public String tech_10_1() {
		
		return "tech/tech_10_1";	
	}
    @GetMapping(value = "/tech_10_2")
	public String tech_10_2() {
		
		return "tech/tech_10_2";	
	}
}