package cosmetic.domain.form;


import cosmetic.domain.RoleType;
import io.swagger.annotations.ApiModelProperty;
import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Builder;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import javax.validation.constraints.NotNull;

@Schema(description = "회원가입 폼")
@Getter
@Setter
@ToString
public class SignUpForm {

	@ApiModelProperty(hidden = true)
	protected int id;
	@ApiModelProperty(value="아이디(이메일)",example = "user@ecoinsight.co.kr")
	protected String email;
	@ApiModelProperty(value="비밀번호",example = "1234")
	protected String password;
	@ApiModelProperty(value="이름", example = "김에코")
	protected String username;
	@ApiModelProperty(value="성별(1 또는 2)", example = "1") 
	protected String gender;
	@ApiModelProperty(value="생년월일", example = "19000101")
	protected String birthDay;
	@ApiModelProperty(value="회사명", example = "에코인사이트")
	protected String companyName;
	@ApiModelProperty(value="거주지", example = "서울")
	protected String residence;

	@ApiModelProperty(value="우편번호", example = "12345")
	protected String zipcode;
	@ApiModelProperty(value="주소", example = "서울")
	protected String address;
	@ApiModelProperty(value="상세주소", example = "서울")
	protected String detailAddress;
	@ApiModelProperty(value="추천조제관리사",example = "129")
	protected int recommandUserId;
	@ApiModelProperty(value="핸드폰", example = "01011111111")
	protected String phoneNumber;

	@ApiModelProperty(value="사업자등록번호", example = "1112345678")
	protected String bizRegNumber;
	@ApiModelProperty(value="사업장연락처", example = "01011111111")
	protected String bizPhoneNumber;

	@ApiModelProperty(value="자격증 유무", example = "1")
	protected String certificate;
	@ApiModelProperty(value="자격증 번호(10자리)", example = "1234567890")
	protected String certificateNumber;
	@ApiModelProperty(value="신고 여부", example = "1")
	protected String declaration;
	@ApiModelProperty(value="메일 수신 동의",example = "1")
	protected String emailAgree;
	@ApiModelProperty(value="문자 수신 동의",example = "1")
	protected String messageAgree;


	@ApiModelProperty(value="가입시.사용자유형",example = "ROLE_USER")
	protected RoleType RegRoleType;

	public SignUpForm() {
		super();
	}
	
	@Builder
	public SignUpForm(@NotNull String email, String password, String username, String gender,String birthDay,
			String companyName, String residence, String phoneNumber, String certificate,
					  String certificateNumber, String declaration, String emailAgree, String messageAgree) {
		super();
		this.email = email;
		this.password = password;
		this.username = username;
		this.gender = gender;
		this.birthDay = birthDay;
		this.companyName = companyName;
		this.residence = residence;
		this.phoneNumber = phoneNumber;
		this.certificate = certificate;
		this.certificateNumber = certificateNumber;
		this.declaration = declaration;
		this.emailAgree = emailAgree;
		this.messageAgree = messageAgree;
		
	}
}
	
