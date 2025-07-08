package cosmetic.domain;



import io.swagger.annotations.ApiModelProperty;
import lombok.Builder;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;
import org.hibernate.validator.constraints.Range;

import javax.validation.constraints.Email;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Size;


@Setter
@Getter
@ToString
public class User {
   private String name;

   @Size(min = 3, max = 10)
   @Range(message = "Please enter a valid user name")
   private String username;

   private String password;
   private int id;

   @NotBlank
   @Email(message = "Please enter a valid e-mail address")
   private String email;
   private String gender;
   private String companyName;
   private String residence;
   private String zipcode;
   private String address;
   private String detailAddress;
   private int recommandUserId;
   private String phoneNumber;

   private String bizRegNumber;
   private String bizPhoneNumber;

   private String certificate;
   private String certificateNumber;
   private String declaration;
   private RoleType roleType;
   private RoleType regRoleType;
   private String birthDay;
   private String emailAgree;
   private String messageAgree;
   private String createUser;
   private String createDate;
   private String updateUser;
   private String updateDate;
   private String status;
   private boolean enabled;
   private byte[] image;
   private int pwdretryTry;
   
   public User() {
      
   }
   
   @Builder
   public User(String username, String password, int id, String email, String gender, String companyName,
         String residence, String zipcode, String address, String detailAddress, int recommandUserId,
         String phoneNumber, String certificate,String certificateNumber ,String declaration, RoleType roleType, RoleType regRoleType,
         String bizRegNumber, String bizPhoneNumber,
         String birthDay, String emailAgree, String messageAgree, String createUser, String createDate,
         String updateUser, String updateDate, boolean enabled, byte[] image, int pwdretryTry, String status) {
      super();
      this.username = username;
      this.password = password;
      this.id = id;
      this.email = email;
      this.gender = gender;
      this.companyName = companyName;
      this.residence = residence;
      this.zipcode = zipcode;
      this.address = address;
      this.detailAddress = detailAddress;
      this.recommandUserId = recommandUserId;
      this.phoneNumber = phoneNumber;
      this.certificate = certificate;
      this.certificateNumber = certificateNumber;
      this.declaration = declaration;
      this.roleType = roleType;
      this.regRoleType = regRoleType;
      this.bizRegNumber = bizRegNumber;
      this.bizPhoneNumber = bizPhoneNumber;
	  this.birthDay = birthDay;
      this.emailAgree = emailAgree;
      this.messageAgree = messageAgree;
      this.createUser = createUser;
      this.createDate = createDate;
      this.updateUser = updateUser;
      this.updateDate = updateDate;
      this.enabled = enabled;  
      this.image = image;
      this.pwdretryTry = pwdretryTry; 
      this.status = status;
   }
	
}
