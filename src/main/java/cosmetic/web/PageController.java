package cosmetic.web;


import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.GetMapping;


@Controller
public class PageController {
	// private BoardService boardService;
	
	//회원가입 이용약관
	@GetMapping(value = "/old/signUpTerms" )
	public String signUpTerms() {

		return"join/signUpTerms";
	}

	@GetMapping(value = "/old/signup" )
	public String joinTerms(HttpServletRequest response) {
		
		String referer = response.getHeader("Referer");

		if(referer == null){
			return "join/signUpTerms";
		}

		return"join/signUp";
	}
	
	
	@GetMapping(value = "/old/login" )
	public String login(
		@CookieValue(value ="refreshToken", required = false) Cookie cookie,
		HttpServletRequest request) {

		/*
		if(cookie != null){
			return "main";
		}else{
		 	return"login/login";
		}*/
		return"login/login";

	}

//	@GetMapping(value = "/logout" )
//	public String logout(HttpServletRequest request, HttpServletResponse response) {
//
//		Cookie cookie = new Cookie("refreshToken", null);
//		cookie.setMaxAge(0);
//		response.addCookie(cookie);
//
//		return "main";
//	}

	//회원정보수정
	@GetMapping(value = "/join/updateUser" )
	public String updateUser(@CookieValue(value ="refreshToken", required = false) Cookie cookie,
							 HttpServletRequest request) {

		return "join/updateUser";
	}

	//회원정보수정
	@GetMapping(value = "/test" )
	public String test(@CookieValue(value ="refreshToken", required = false) Cookie cookie,
							 HttpServletRequest request) {

		return "pages/test";
	}

}
