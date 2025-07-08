package cosmetic.web.api;

import java.security.Principal;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import cosmetic.core.EcoVo;
import cosmetic.domain.AuthDetails;
import cosmetic.domain.RoleType;
import cosmetic.domain.User;
import cosmetic.domain.form.SignUpForm;
import cosmetic.domain.form.UpdateForm;
import cosmetic.domain.form.UserForm;
import cosmetic.infrastructure.security.JwtTokenProvider;
import cosmetic.service.MailSendService;
import cosmetic.service.UserService;
import cosmetic.web.ApiPath;
import io.swagger.annotations.ApiOperation;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@RequiredArgsConstructor

@RequestMapping(ApiPath.Keys + "/user")
@RestController
@Slf4j
public class UserController {

    private final Logger LOGGER = LoggerFactory.getLogger(getClass());

    @Autowired
    private final UserService userService;

    @Autowired
    private PasswordEncoder pencoder;

    @Autowired
    private final JwtTokenProvider jwtTokenProvider;

    @Autowired
    private final MailSendService emailService;

    @Transactional
    @PostMapping(value = "/checkOverlapEmail")
    @PreAuthorize("permitAll()")
    public int checkOverlapEmail(@Valid @RequestParam(value = "email") String email) throws Exception {

        var Findemails = userService.findByEmail(email);
        int count = 0;
        if (Findemails == null) {
            count = 0;
        } else {
            count = 1; // 존재하지 않는 경우, 생성 가능
        }
        return count;
    }

    // 메일 인증하기
    @Transactional
    @PostMapping("/mailConfirm")
    public String mailConfirm(@Valid @RequestParam(value = "email") String email) throws Exception {
        log.info("email : " + email);
        var Findemails = userService.findByEmail(email);
        String code = "0";
        if (Findemails == null) {
            code = emailService.sendSimpleMessage(email, "1"); // 존재하지 않는 경우, 회원가입 가능
        } else {
            code = "0"; // 이미 존재하는 메일임.
        }

        log.info("인증코드 : " + code);
        return code;
    }

    // 패스워드 찾기
    @PostMapping(value = "/findUserId")
    @ResponseBody
    public String findUserId(@Valid @RequestParam(value = "name") String name,
            @Valid @RequestParam(value = "email") String email) throws Exception {
        log.info("name : " + name);
        log.info("name : " + name);
        log.info("name : " + name);
        log.info("name : " + name);
        log.info("email : " + email);
        User user = userService.findByEmailAndName(name, email);
        log.info("user : " + user.getEmail());
        String result = "";
        if (user != null) {
            result = user.getEmail();
        } else {
            result = "0";
        }

        log.info("email : " + result);
        return result;
    }

    // 패스워드 찾기
    @PostMapping(value = "/findUserPassword")
    @ResponseBody
    public String findUserPassword(@Valid @RequestParam(value = "name") String name,
            @Valid @RequestParam(value = "email") String email) throws Exception {
        // log.info("id : " + id);
        log.info("username : " + name);
        log.info("email : " + email);
        User user = userService.findByEmailAndName(name, email);
        String code = "0";
        if (user == null) {
            code = "0"; // 이메일이 같은 사용자 없음
        } else {
            code = emailService.sendSimpleMessage(email, "2"); // 이미 가입한 사용자 있음.
        }

        log.info("인증코드 : " + code);
        return code;
    }

    @PreAuthorize("hasRole('ROLE_ADMINISTRATOR')")
    @ApiOperation(value = "전체 회원 조회(관리자용)", notes = "전체 회원 정보 출력")
    @GetMapping(path = "/all")
    public List<User> findtUsers() throws cosmetic.domain.ServiceException {
        return userService.findUsers();
    }

    /**
     * Admin 계정 회원 조회 {id}
     * 
     * @param id
     * @return
     * @throws cosmetic.domain.ServiceException
     */
    @PreAuthorize("hasRole('ROLE_ADMINISTRATOR')")
    @ApiOperation(value = "대상 회원 조회(관리자용)", notes = "대상 ID에 대한 회원 정보 출력")
    @GetMapping(path = "/admin/{id}/profile")
    public ResponseEntity<User> getProfileById(
            final @PathVariable(required = true, name = "id") int id) throws cosmetic.domain.ServiceException {

        User user = userService.findById(id);
        return ResponseEntity.ok(user);
    }

    /**
     * Admin 계정 회원 조회 {email}
     * 
     * @param email
     * @return
     * @throws cosmetic.domain.ServiceException
     */
    @PreAuthorize("hasRole('ROLE_ADMINISTRATOR')")
    @ApiOperation(value = "email 대상 회원 조회(관리자용)", notes = "대상 email 에 대한 회원 정보 출력")
    @GetMapping(path = "/admin/profile")
    public ResponseEntity<User> getProfileByEmail(
            final @RequestParam(required = true, name = "email") String email) throws cosmetic.domain.ServiceException {

        User user = userService.findByEmail(email.trim());
        return ResponseEntity.ok(user);
    }

    /**
     * 유저 Profile 조회{id}
     * 
     * @param request
     * @param email
     * @return
     * @throws cosmetic.domain.ServiceException
     */

