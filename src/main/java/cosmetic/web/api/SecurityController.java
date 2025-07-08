package cosmetic.web.api;

import cosmetic.domain.*;
import cosmetic.domain.form.LoginForm;
import cosmetic.domain.form.SignUpForm;
import cosmetic.infrastructure.Code;
import cosmetic.infrastructure.config.Constants;
import cosmetic.infrastructure.security.JwtTokenProvider;
import cosmetic.infrastructure.security.JwtUserDetailsService;
import cosmetic.service.BoardService;
import cosmetic.service.UserService;
import cosmetic.web.ApiPath;
import io.swagger.annotations.ApiOperation;
import lombok.extern.slf4j.Slf4j;
import org.hibernate.validator.constraints.Length;
import org.hibernate.validator.constraints.Range;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseCookie;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.annotation.Secured;
import org.springframework.security.authentication.*;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;
import javax.validation.constraints.Size;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.time.LocalDateTime;
import java.util.HashMap;
import java.util.Map;

@Slf4j
@RestController
@Validated
@RequestMapping(ApiPath.Keys + "/security")
public class SecurityController {

    // @Value("${authentication.password-error-max-retry}")
    // private int PASSWORD_ERROR_MAX_RETRY;
    //
    // @Value("${authentication.lock-minutes}")
    // private int PASSWORD_ERROR_LOCK_MIN;
    @Value("${board.file-upload-dir}")
    private String FILE_UPLOAD_DIR;

    @Value("${board.file-upload-max-size}")
    private long FILE_UPLOAD_MAX_SIZE;
    private final Logger LOGGER = LoggerFactory.getLogger(getClass());

    @Autowired
    private AuthenticationManager authenticationManager;
    @Autowired
    private PasswordEncoder pencoder;
    @Autowired
    private JwtTokenProvider jwtTokenProvider;
    @Autowired
    private JwtUserDetailsService jwtUserDetailsService;
    @Autowired
    private UserService userService;
    private BoardService boardService;

    @GetMapping("/test")
    public String getTest() {
        return "Hello Test";
    }

    @ApiOperation(value = "비밀번호 encrypt API", notes = "")
    @GetMapping("/password/{password}")
    public String getEncodedPassword(@PathVariable String password) {
        return this.pencoder.encode(password);
    }

    @ApiOperation(value = "로그인", notes = "성공 시 token 값, id, email 값등을 전달 합니다.")
    @PostMapping("/signin")
    public ResponseEntity<?> signIn(@Valid @RequestBody LoginForm form, HttpServletResponse response)
            throws ServiceException {
        if (log.isInfoEnabled()) {
            log.info("-> form : " + form);
        }

        Map<String, Object> res = new HashMap<>();
        String message;

        User user = this.userService.findByEmail(form.getEmail());

        if (user == null) { // 사용자 존재 체크
            log.error(String.format("No user found with user id [%s] in the system", form.getEmail()));
            message = "사용자 정보가 존재하지 않습니다";
            res.put("message", message);
            res.put("succeed", false);

            return ResponseEntity.status(HttpStatus.UNAUTHORIZED).body(res);
        }

        // 미승인 된 계정일때
        if (Constants.USER_STATUS_UNAPPROVED.equals(user.isEnabled())) {

        }

        // ACTIVED 된 계정이 아닐때
        if (Constants.USER_STATUS_ACTIVE.equals(user.getStatus())) {

        }

        // 중복 로그인 체크
        if (true) {

        }

        Authentication authentication = null;
        try {
            // 인증처리
            authentication = authenticationManager
                    .authenticate(new UsernamePasswordAuthenticationToken(form.getEmail(), form.getPassword()));
        } catch (AuthenticationException e) {
            // 비밀번호 오기입 시
            if (e instanceof BadCredentialsException) {
                try {
                    this.updatePwdRetryCnt(form.getEmail());
                } catch (Exception e1) {
                    log.error("Fail to update pwdRetryCnt. - " + e1.getMessage(), e);
                }
                throw new ServiceException("계정 또는 비밀번호가 틀렸습니다.", e);
            } else if (e instanceof LockedException) {
                throw new ServiceException("사용중지된 계정 입니다.", e);
            } else if (e instanceof AuthenticationServiceException)
                throw new ServiceException(e.getMessage(), e);
        }

        int retry = user.getPwdretryTry() + 1;
        // message = String.format("현재 %s회 아이디 또는 비밀번호를 잘못 입력하셨습니다.\n비밀번호 5회이상 오류 시 %s분간
        // 계정사용이 중단됩니다.", retry, PASSWORD_ERROR_LOCK_MIN);
        // 비밀번호 오류 재시도 횟수 초과 체크
        // if(retry >= PASSWORD_ERROR_MAX_RETRY) {
        // return ResponseEntity.status(HttpStatus.UNAUTHORIZED).body(res);
        // }

        SecurityContextHolder.getContext().setAuthentication(authentication);
        AuthDetails userDetails = (AuthDetails) authentication.getPrincipal();

        Map<String, Object> userData = new HashMap<>();
        userData.put("id", userDetails.getId());

        String accessToken = this.jwtTokenProvider.createAccessToken(userDetails.getUsername(),
                userDetails.getAuthorities(), userData);
        String refreshToken = this.jwtTokenProvider.createRefreshToken(userDetails.getUsername());
        userDetails.setAccessToken(accessToken);
        userDetails.setRefreshToken(refreshToken);

        // Cookie at = new Cookie("accessToken", accessToken );
        // Cookie rt = new Cookie("refreshToken", refreshToken );

        // at.setMaxAge(1000 * 60 * 60 * 24 * 7);
        // at.setMaxAge(1000 * 60 * 60 * 24 * 7);
        // rt.setHttpOnly(true);
        // rt.setHttpOnly(true);

        ResponseCookie responseCookie = ResponseCookie.from("refreshToken", refreshToken)
                .httpOnly(true)
                .secure(true)
                .maxAge(60)
                .path("/")
                .build();

        return ResponseEntity.ok().header(HttpHeaders.SET_COOKIE, responseCookie.toString())
                .body(userDetails);
    }

