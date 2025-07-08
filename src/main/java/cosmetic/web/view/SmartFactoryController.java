package cosmetic.web.view;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/smartfactory")
public class SmartFactoryController {
	@GetMapping()
	public String service_02_2() {
		
		return "smartfactory/smartfactory";
	
	}

}