    @ApiOperation(value = "유저 대상 회원(profile) 조회", notes = "유저 회원 정보(profile) 출력")
    @GetMapping(path = "/profile")
    public ResponseEntity<User> getProfile(Model model, @ModelAttribute(name = "paramVo") EcoVo paramVo,
            HttpServletRequest request) throws cosmetic.domain.ServiceException {

        try {
            String token = jwtTokenProvider.resolveToken(request);
            if (token == null) {
                // token 예외 처리
                return ResponseEntity.status(HttpStatus.UNAUTHORIZED).build();
            }

            int id = jwtTokenProvider.getId(token);

            if (paramVo.getUserId() == null) {
                // userinfoId 예외 처리
                return ResponseEntity.badRequest().build();
            }

            Integer userId = paramVo.getUserId();

            User user = userService.findById(id);

            if (!userId.equals(id)) {
                // userId와 id가 다를 경우
                user = null;
            }

            if (user == null) {
                // 유저가 존재하지 않을 경우
                return ResponseEntity.notFound().build();
            }

            return ResponseEntity.ok(user);
        } catch (Exception ex) {
            LOGGER.error("요청 처리 중 오류가 발생했습니다", ex);
            // 적절한 에러 응답
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).build();
        }
    }

    // @ApiOperation(value= "회원 정보 변경", notes = "대상 ID에 대한 회원 정보 수정")
    // //Profile 변경
    // @Transactional
    // @PutMapping(path="/profile")
    // public void changeProfile(
    // HttpServletRequest request,
    // @RequestBody SignUpForm signUpForm) throws cosmetic.domain.ServiceException{
    //
    // String token = jwtTokenProvider.resolveToken(request);
    // int id = (int)jwtTokenProvider.getId(token);
    //
    // signUpForm.setId(id);
    //
    // //여기서 비밀번호도 변경 가능한지 확인
    // userService.save(signUpForm);
    // }

    // Profile 변경
    @Transactional
    @PostMapping(value = "/updateUserInfo")
    // @PreAuthorize("hasRole('ROLE_USER')")
    @ResponseBody
    public int updateUserInfo(@RequestBody UserForm userForm, @ModelAttribute UserForm userForm2
    // Principal principal,
    // Authentication auth,
    // @AuthenticationPrincipal AuthDetails customUser
    ) throws cosmetic.domain.ServiceException {
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        AuthDetails authDetails = (AuthDetails) authentication.getPrincipal();

        // String username = customUser.getUsername();
        // auth.getAuthorities().stream().toArray();
        if (authDetails != null && authDetails.getAuthorities().stream().anyMatch(a -> {
            return a.getAuthority().equals(RoleType.ROLE_USER.toString());
        })) {
            // throw new ServiceException("권한없음.");
        }

        // authentication.getDetails()
        // authentication.getName()
        authentication.getAuthorities().iterator();

        log.info("1 : " + userForm.getEmail());
        // "rawPassword cannot be null"
        // String token = jwtTokenProvider.resolveToken(request);
        // int id = (int)jwtTokenProvider.getId(token);

        // userForm.setId(id);

        log.info("email : " + userForm.getEmail());
        userForm.setPassword(pencoder.encode(userForm.getPassword()));

        return userService.saveUserInfo(userForm);
    }

    // 비밀번호 변경
    @ApiOperation(value = "비밀번호 변경", notes = "대상 ID에 대한 회원 비밀번호 변경")
    @Transactional
    @PutMapping(path = "/password")
    public void updatePassword(
            HttpServletRequest request,
            @RequestBody UpdateForm updateForm) throws cosmetic.domain.ServiceException {

        String token = jwtTokenProvider.resolveToken(request);
        int id = (int) jwtTokenProvider.getId(token);

        User user = userService.findById(id);

        user.setId(id);

        // 비밀번호가 일치한다면
        if (pencoder.matches(updateForm.getOldPwd(), user.getPassword())) {
            user.setPassword(pencoder.encode(updateForm.getNewPwd()));
            userService.update(user);
        }
    }

    // 비밀번호 초기화(메뉴에 없어서 다시 확인필요)

    @Transactional
    @PostMapping(value = "/updatePassword")
    @ResponseBody
    public int updatePassword(@Valid @RequestParam(name = "password") String password,
            @Valid @RequestParam(name = "email") String email) throws cosmetic.domain.ServiceException {
        log.info("password : " + password);
        log.info("email : " + email);
        return userService.updatePasswordByEmail(pencoder.encode(password), email);
    }

    /**
     * 회원 조회 {email}
     * 
     * @param request
     * @param email
     * @return
     * @throws cosmetic.domain.ServiceException
     */
    @GetMapping(path = "/getUserByEmail")
    public ResponseEntity<User> getUserByEmail(
            final @RequestParam(required = true, name = "email") String email) throws cosmetic.domain.ServiceException {
        log.info("email : " + email);
        User user = userService.findByEmail(email.trim());
        // log.info("user : " + user);
        return ResponseEntity.ok(user);
    }

    @GetMapping(path = "/withdrawal")
    public int withdrawal(
            final @RequestParam(required = true, name = "email") String email) throws cosmetic.domain.ServiceException {
        log.info("email : " + email);

        // log.info("user : " + user);
        return userService.deleteUserByEmail(email.trim());
    }
}