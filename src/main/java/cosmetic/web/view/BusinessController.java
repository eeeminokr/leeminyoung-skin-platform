package cosmetic.web.view;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;

import cosmetic.core.EcoVo;
import cosmetic.web.MobileDetectocr;

@Controller
// @RequestMapping("/business")
public class BusinessController extends HttpServlet {
    /**
     * 사업소개 - 사업소개
     * 
     * @param model
     * @param paramVo
     * @return
     */
    @GetMapping(value = { "/business/business_01_1" })
    public String viewBusinessIntro(HttpServletRequest request, HttpServletResponse response, Model model,
            @ModelAttribute(name = "paramVo") EcoVo paramVo) {
        // paramVo.setCustomer(customer);

        String page = MobileDetectocr.determinePage(request, "pages/mobile/business/business_01_1",
                "pages/business/business_01_1");

        return "pages/business/business_01_1";
    }

    /**
     * 사업소개 - 주기관장 인사말
     * 
     * @param model
     * @param paramVo
     * @return
     */
    @GetMapping(value = { "/business/business_01_2" })
    public String viewBusinessMainOrgan(HttpServletRequest request, HttpServletResponse response, Model model, 
            @ModelAttribute(name = "paramVo") EcoVo paramVo) {
        // paramVo.setCustomer(customer);
        
        String page = MobileDetectocr.determinePage(request, "pages/mobile/business/business_01_2",
                "pages/business/business_01_2");

        return "pages/business/business_01_2";
    }

    /**
     * 기관소개 - 제주테크노파크
     * 
     * @param model
     * @param paramVo
     * @return
     */
    @GetMapping(value = { "/business/business_02_1" })
    public String viewBusinessOrgIntroJtp(HttpServletRequest request, HttpServletResponse response, Model model, 
            @ModelAttribute(name = "paramVo") EcoVo paramVo) {
        // paramVo.setCustomer(customer);
        String page = MobileDetectocr.determinePage(request, "pages/mobile/business/business_02_1",
                "pages/business/business_02_1");

        return "pages/business/business_02_1";
    }

    /**
     * 기관소개 - 한국전자통신연구원
     * 
     * @param model
     * @param paramVo
     * @return
     */
    @GetMapping(value = { "/business/business_02_2" })
    public String viewBusinessOrgIntroEtriBusiness(HttpServletRequest request, HttpServletResponse response, Model model, 
            @ModelAttribute(name = "paramVo") EcoVo paramVo) {
        // paramVo.setCustomer(customer);
        String page = MobileDetectocr.determinePage(request, "pages/mobile/business/business_02_2",
                "pages/business/business_02_2");

        return "pages/business/business_02_2";
    }

    /**
     * 기관소개 - 제주대학교 산학협력단
     * 
     * @param model
     * @param paramVo
     * @return
     */
    @GetMapping(value = { "/business/business_02_3" })
    public String viewBusinessOrgIntroJiucfBusiness(HttpServletRequest request, HttpServletResponse response, Model model, 
            @ModelAttribute(name = "paramVo") EcoVo paramVo) {
        // paramVo.setCustomer(customer);
        String page = MobileDetectocr.determinePage(request, "pages/mobile/business/business_02_3",
                "pages/business/business_02_3");

        return "pages/business/business_02_3";
    }

    /**
     * 맞춤형화장품 융복합 기술지원 사업
     * 
     * @param model
     * @param paramVo
     * @return
     */
    @GetMapping(value = { "/business/business_03_1" })
    public String viewBusinessCosmetic(HttpServletRequest request, HttpServletResponse response, Model model, 
            @ModelAttribute(name = "paramVo") EcoVo paramVo) {
        // paramVo.setCustomer(customer);
        String page = MobileDetectocr.determinePage(request, "pages/mobile/business/business_03_1",
                "pages/business/business_03_1");

        return "pages/business/business_03_1";
    }

    // (사업소개 < 사업소개)
    @GetMapping(value = "/old/business_01_1")
    public String business_01_1() {

        return "business/business_01_1";

    }

    @GetMapping(value = "/old/business_01_2")
    public String business_01_2() {

        return "business/business_01_2";

    }

    @GetMapping(value = "/old/business_02_1")
    public String business_02_1() {

        return "business/business_02_1";

    }

    @GetMapping(value = "/old/business_02_2")
    public String business_02_2() {

        return "business/business_02_2";

    }

    // html (기관소개 < 제주대학교 산학협력단)
    @GetMapping(value = "/old/business_02_3")
    public String business_02_3() {

        return "business/business_02_3";

    }

}
