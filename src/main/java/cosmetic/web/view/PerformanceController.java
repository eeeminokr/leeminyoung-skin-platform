package cosmetic.web.view;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping("/performance")
public class PerformanceController {

	// ( 융복합 기술개발 성과 < 맞춤형화장품 융복합 기술지원 사업)
	@GetMapping(value = "/performance_03_1")
	public String business_03_1() {
		
		return "performance/performance_03_1";
	
	}
	@GetMapping(value = "/performance_03_2")
	public String performance_03_2() {
		
		return "performance/performance_03_2";
	
	}

	//( 산업혁신기반구축사업 > 피부정보 데이터 소개 > 데이터 개요 및 구축과정 )
	@GetMapping(value = "/performance_04_1")
	public String performance_04_1() {
		
		return "performance/performance_04_1";
	
	}
	//( 산업혁신기반구축사업 > 피부정보 데이터 소개 > 데이터 상세 )
	@GetMapping(value = "/performance_04_2")
	public String performance_04_2() {
		
		return "performance/performance_04_2";
	
	}
	
}
