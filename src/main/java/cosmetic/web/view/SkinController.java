package cosmetic.web.view;

import cosmetic.domain.SkinDiagnosis;
import cosmetic.web.MainController;
import cosmetic.web.MobileDetectocr;
import io.swagger.annotations.ApiParam;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;

import cosmetic.core.EcoVo;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;

@Controller
// @RequestMapping("/cosmetic")
public class SkinController extends HttpServlet {
    /**
     * 일반소비자 피부진단
     * 
     * @param model
     * @param paramVo
     * @return
     */

    private static final Logger LOGGER = LoggerFactory.getLogger(SkinController.class);

    @GetMapping(value = { "/skin/solution_01_{seq}" })
    public String viewSkinSkinDiagnosis(
            @ApiParam(example = "seq") @PathVariable("seq") int seq,
            Model model,
            // @ModelAttribute(name = "paramVo") EcoVo paramVo,
            // @RequestParam(value="answers", required = false) ArrayList<String> answers,
            @RequestParam(value = "answers", required = false) ArrayList<SkinDiagnosis> answers,
            @ModelAttribute EcoVo paramVo, HttpServletRequest request, HttpServletRequest response) {
        // paramVo.setCustomer(customer);
        // answers.get(0);
        paramVo.setAnswers(answers);

        model.addAttribute("answers", answers);

        String page = MobileDetectocr.determinePage(request, "pages/mobile/skin/solution_01_" + seq,
                "pages/skin/solution_01_" + seq);

        LOGGER.info("isTrue[skin]={} ", page);
        return "pages/skin/solution_01_" + seq;
        // return page;
    }

    /**
     * 일반소비자 피부진단 - 진단결과
     * 
     * @param model
     * @param paramVo
     * @return
     */
    @GetMapping(value = { "/skin/solution_01_9" })
    public String viewSkinSkinDiagnosisResult(HttpServletRequest request, Model model,
            @ModelAttribute(name = "paramVo") EcoVo paramVo) {
        // paramVo.setCustomer(customer);
        model.addAttribute("seq", paramVo.getSeq());
        String page = MobileDetectocr.determinePage(request, "pages/mobile/skin/solution_01_9",
                "pages/skin/solution_01_9");
        return "pages/skin/solution_01_9";
        // return page;
    }

}