    @ApiOperation(value = "whoami API", notes = "")
    @GetMapping("/me")
    public AuthDetails me() throws ServiceException {
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        AuthDetails details = (AuthDetails) authentication.getPrincipal();
        if (log.isInfoEnabled()) {
            log.info("-> signOut - " + details.getUsername());
        }
        return details;
    }

    @Secured("ROLE_ANONYMOUS")
    @GetMapping("/refresh/{refreshToken}")
    public AuthDetails refresh(@PathVariable String refreshToken) {
        String username = this.jwtTokenProvider.getUsername(refreshToken);
        AuthDetails details = (AuthDetails) this.jwtUserDetailsService.loadUserByUsername(username);

        String accessToken = this.jwtTokenProvider.createAccessToken(details.getUsername(), details.getAuthorities(),
                null);
        String newRefreshToken = this.jwtTokenProvider.createRefreshToken(details.getUsername());
        details.setAccessToken(accessToken);
        details.setRefreshToken(newRefreshToken);
        return details;
    }

    // 로그아웃
    @ApiOperation(value = "로그아웃", notes = "기능 추가예정")
    @PostMapping("/signout")
    public ResponseEntity signOut() throws ServiceException {

        // Cookie [] cookies =request.getCookies();
        // if(cookies != null){
        // for(Cookie c : cookies){
        // c.setMaxAge(0);
        // response.addCookie(c);
        // }
        // }

        ResponseCookie rmCookie = ResponseCookie.from("refreshToken", "")
                .httpOnly(true)
                .path("/")
                .maxAge(0)
                .build();

        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        AuthDetails details = (AuthDetails) authentication.getPrincipal();
        if (log.isInfoEnabled()) {
            log.info("-> signOut - " + details.getUsername());
        }

        return ResponseEntity.ok().header(HttpHeaders.SET_COOKIE, rmCookie.toString()).body(HttpStatus.OK);
    }

