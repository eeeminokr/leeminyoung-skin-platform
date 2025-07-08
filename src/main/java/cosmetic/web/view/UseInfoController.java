package cosmetic.web.view;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/useinfo")
public class UseInfoController {
    @GetMapping(value = "/weather")
	public String weather() {
		
		return "useinfo/weather";
	
	}
    @GetMapping(value = "/toursInfo")
	public String toursInfo() {
		
		return "useinfo/toursInfo";
	
	}
    @GetMapping(value = "/medical")
	public String medical() {
		
		return "useinfo/medical";
	
	}

}
