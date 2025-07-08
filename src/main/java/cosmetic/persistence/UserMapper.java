package cosmetic.persistence;

import cosmetic.domain.RoleType;
import cosmetic.domain.User;
import cosmetic.domain.form.SignUpForm;
import cosmetic.domain.UserFile;
import cosmetic.domain.form.UserForm;
import cosmetic.file.UploadFile;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface UserMapper {

	List<User> selectUsers();
	User selectUserByUsername(String username);
	List<User> selectUsersByRoleType(RoleType roleType);
	User selectUserByEmail(String email);
	User selectLoginInfoByEmail(String email);

	User selectUserByEmailAndName(@Param("username")String username, @Param("email") String email);
	int insertUser(User user);
	User selectUserById(int id);
	int updateUser(UserForm userForm);
	int updatePwd(User user);
	int updatePwdRetryCnt(String username);
	int updatePasswordByEmail(@Param("password")String password, @Param("email") String email);

	int updateUserInfo(UserForm userForm);

	int deleteUserByEmail(String email);

	int insertUserFile(UserFile userFile);

	UserFile selectUserFileById(@Param("id") long id);
	UserFile selectUserFileByUserIdnType(@Param("userId") long userId, @Param("type") String type);
	UserFile selectUserFileByUserIdnType(@Param("userId") long userId, @Param("type") String type,@Param("refId") long refId);

}