    // 회원가입
    @ApiOperation(value = "회원가입", notes = "")
    @Transactional
    @PostMapping(path = "/signup")
    // @PostMapping(path = "/signup", consumes = {MediaType.APPLICATION_JSON_VALUE,
    // MediaType.MULTIPART_FORM_DATA_VALUE})
    public ResponseEntity<?> signUp(
            @ModelAttribute SignUpForm signUpForm,
            // @Length(min = 2, max = 10,message = "${validatedValue} 이름을 올바르게 입력하세요.")
            // @ModelAttribute(value = "username") String username,
            @Length(min = 2, max = 10, message = "이름을 올바르게 입력하세요.") @ModelAttribute(value = "username") String username,
            @RequestPart(required = false) MultipartFile file1, @RequestPart(required = false) MultipartFile file2,
            BindingResult result

    ) throws ServiceException {
        // @ModelAttribute SignUpForm signUpForm) throws Exception {
        if (result.hasErrors()) {
            log.error("error.s.s.s");
            // return "add_user";
        }

        if (log.isInfoEnabled()) {
            log.info("-> signup - " + signUpForm.getUsername());
        }

        if (userService.findByEmail(signUpForm.getEmail()) != null) {
            throw new RuntimeException("이미 가입되어 있는 유저입니다.");
        }

        RoleType roleType = null;
        // user role setting
        // multi role setting 상무님 문의 드릴 것
        roleType = RoleType.ROLE_USER;
        /*
         * if(signUpForm.getCertificate().equals("1")) {
         * roleType = RoleType.ROLE_COSMETIC;
         * }else if(signUpForm.getDeclaration().equals("1")){
         * roleType =RoleType.ROLE_BUSINESS;
         * }
         * else {
         * roleType = RoleType.ROLE_USER;
         * }
         */

        /*
         * byte[] bytes =null;
         * if(image != null){
         * try {
         * bytes = image.getBytes();
         * } catch (IOException e) {
         * throw new ServiceException("파일 변환 중 에러가 발생하였습니다.", e);
         * }
         * 
         * 
         * }
         */

        User user = User.builder()
                .email(signUpForm.getEmail())
                .password(pencoder.encode(signUpForm.getPassword()))
                .username(signUpForm.getUsername())
                .gender(signUpForm.getGender())
                .phoneNumber(signUpForm.getPhoneNumber())
                .birthDay(signUpForm.getBirthDay())
                .residence(signUpForm.getResidence())
                .companyName(signUpForm.getCompanyName())
                .certificate(signUpForm.getCertificate())
                .declaration(signUpForm.getDeclaration())
                .roleType(roleType)
                .emailAgree(signUpForm.getEmailAgree())
                .messageAgree(signUpForm.getMessageAgree())
                .createUser("system")
                // .image(bytes)
                .build();

        userService.save(user);
        User usernew = userService.findByEmail(signUpForm.getEmail());
        LOGGER.info("After User Save [ID={}]", usernew.getId());

        setFile(usernew, "1", file1);
        setFile(usernew, "2", file2);
        return ResponseEntity.ok(Code.OK);
    }

    // 비밀번호 에러 횟수 추가
    public void updatePwdRetryCnt(String username) {
        userService.save(username);
    }

    public void setFile(User user, String type, MultipartFile file) {
        int id = user.getId();
        if (file != null && !file.isEmpty()) {
            LOGGER.info("Start File1 Upload", file.getName());
            try {
                // TODO Should delete and insert only changed files

                final Path dir = Path.of(FILE_UPLOAD_DIR);
                if (!Files.exists(dir)) {
                    Files.createDirectories(dir);

                    LOGGER.info("File upload dir created. [PATH={}]", dir.toString());
                }

                String fileName = file.getOriginalFilename();

                try {
                    Path path = Path.of(dir.toString(), fileName);
                    if (Files.exists(path)) {
                        // TODO rename if the same file name exists
                    }

                    // Copy file
                    file.transferTo(path);
                    LOGGER.debug("Copied file. [PATH={}]", path);

                    // Insert file into BoardFile
                    var userFile = new UserFile(id, type, fileName, path.toString());
                    userFile.setDateTimeCreated(LocalDateTime.now());
                    userFile.setUserCreated(user.getEmail());
                    userFile.setFileSize(file.getSize());
                    userService.insertUserFile(userFile);
                    // this.boardMapper.insertOneBoardFile(boardFile);

                    LOGGER.debug("Inserted BoardFile. [PATH={}]", path);
                } catch (Exception ex) {
                    LOGGER.error("Error while saving uploaded file. [Board={}/{}, File={}]", id, type,
                            file.getOriginalFilename(), ex);
                }
            } catch (IOException e) {
                LOGGER.error("Error while getting User-file. [FILE={}]", id);
            }
        }
    }
}
