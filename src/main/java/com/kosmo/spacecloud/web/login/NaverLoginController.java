package com.kosmo.spacecloud.web.login;

import java.io.IOException;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.github.scribejava.core.model.OAuth2AccessToken;
import com.kosmo.spacecloud.service.login.NaverLoginBO;
 
@Controller
public class NaverLoginController {
 
	/* NaverLoginBO */
	private NaverLoginBO naverLoginBO;
	
	/* NaverLoginBO */
	@Autowired
	private void setNaverLoginBO(NaverLoginBO naverLoginBO){
		this.naverLoginBO = naverLoginBO;
	}
	
    @RequestMapping("/login")
    public ModelAndView login(HttpSession session) {
        //String message = "Simple Login Page";
        //return new ModelAndView("login", "message", message);
    
    	/* 네아로 인증 URL을 생성하기 위하여 getAuthorizationUrl을 호출 */
        String naverAuthUrl = naverLoginBO.getAuthorizationUrl(session);
        System.out.println("ㅎㅇㅎㅇ");
        /* 생성한 인증 URL을 View로 전달 */
        return new ModelAndView("/scmain/SCMain", "url", naverAuthUrl);
    }
 
    @RequestMapping("/callback")
    public ModelAndView callback(@RequestParam String code, @RequestParam String state, HttpSession session) throws IOException{
        //String message = "Simple Callback Page";
        //return new ModelAndView("callback", "message", message);
    	
    	/* 네아로 인증이 성공적으로 완료되면 code 파라미터가 전달되며 이를 통해 access token을 발급 */
		OAuth2AccessToken oauthToken = naverLoginBO.getAccessToken(session, code, state);
    	
		String apiResult = naverLoginBO.getUserProfile(oauthToken);

		//session.setAttribute("USER_ID", ); //튜토리얼을 더 보자...
		
		return new ModelAndView("/scmain/SCMain", "result", apiResult);
    	
    }

}