package com.kosmo.spacecloud.web.login;

import java.io.File;
import java.io.IOException;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
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
		
		//회원 아이디(키값), 이름, 닉네임, 프로필 이미지 경로, 이메일주소는 세션에 박아둘게요
		session.setAttribute("USER_ID", jsonObject_tail.get("id").toString());
		session.setAttribute("USER_NAME", jsonObject_tail.get("name").toString());
		session.setAttribute("USER_NICNAME", jsonObject_tail.get("nickname").toString());
		session.setAttribute("USER_PROFILE", jsonObject_tail.get("profile_image").toString());
		session.setAttribute("USER_EMAIL", jsonObject_tail.get("email").toString());
		//나중에 전화번호도 박아둬야함!!
		
		//업로드폴더 경로 찾는 테스트
		//System.out.println(session.getServletContext().getRealPath("/Upload/HostImg"));
		
		return new ModelAndView("/scmain/SCMain", "result", jsonObject_tail);
    }

    @RequestMapping("/logout.do")
    public String logout(HttpSession session) {
    	
    	session.invalidate();

        return "redirect:/spacecloud.do";
    }
    
    @RequestMapping("/SCPartnerMain.do")
    public String partnerPageMove(HttpSession session, HttpServletRequest req) {
    	
    	//기존 호스트멤버인지 아닌지 판단, 아니라면 등록시켜야하고 맞다면 호스트 서비스 이용시킴
    	if(memberService.isHost(session.getAttribute("USER_ID").toString())) {
    		System.out.println("이사람은 호스트가 맞아요");
    		
    		//파일이 저장된 서버의 물리적 경로 얻기]
			String hostImgFile =req.getSession().getServletContext().getRealPath("/Upload/HostImg");
			//USER_HOST_IMG 테이블에 담궈두고 있는 파일명 덧붙이기
			hostImgFile += "/"+memberService.getHostImg(session.getAttribute("USER_ID").toString());
			
			//호스트이미지 세션에 박아두기
			session.setAttribute("USER_PROFILE", hostImgFile);
			
			//session.setAttribute("USER_PROFILE", "");
    		return "scpartner/SCPartnerMain";
    		
    	}
    	else {
    		System.out.println("이사람은 호스트가 아니야");
    		
    		//호스트 등록페이지로 이동시켜
    		return "scpartner/member/IntoTheHost";
    	}
        
    }
    
    @RequestMapping("/HostImg/Upload.do")
    public String regi_host(MultipartHttpServletRequest mhsr, HttpSession session) throws Exception{
    	
    	//호스트 등록안된 유저만 처리한다.
    	if(!memberService.isHost(session.getAttribute("USER_ID").toString())) {
		    	MemberDTO dto = new MemberDTO();
		    	dto.setId(session.getAttribute("USER_ID").toString());
		    	dto.setH_nickname(mhsr.getParameter("h_nickname"));
		    	dto.setIntroduce(mhsr.getParameter("introduce"));
		    	
		    	if("Y".equals(mhsr.getParameter("h_alarm_sms"))) {
		    		dto.setH_alarm_sms(mhsr.getParameter("h_alarm_sms"));
		    	}
		    	else {
		    		dto.setH_alarm_sms("N");
		    	}
		    	if("Y".equals(mhsr.getParameter("h_alarm_mail"))) {
		    		dto.setH_alarm_mail(mhsr.getParameter("h_alarm_mail"));
		    	}
		    	else {
		    		dto.setH_alarm_mail("N");
		    	}
		    	memberService.insertHost(dto);
	    	
	    	
			//1]서버의 물리적 경로 얻기
	    	String phisicalPath=mhsr.getSession().getServletContext().getRealPath("/Upload/HostImg");
	    	System.out.println( "서버의 물리적 경로: "+phisicalPath);
			//1-1]MultipartHttpServletRequest객체의 getFile("파라미터명")메소드로
			//    MultipartFile객체 얻기
			MultipartFile upload= mhsr.getFile("hostImg");
			//2]File객체 생성
			////2-1] 파일 중복시 이름 변경
			//String newFileName=FileUpDownUtils.getNewFileName(phisicalPath, upload.getOriginalFilename());
			
			//유저ID가 곧 파일명 (ex. IMG38502203.jpg)
			//.으로 나눌려면 이렇게해야해... 안해주면 .을 정규식문자로 인식하니깐
			System.out.println(upload.getOriginalFilename());
			String[] tempStrings = upload.getOriginalFilename().split("\\.");
			
			File file = new File(phisicalPath+File.separator+"IMG"+session.getAttribute("USER_ID")+"."+tempStrings[tempStrings.length-1]);		
			
			//3]업로드 처리
			upload.transferTo(file);
			dto.setImg(upload.getOriginalFilename());
			memberService.insertHostImg(dto);
			
			//4]리퀘스트 영역에 데이타 저장
			mhsr.setAttribute("writer", mhsr.getParameter("writer"));
			mhsr.setAttribute("title", mhsr.getParameter("title"));
			//파일과 관련된 정보 저장
			mhsr.setAttribute("original",upload.getOriginalFilename());
			mhsr.setAttribute("size",(int)Math.ceil(upload.getSize()/1024.0));
			mhsr.setAttribute("type",upload.getContentType());
			//파일 오리지날 이름 (ex. picture.jpg)
			mhsr.setAttribute("real","IMG"+session.getAttribute("USER_ID")+"."+tempStrings[tempStrings.length-1]);

    	}
    	
    	return "redirect:/SCPartnerMain.do";
    }
    
}