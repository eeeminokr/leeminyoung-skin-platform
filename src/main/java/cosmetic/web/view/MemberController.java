package cosmetic.web.view;

import cosmetic.service.UserService;
import cosmetic.web.MobileDetectocr;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import cosmetic.core.EcoVo;
import cosmetic.service.BoardService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;

//@RequiredArgsConstructor
@Controller
public class MemberController {
    private final Logger LOGGER = LoggerFactory.getLogger(getClass());
    private BoardService boardService;
    private final UserService userService;
    private PasswordEncoder pencoder;

    @Autowired
    public MemberController(BoardService boardService, UserService userService, PasswordEncoder pencoder) {
        this.boardService = boardService;
        this.userService = userService;
        this.pencoder = pencoder;
    }

    /**
     * 개인정보 수집 동의
     * 
     * @param model
     * @param paramVo
     * @return
     */
    @GetMapping(value = { "/member/joinTerms" })
    public String viewMemberPrivacyAgreement(HttpServletRequest request, HttpServletResponse respons, Model model, @ModelAttribute(name = "paramVo") EcoVo paramVo) {
        // paramVo.setCustomer(customer);
        String page = MobileDetectocr.determinePage(request, "pages/mobile/member/join_terms",
        "pages/member/join_terms");

        model.addAttribute("roleType", paramVo.getRoleType());
        return "pages/member/join_terms";
    }

    /**
     * 가입 유형 선택
     * 
     * @param model
     * @param paramVo
     * @return
     */
    @GetMapping(value = { "/member/joinTypeSelect" })
    public String viewMemberJoinTypeSelect(HttpServletRequest request, HttpServletResponse respons, Model model,
            @ModelAttribute(name = "paramVo") EcoVo paramVo) {
        // paramVo.setCustomer(customer);
        String userAgent = request.getHeader("User-Agent");
        String page = MobileDetectocr.determinePage(request, "pages/mobile/member/join_type_select",
                "pages/member/join_type_select");

        LOGGER.info("userAgent :" + userAgent);
        return "pages/member/join_type_select";
    }

    /**
     * 가입 정보 입력
     * 
     * @param model
     * @param paramVo
     * @return
     */
    @GetMapping(value = { "/member/join" })
    public String viewMemberJoin(Model model, @ModelAttribute(name = "paramVo") EcoVo paramVo,
        HttpServletRequest request, HttpServletRequest response) {
        // paramVo.setCustomer(customer);
        String referer = response.getHeader("Referer");

        model.addAttribute("roleType", paramVo.getRoleType());

        if (referer == null) {
            // return MobileDetectocr.determinePage(request, "pages/mobile/member/join_terms",
            // "pages/member/join_terms");
            return "pages/member/join_terms";
        }

        java.util.ArrayList<String> local = new java.util.ArrayList<String>(java.util.Arrays.asList("서울", "부산", "대구",
                "인천", "광주", "대전", "울산", "세종", "경기", "강원", "충북", "충남", "전북", "전남", "경북", "경남", "제주"));
        model.addAttribute("residence", local);

        // return MobileDetectocr.determinePage(request, "pages/mobile/member/join",
        //     "pages/member/join");
        return "pages/member/join";
    }

    /**
     * 수정 정보 입력
     * 
     * @param model
     * @param paramVo
     * @return
     */
    @GetMapping(value = "/member/update")
    public String viewMemberUpdate(Model model, @ModelAttribute(name = "paramVo") EcoVo paramVo,
            @CookieValue(value = "refreshToken", required = false) Cookie cookie,
            HttpServletRequest request) {

        java.util.ArrayList<String> local = new java.util.ArrayList<String>(java.util.Arrays.asList("서울", "부산", "대구",
                "인천", "광주", "대전", "울산", "세종", "경기", "강원", "충북", "충남", "전북", "전남", "경북", "경남", "제주"));
        model.addAttribute("residence", local);

        String page = MobileDetectocr.determinePage(request, "pages/mobile/member/join_mypage_edit",
        "pages/member/join_mypage_edit_1");

        return "pages/member/join_mypage_edit_1";
        // return page;
    }

}
