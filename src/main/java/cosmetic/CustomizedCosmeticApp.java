package cosmetic;

import org.mybatis.spring.boot.autoconfigure.MybatisAutoConfiguration;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.web.servlet.MultipartAutoConfiguration;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;


//WebappBoardApplication.java
@SpringBootApplication(exclude={MybatisAutoConfiguration.class,MultipartAutoConfiguration.class})
public class CustomizedCosmeticApp extends SpringBootServletInitializer {
	
	//배포를 위해서 설정
	@Override
	protected SpringApplicationBuilder configure(SpringApplicationBuilder application) {
		return application.sources(CustomizedCosmeticApp.class);
	}
	
	public static void main(String[] args) {
		SpringApplication.run(CustomizedCosmeticApp.class, args);
		
	}	
}
