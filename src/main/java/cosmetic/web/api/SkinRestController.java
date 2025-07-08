package cosmetic.web.api;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.ResponseEntity;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import cosmetic.core.EcoVo;
import cosmetic.domain.AuthDetails;
import cosmetic.domain.ServiceException;
import cosmetic.domain.SkinDiagnosis;
import cosmetic.domain.SkinDiagnosisResult;
import cosmetic.file.FileStore;
import cosmetic.infrastructure.security.JwtTokenProvider;
import cosmetic.infrastructure.security.JwtUserDetailsService;
import cosmetic.service.MailSendService;
import cosmetic.service.SkinDiagnosisService;
import cosmetic.web.ApiPath;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@RequiredArgsConstructor
@RequestMapping(ApiPath.Keys)
@RestController
@Validated
@Slf4j
public class SkinRestController {
	@Value("${member.file-upload-dir}")
	private String FILE_UPLOAD_DIR;

	private final FileStore fileStore;

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
	private SkinDiagnosisService skinDiagnosisService;

	@Autowired
	private final MailSendService emailService;

	// Profile 변경
	@Transactional
	@PostMapping(value = "/skin/diagnosis")
	// @PreAuthorize("hasRole('ROLE_USER')")
	@ResponseBody
	public int saveSkinDiagnosis(
			// @RequestParam(value="answers", required = false) ArrayList<SkinDiagnosis>
			// answers,
			// @ModelAttribute EcoVo paramVo, HttpServletRequest response,
			@RequestBody List<SkinDiagnosis> answers
			// @RequestBody UserForm userForm, @ModelAttribute UserForm userForm2,
			// @ModelAttribute UserForm userForm,
			// @Length(min = 2, max = 10,message = "${validatedValue} 이름을 올바르게 입력하세요.")
			// @ModelAttribute(value = "username") String username,
			// BindingResult result,
			// Principal principal,
			// Authentication auth,
			// @AuthenticationPrincipal AuthDetails member
			, HttpServletRequest request) throws ServiceException {

		// AuthDetails authDetails = (AuthDetails) auth.getPrincipal();
		// principal.getName();
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		AuthDetails authDetails = (AuthDetails) authentication.getPrincipal();

		// principal.getName()
		EcoVo ecoVo = EcoVo.builder().userId(authDetails.getId()).build();

		LOGGER.info("ENVO={}", ecoVo);

		int maxSeq = skinDiagnosisService.findSkinDignosisMaxSeqById(ecoVo);
		// skinDiagnosisService.deleteSkinDiagnosisForUserId(ecoVo);
		for (SkinDiagnosis answer : answers) {
			answer.setUserId(authDetails.getId());
			answer.setSeq(maxSeq + 1);
			answer.setCUser(authDetails.getUsername());
			answer.setUUser(authDetails.getUsername());
			if (answer.getAnswer() == null) {
				answer.setAnswer("2"); // 해당 : 2
			}
		}
		// return 1;

		return skinDiagnosisService.saveSkinDiagnosis(answers);
	}

	/**
	 * 일반소비자 피부진단 - 진단 결과
	 * 
	 * @return
	 * @throws cosmetic.domain.ServiceException
	 */
	@GetMapping(path = "/skin/diagnosisResult")
	public ResponseEntity<SkinDiagnosisResult> getSkinDiagnosisResult(
			Model model, @ModelAttribute(name = "paramVo") EcoVo paramVo
	) throws cosmetic.domain.ServiceException {
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		AuthDetails authDetails = (AuthDetails) authentication.getPrincipal();

		EcoVo ecoVo = EcoVo.builder().userId(authDetails.getId()).build();
		Integer seq = paramVo.getSeq();
		if (seq == null) {
			int maxSeq = skinDiagnosisService.findSkinDignosisMaxSeqById(ecoVo);
			ecoVo.setSeq(maxSeq);
		} else {
			ecoVo.setSeq(seq);
		}
		if (paramVo.getDiagnosisType() == null) {
			ecoVo.setDiagnosisType(SkinDiagnosis.Type.NORMAL);
		} else {
			ecoVo.setDiagnosisType(paramVo.getDiagnosisType());
		}
		SkinDiagnosisResult skinDiagnosisResult = skinDiagnosisService.findSkinDignosisResultByUserIdAndSeq(ecoVo);
		return ResponseEntity.ok(skinDiagnosisResult);
	}

}