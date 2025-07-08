package cosmetic.web.view;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;

import cosmetic.core.EcoVo;
import cosmetic.web.MobileDetectocr;

@Controller
// @RequestMapping("/cosmetic")
public class CosmeticController {
   /**
    * 맞춤형화장품 정의
    * @param model
    * @param paramVo
    * @return
    */
   @GetMapping(value = { "/cosmetic/cosmetic_01_1" })
   public String viewCosmeticDfnHistory(HttpServletRequest request, HttpServletResponse response, Model model, 
        @ModelAttribute(name = "paramVo") EcoVo paramVo) {
        // paramVo.setCustomer(customer);
        String page = MobileDetectocr.determinePage(request, "pages/mobile/cosmetic/cosmetic_01_1",
            "pages/cosmetic/cosmetic_01_1");
        return "pages/cosmetic/cosmetic_01_1";
   }

   /**
    * 맞춤형 화장품 기술개발 동향
    * @param model
    * @param paramVo
    * @return
    */
   @GetMapping(value = { "/cosmetic/cosmetic_01_2" })
   public String viewCosmeticTecDevTrends(HttpServletRequest request, HttpServletResponse response, Model model, 
        @ModelAttribute(name = "paramVo") EcoVo paramVo) {
        // paramVo.setCustomer(customer);
        String page = MobileDetectocr.determinePage(request, "pages/mobile/cosmetic/cosmetic_01_2",
            "pages/cosmetic/cosmetic_01_2");
        return "pages/cosmetic/cosmetic_01_2";
   }

   /**
    * 맞춤형 화장품 시장동향
    * @param model
    * @param paramVo
    * @return
    */
   @GetMapping(value = { "/cosmetic/cosmetic_01_3" })
   public String viewCosmeticMarketTrends(HttpServletRequest request, HttpServletResponse response, Model model,
        @ModelAttribute(name = "paramVo") EcoVo paramVo) {
        // paramVo.setCustomer(customer);
        String page = MobileDetectocr.determinePage(request, "pages/mobile/cosmetic/cosmetic_01_3",
            "pages/cosmetic/cosmetic_01_3");
        return "pages/cosmetic/cosmetic_01_3";
   }

   /**
    * 맞춤형화장품 판매업
    * @param model
    * @param paramVo
    * @return
    */
   @GetMapping(value = { "/cosmetic/cosmetic_02_1" })
   public String viewCosmeticDealership(HttpServletRequest request, HttpServletResponse response, Model model, 
        @ModelAttribute(name = "paramVo") EcoVo paramVo) {
        // paramVo.setCustomer(customer);
        String page = MobileDetectocr.determinePage(request, "pages/mobile/cosmetic/cosmetic_02_1",
            "pages/cosmetic/cosmetic_02_1");
        return "pages/cosmetic/cosmetic_02_1";
   }

   /**
    * 맞춤형화장품 조제관리사
    * @param model
    * @param paramVo
    * @return
    */
   @GetMapping(value = { "/cosmetic/cosmetic_02_2" })
   public String viewCosmeticDspsmanager(HttpServletRequest request, HttpServletResponse response, Model model,
        @ModelAttribute(name = "paramVo") EcoVo paramVo) {
        // paramVo.setCustomer(customer);
        String page = MobileDetectocr.determinePage(request, "pages/mobile/cosmetic/cosmetic_02_2",
            "pages/cosmetic/cosmetic_02_2");
        return "pages/cosmetic/cosmetic_02_2";
   }

   /**
    * 브랜드 소개
    * @param model
    * @param paramVo
    * @return
    */
   @GetMapping(value = { "/cosmetic/cosmetic_03_1" })
   public String viewCosmeticBrandIntro(HttpServletRequest request, HttpServletResponse response, Model model, 
        @ModelAttribute(name = "paramVo") EcoVo paramVo) {
        // paramVo.setCustomer(customer);
        String page = MobileDetectocr.determinePage(request, "pages/mobile/cosmetic/cosmetic_03_1",
            "pages/cosmetic/cosmetic_03_1");
        return "pages/cosmetic/cosmetic_03_1";
   }

   /**
    * 인증마크
    * @param model
    * @param paramVo
    * @return
    */
   @GetMapping(value = { "/cosmetic/cosmetic_03_2" })
   public String viewCosmeticCertMark(HttpServletRequest request, HttpServletResponse response, Model model, 
        @ModelAttribute(name = "paramVo") EcoVo paramVo) {
       // paramVo.setCustomer(customer);
        String page = MobileDetectocr.determinePage(request, "pages/mobile/cosmetic/cosmetic_03_2",
            "pages/cosmetic/cosmetic_03_2");
        return "pages/cosmetic/cosmetic_03_2";
   }

	@GetMapping(value = "/old/cosmetic_01_1")
	public String cosmetic_01_1() {
			
		return "cosmetic/cosmetic_01_1";
	
	}
	@GetMapping(value = "/old/cosmetic_01_2")
	public String cosmetic_01_2() {
			
		return "cosmetic/cosmetic_01_2";
	
	}
	@GetMapping(value = "/old/cosmetic_02_1")
	public String cosmetic_02_1() {
			
		return "cosmetic/cosmetic_02_1";
	
	}
	@GetMapping(value = "/old/cosmetic_02_2")
	public String cosmetic_02_2() {
			
		return "cosmetic/cosmetic_02_2";
	
	}
	
	
	@GetMapping(value = "/old/cosmetic_01_3")
	public String cosmetic_01_3() {
			
		return "cosmetic/cosmetic_01_3";
	
	}
	
	@GetMapping(value = "/old/cosmetic_03_1")
	public String cosmetic_03_1() {
			
		return "cosmetic/cosmetic_03_1";
	
	}
	
	@GetMapping(value = "/old/cosmetic_03_2")
	public String cosmetic_03_2() {
			
		return "cosmetic/cosmetic_03_2";
	
	}
	
	
}
