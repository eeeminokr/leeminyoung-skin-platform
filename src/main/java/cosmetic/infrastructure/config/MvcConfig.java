package cosmetic.infrastructure.config;


import org.springframework.context.annotation.Configuration;
import org.springframework.core.Ordered;

import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.ViewControllerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
//@EnableWebMvc
public class MvcConfig implements WebMvcConfigurer {

	private  static final String[] CLASSPATH_RESOURCE_LOCATIONS = {"classpath:/static","classpath:/public",
			"classpath:/static","classpath:/","classpath:/resources"};
	
		@Override
		public void addViewControllers(ViewControllerRegistry registry) {
			registry.addViewController("/api").setViewName("main");
			registry.addViewController("/main").setViewName("main");
			
			
			registry.setOrder(Ordered.HIGHEST_PRECEDENCE);
			
			
		}
		
		//@Override
		// public void addResourceHandler(ResourceHandlerRegistry registry) {
			
		// 	registry.addResourceHandler("/**").addResourceLocations(CLASSPATH_RESOURCE_LOCATIONS);
		// }

		// SSL보안인증
	    // @Override
		// public void addResourceHandlers(ResourceHandlerRegistry registry) {
		// 	registry.addResourceHandler("/.well-known/pki-validation/**").addResourceLocations("classPath:/static/");
		// }


}  



