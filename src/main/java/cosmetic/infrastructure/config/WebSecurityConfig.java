package cosmetic.infrastructure.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.dao.DaoAuthenticationProvider;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.method.configuration.EnableGlobalMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.config.http.SessionCreationPolicy;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.factory.PasswordEncoderFactories;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.firewall.HttpFirewall;
import org.springframework.security.web.firewall.StrictHttpFirewall;
import org.springframework.web.servlet.HandlerExceptionResolver;

import cosmetic.infrastructure.security.JwtTokenFilterConfigurer;
import cosmetic.infrastructure.security.JwtTokenProvider;
import cosmetic.web.ApiPath;

@Configuration
@EnableWebSecurity
@EnableGlobalMethodSecurity(prePostEnabled = true)
public class WebSecurityConfig extends WebSecurityConfigurerAdapter {
    @Autowired
   private UserDetailsService userDetailsService;

   @Autowired
   private JwtTokenProvider jwtTokenProvider;
   @Autowired
   private HandlerExceptionResolver handlerExceptionResolver;
    
   @Bean
   public PasswordEncoder passwordEncoder() {
      return PasswordEncoderFactories.createDelegatingPasswordEncoder();
   }
   
   @Bean
   public DaoAuthenticationProvider authenticationProvider() {
         DaoAuthenticationProvider authProvider = new DaoAuthenticationProvider();
          
         authProvider.setUserDetailsService(this.userDetailsService);
         authProvider.setPasswordEncoder(passwordEncoder());
      
         return authProvider;
   }
   
   @Override //PassWord Encoding
   public void configure(AuthenticationManagerBuilder builder) throws Exception {
      builder.userDetailsService(this.userDetailsService).passwordEncoder(this.passwordEncoder());
      //new BCryptPasswordEncoder()
   }

   @Bean
     @Override
     public AuthenticationManager authenticationManagerBean() throws Exception {
       return super.authenticationManagerBean();
     }
   
   @Override
   public void configure(HttpSecurity http) throws Exception {

      http.csrf().disable();
      http
         .sessionManagement().sessionCreationPolicy(SessionCreationPolicy.STATELESS)
         .and()
         .formLogin().disable()
         .httpBasic().disable()
         .authorizeRequests()
         // .antMatchers(ApiPath.Keys+"/**").authenticated()
         // .antMatchers(ApiPath.Keys+"/board/**").permitAll()
         // .antMatchers(ApiPath.Keys+"/DustWeather/**").permitAll()
         // .antMatchers(ApiPath.Keys+"/shortWeather/**").permitAll()
         // .antMatchers(ApiPath.Keys+"/LongWeather/**").permitAll()
         // .antMatchers(ApiPath.Keys+"/TourInfo/**").permitAll()
         // .antMatchers(ApiPath.Keys+"/MedicalInfo/**").permitAll()

         // .antMatchers("/user/**").authenticated()
         // .antMatchers("/admin/**").access("hasRole('ROLE_ADMIN') or
         // hasRole('ROLE_USER')")
         // .antMatchers("/admin/**").access("hasRole('ROLE_ADMIN') and
         // hasRole('ROLE_USER')")
         // .antMatchers("/admin/**").access("hasRole('ROLE_ADMIN')")
         .anyRequest().permitAll()
      ;
      
       //http.authenticationProvider(authenticationProvider());
       // Add a filter to validate the tokens with every request
       http.apply(new JwtTokenFilterConfigurer(this.handlerExceptionResolver, this.jwtTokenProvider));
   }

   public void configure_(HttpSecurity http) throws Exception {
      http.cors().and().csrf().disable();
      http.headers().httpStrictTransportSecurity();
      http.sessionManagement().sessionCreationPolicy(SessionCreationPolicy.STATELESS);
      http.authorizeRequests()
         .antMatchers(ApiPath.Keys+"/security/test").permitAll()
         .antMatchers(ApiPath.Keys+"/security/password").permitAll()
         .antMatchers(ApiPath.Keys+"/security/signin").permitAll()
         .antMatchers(ApiPath.Keys+"/security/signup").permitAll()
              .antMatchers(ApiPath.Keys+"/security/signout").permitAll()
         .antMatchers(ApiPath.Keys+"/security/password/*").permitAll()
         .antMatchers(ApiPath.Keys+"/security/authenticate").permitAll()
         .antMatchers(ApiPath.Keys+"/user/checkOverlapEmail").permitAll()
              .antMatchers(ApiPath.Keys+"/user/mailConfirm").permitAll()
              .antMatchers(ApiPath.Keys+"/user/findUserId").permitAll()
              .antMatchers(ApiPath.Keys+"/user/findUserPassword").permitAll()
              .antMatchers(ApiPath.Keys+"/user/findUserId").permitAll()
              .antMatchers(ApiPath.Keys+"/user/updatePassword").permitAll()
              .antMatchers(ApiPath.Keys+"/user/getUserByEmail").permitAll()
              .antMatchers(ApiPath.Keys+"/user/updateUserInfo").permitAll()
              .antMatchers(ApiPath.Keys+"/user/withdrawal").permitAll()
         .antMatchers(ApiPath.Keys+"/user/profile/").permitAll()
         .antMatchers(ApiPath.Keys+"/skin-data/**").permitAll() 
         .antMatchers("/join/**").permitAll()
         .antMatchers("/login").permitAll()
              .antMatchers("/logout").permitAll()
              .antMatchers("/signout").permitAll()
         .antMatchers("/cosmetic/**").permitAll()
         .antMatchers("/business/**").permitAll()
         .antMatchers("/performance/**").permitAll()
         .antMatchers("/solution/**").permitAll()
         .antMatchers("/useinfo/**").permitAll()
         .antMatchers("/beautytech/**").permitAll()
         .antMatchers("/service/**").permitAll()
         .antMatchers("/smartfactory/**").permitAll()
         .antMatchers("/community/**").permitAll()
		   .antMatchers(ApiPath.Keys+"/board/**").permitAll()
         .antMatchers(ApiPath.Keys+"/DustWeather/**").permitAll()
         .antMatchers(ApiPath.Keys+"/shortWeather/**").permitAll()
         .antMatchers(ApiPath.Keys+"/LongWeather/**").permitAll()
         .antMatchers(ApiPath.Keys+"/TourInfo/**").permitAll()
         .antMatchers(ApiPath.Keys+"/MedicalInfo/**").permitAll()

         //.antMatchers("/**").permitAll()
         //.antMatchers("/resources/**").permitAll()
         .anyRequest().authenticated()
         .and()
         .csrf().disable();  //취약점 disable 추가 
      
       //http.authenticationProvider(authenticationProvider());
       // Add a filter to validate the tokens with every request
       http.apply(new JwtTokenFilterConfigurer(this.handlerExceptionResolver, this.jwtTokenProvider));
   }

   @Bean
   public HttpFirewall allowUrlEncodedSlashHttpFirewall() {
      StrictHttpFirewall firewall = new StrictHttpFirewall();
      firewall.setAllowUrlEncodedSlash(true);    
      return firewall;
   }
   
   @Override
   public void configure(WebSecurity web) {
      web.httpFirewall(allowUrlEncodedSlashHttpFirewall());
       web.ignoring().antMatchers(
             "/resources/**",
            "/",
            "/login",
            ApiPath.Keys + "/refresh/**",
            "/logout",
             "/js/**", 
             "/images/**", 
             "/actuator/**",  
            "/instances/**", 
            "/webjars/**", 
             "/v2/api-docs", 
            "/swagger-ui/**",
             "/swagger-ui.html", 
             "/swagger-resources/**");
       
   }
}