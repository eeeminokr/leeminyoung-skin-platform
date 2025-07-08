package cosmetic.web.view;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/service")
public class ServiceController {
	@GetMapping(value = "/service_01_1")
	public String service_01_1() {
		
		return "service/service_01_1";
	
	}
	@GetMapping(value = "/service_01_2")
	public String service_01_2() {
		
		return "service/service_01_2";
	
	}
	@GetMapping(value = "/service_02_1")
	public String service_02_1() {
		
		return "service/service_02_1";
	
	}
	
}
