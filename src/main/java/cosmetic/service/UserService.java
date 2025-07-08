package cosmetic.service;

import java.io.FileInputStream;
import java.util.*;

import cosmetic.file.FileStore;
import org.apache.commons.lang3.StringUtils;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.CellType;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.util.IOUtils;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

import cosmetic.domain.RoleType;
import cosmetic.domain.User;
import cosmetic.domain.UserFile;
import cosmetic.domain.form.UserForm;
import cosmetic.file.UploadFile;
import cosmetic.persistence.UserMapper;
import lombok.RequiredArgsConstructor;

//@AllArgsConstructor
@RequiredArgsConstructor
@Service
public class UserService {

	private final Logger LOGGER = LoggerFactory.getLogger(getClass());

	@Value("${board.file-upload-dir}")
	private String FILE_UPLOAD_DIR;

	private final FileStore fileStore;

	@Value("${board.file-upload-max-size}")
	private long FILE_UPLOAD_MAX_SIZE;
	
	private final UserMapper userMapper;
	
    public List<User> findUsers() {
	        return userMapper.selectUsers();
	    }
	public List<User> findUsersByRoleType(RoleType roleType) {
		return userMapper.selectUsersByRoleType(roleType);
	}

	public User findByUsername(String username) {
		User user = this.userMapper.selectUserByUsername(username);
		return user;
	}
	
	public User findByEmail(String email) {
		User user = this.userMapper.selectUserByEmail(email);
		return user;
	}
	public User findLoginInfoByEmail(String email) {
		User user = this.userMapper.selectUserByEmail(email);
		return user;
	}


	public User findByEmailAndName(String name, String email) {
		User user = this.userMapper.selectUserByEmailAndName(name, email);
		return user;
	}
	
	public User findById(int id) {
		User user = this.userMapper.selectUserById(id);
		return user;
	}

	public int save(User user) {
    	return userMapper.insertUser(user);
	}
	
	public int save (UserForm userForm) {
		return userMapper.updateUser(userForm);
	}

	public int saveUserInfo (UserForm userForm) {
		return userMapper.updateUserInfo(userForm);
	}
	
	public int update (User user) {
		return userMapper.updatePwd(user);
	}
	
	public int save (String username) {
		return userMapper.updatePwdRetryCnt(username);
	}
	
    public int signup(User user) {
		return userMapper.insertUser(user);
	}

	public int updatePasswordByEmail (String password, String email) {
		return userMapper.updatePasswordByEmail(password, email);
	}  //

	public int deleteUserByEmail(String email) {
		return userMapper.deleteUserByEmail(email);
	}

	public int insertUserFile(UserFile userFile) {
		return userMapper.insertUserFile(userFile);
	}

	public UserFile findUserFileByIdnType(long userId, UploadFile.type type) {
		UserFile userFile = this.userMapper.selectUserFileByUserIdnType(userId,type.getId());
		return userFile;
	}

	public UserFile findUserFileByIdnType(long userId, UploadFile.type type,long refId) {
		UserFile userFile = this.userMapper.selectUserFileByUserIdnType(userId,type.getId(),refId);
		return userFile;
	}

	public UserFile findUserFileById(long id) {
		UserFile userFile = this.userMapper.selectUserFileById(id);
		return userFile;
	}
}

   
