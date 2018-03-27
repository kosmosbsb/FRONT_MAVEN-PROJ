package com.kosmo.spacecloud.web.login;

import java.io.IOException;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.github.scribejava.core.model.OAuth2AccessToken;
import com.kosmo.spacecloud.impl.login.MemberServiceImpl;
import com.kosmo.spacecloud.service.login.MemberDTO;
import com.kosmo.spacecloud.service.login.NaverLoginBO;
 
@Controller
public class NaverLoginController {
 
	@Resource(name="memberService")
	private MemberServiceImpl memberService;
	
	/* NaverLoginBO */
	private NaverLoginBO naverLoginBO;
	
	/* NaverLoginBO */
	@Autowired
	private void setNaverLoginBO(NaverLoginBO naverLoginBO){
		this.naverLoginBO = naverLoginBO;
	}
	
    @RequestMapping("/login.do")
    public String login(HttpSession session) {
        //String message = "Simple Login Page";
        //return new ModelAndView("login", "message", message);
    
    	/* 네아로 인증 URL을 생성하기 위하여 getAuthorizationUrl을 호출 */
        String naverAuthUrl = naverLoginBO.getAuthorizationUrl(session);
        
        
        /* 생성한 인증 URL로 이동해버리기!!!  */
        return "redirect:"+naverAuthUrl;
    }
 
    @RequestMapping("/callback.do")
    public ModelAndView callback(@RequestParam String code, @RequestParam String state, HttpSession session) throws IOException{
        //String message = "Simple Callback Page";
        //return new ModelAndView("callback", "message", message);
    	
    	/* 네아로 인증이 성공적으로 완료되면 code 파라미터가 전달되며 이를 통해 access token을 발급 */
    	/* oauth_state 를 key로 세션에 박힘(로그인 상태 유지)(값은 d6179618-90ea-4023-9f75-092e502f1b26 이런 형태)*/
		OAuth2AccessToken oauthToken = naverLoginBO.getAccessToken(session, code, state);
		String apiResult = naverLoginBO.getUserProfile(oauthToken);
		
		/*기존멤버 확인용 dao*/
		MemberDTO dto = new MemberDTO();
		
		JSONParser jsonParser = new JSONParser();
		JSONObject jsonObject_head=null;
		JSONObject jsonObject_tail=null;
		try {
			jsonObject_head = (JSONObject)jsonParser.parse(apiResult);
			jsonObject_tail = (JSONObject)jsonParser.parse(jsonObject_head.get("response").toString());
		} catch (ParseException e) {System.out.println("JSON 파싱 오류!!!");}
		
		/* 기존 멤버가 아니라면 회원정보 INSERT */
		if(!memberService.isMember(jsonObject_tail.get("id").toString())) {
			dto.setId(jsonObject_tail.get("id").toString());
			dto.setName(jsonObject_tail.get("name").toString());
			dto.setN_nickname(jsonObject_tail.get("nickname").toString());
			dto.setImg(jsonObject_tail.get("profile_image").toString());
			dto.setMail(jsonObject_tail.get("email").toString());
			dto.setGender(jsonObject_tail.get("gender").toString());
			dto.setAge(jsonObject_tail.get("age").toString());
			memberService.insert(dto);
		}
		
		//회원 이름, 닉네임, 프로필 이미지 경로, 이메일주소는 세션에 박아둘게요
		session.setAttribute("USER_NAME", jsonObject_tail.get("name").toString());
		session.setAttribute("USER_NICNAME", jsonObject_tail.get("nickname").toString());
		session.setAttribute("USER_PROFILE", jsonObject_tail.get("profile_image").toString());
		session.setAttribute("USER_EMAIL", jsonObject_tail.get("email").toString());
		//나중에 전화번호도 박아둬야함!!
		
		return new ModelAndView("/scmain/SCMain", "result", jsonObject_tail);
    }

    @RequestMapping("/logout.do")
    public String logout(HttpSession session) {
    	
    	session.invalidate();

        return "redirect:/spacecloud.do";
    }
    
}