package com.kosmo.spacecloud.web.cjh;

import java.io.File;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.kosmo.spacecloud.impl.cjh.CjhTestServiceImpl;
import com.kosmo.spacecloud.service.cjh.CjhDTO;
import com.kosmo.spacecloud.service.login.MemberDTO;

@Controller
public class CjhController {
	
	@Resource(name="cjhService")
	private CjhTestServiceImpl service;

	@RequestMapping("/CJH/ControllerTest.do")
	public String controllerTestCJH(Model model,HttpSession session,MultipartHttpServletRequest request) throws Exception{
		System.out.println("CJH 컨트롤러 테스트 요청으로 들어옴.");
		
		String space1= request.getParameter("space1")==null? null:request.getParameter("space1");
		String space2= request.getParameter("space2")==null? null:request.getParameter("space2");
		String space3= request.getParameter("space3")==null? null:request.getParameter("space3");
		String space4= request.getParameter("space4")==null? null:request.getParameter("space4");
		String space5= request.getParameter("space5")==null? null:request.getParameter("space5");
		String space6= request.getParameter("space6")==null? null:request.getParameter("space6");
		String space7= request.getParameter("space7")==null? null:request.getParameter("space7");
		String space8= request.getParameter("space8")==null? null:request.getParameter("space8");
		String space9= request.getParameter("space9")==null? null:request.getParameter("space9");
		String space10= request.getParameter("space10")==null? null:request.getParameter("space10");
		String space11= request.getParameter("space11")==null? null:request.getParameter("space11");
		
		String spaceResult = String.join(",", space1,space2,space3,space4,space5,space6,space7,space8,space9,space10,space11);
		String spaceResult2= spaceResult.replace(",null", "");
		String spaceResult3= spaceResult2.replace("null,", "");
		
		String[] value = request.getParameterValues("check");
		String checks = "";
		for(String val : value){
			checks += val += ",";
		}
		if(checks.charAt(checks.length()-1) == ','){
			checks = checks.substring(0,checks.length()-1);
		};
		
		
		String space_name= request.getParameter("space_name");
		String intro_main= request.getParameter("intro_main");
		String intro_detail= request.getParameter("intro_detail");
		String spcTag= request.getParameter("spcTag");
		String fileName1= request.getParameter("fileName1");
		String address = request.getParameter("addr") + " " + request.getParameter("addrdetail");
		
		String sigungu= request.getParameter("sigungu");
		
		
		String phone = request.getParameter("mobile1") +request.getParameter("mobile2") +request.getParameter("mobile3");  
		
		String mail= request.getParameter("email") + "@" + request.getParameter("domain");
		
		
		String min_day= request.getParameter("minday");
		String max_day= request.getParameter("maxday");
		String min_person= request.getParameter("minperson");
		String max_person= request.getParameter("maxperson");
		String price_standard= request.getParameter("pricestandard");
		String price_weekday= request.getParameter("priceweekday");
		String precaution= request.getParameter("precaution");
		String time_or_day = request.getParameter("time_or_day");
		String oper_time = request.getParameter("opertime1") +","+request.getParameter("opertime2");
		//String regularly_close= request.getParameter("regularlyclose");
		String tagOutputName = request.getParameter("tagoutputName");
		String facilities = "#"+request.getParameter("facilParam").replaceAll("\r\n", "#");
		
		System.out.println(mail);
		System.out.println(min_day);
		System.out.println(max_day);
		System.out.println(min_person);
		System.out.println(max_person);
		System.out.println(price_standard);
		System.out.println(price_weekday);
		System.out.println(precaution);
		System.out.println(oper_time);
		System.out.println(checks);
		System.out.println(tagOutputName);
		System.out.println(facilities);
		System.out.println("접속하고있는 유저 아이디"+session.getAttribute("USER_ID"));
		
		CjhDTO dto = new CjhDTO();
		dto.setSpace_name(space_name);
		dto.setSpace_type(spaceResult3);
		dto.setIntro_main(intro_main);
		dto.setIntro_detail(intro_detail);
		dto.setImg_main("https://media.immediate.co.uk/volatile/sites/3/2017/11/imagenotavailable1-39de324.png?quality=90&resize=620,413");
		dto.setSpace_tag(tagOutputName);
		dto.setFacilities(facilities);
		dto.setHeart(4);
		dto.setAddress(address);
		dto.setSigungu(sigungu);
		dto.setMail(mail);
		dto.setPhone(phone);
		dto.setId(session.getAttribute("USER_ID").toString());
		
		dto.setMin_day(min_day);
		dto.setMax_day(max_day);
		dto.setMax_person(max_person);
		dto.setMin_person(min_person);
		dto.setPrice_standard(price_standard);
		dto.setPrice_weekday(price_weekday);
		dto.setPrecaution(precaution);
		dto.setTime_or_day(time_or_day);
		dto.setOper_time(oper_time);
		dto.setRegularly_close(checks);
		
		service.insertSpace(dto);
		service.insertReserveInfo(dto);
		
		CjhDTO dto2 = service.selectRecentSpace();
		
		
		//1]서버의 물리적 경로 얻기
    	String phisicalPath=request.getSession().getServletContext().getRealPath("/Upload/SpaceImg");
    	System.out.println( "서버의 물리적 경로: "+phisicalPath);
		//1-1]MultipartHttpServletRequest객체의 getFile("파라미터명")메소드로
		//    MultipartFile객체 얻기
		MultipartFile upload= request.getFile("input_img");
		
		//2]File객체 생성
		////2-1] 파일 중복시 이름 변경
		//String newFileName=FileUpDownUtils.getNewFileName(phisicalPath, upload.getOriginalFilename());
		
		//유저ID가 곧 파일명 (ex. IMG38502203.jpg)
		
		if(!"".equals(upload.getOriginalFilename())) { //파일이 들어왔을 때면 등록해준다. 
			System.out.println(upload.getOriginalFilename());
			//.으로 나눌려면 이렇게해야해... 안해주면 .을 정규식문자로 인식하니깐
			String[] tempStrings = upload.getOriginalFilename().split("\\.");
			
			File file = new File(phisicalPath+File.separator+"IMG"+dto2.getSpace_no()+"."+tempStrings[tempStrings.length-1]);		
			
			//3]업로드 처리
			upload.transferTo(file);
			//dto.setImg("IMG"+session.getAttribute("USER_ID")+"."+tempStrings[tempStrings.length-1]);
			//memberService.insertHostImg(dto);
			
			Map map = new HashMap();
			map.put("spaceImg", "IMG"+dto2.getSpace_no()+"."+tempStrings[tempStrings.length-1]);
			map.put("space_no", dto2.getSpace_no());
			
			service.updateSpaceImg(map);
			
			
		}
		
		
		
		
		
		return "redirect:/SCPartnerMain.do";
	}
	
	@RequestMapping("/rgst/Register.do")
	public String registerForm() {
		
		
		return "scpartner/rgst/Register";
	}
	
	@RequestMapping("/Normal/spaceview.do")
    public String spaceView(Model model, HttpServletRequest req) throws Exception{
       String sn = req.getParameter("sn");
       //System.out.println(sn);
       //System.out.println("공간뷰 컨트롤러로 들어옴.");
       List<CjhDTO> list = service.selectListsp(sn);
       List<CjhDTO> list2 = service.selectListhost(sn);
       List<CjhDTO> list3 = service.selectListres(sn);
       

       model.addAttribute("img_main",list.get(0).getImg_main());
       
       
       model.addAttribute("spaceInfo",list);
       model.addAttribute("spaceHostInfo",list2);
       model.addAttribute("spaceResInfo",list3);
       
       return "/scmain/space/psy/SpaceView";
    }
	
	
	@RequestMapping("/SpaceImg/Upload.do")
    public String regi_host(MultipartHttpServletRequest mhsr, HttpSession session) throws Exception{
    	/*
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
			
			if(!"".equals(upload.getOriginalFilename())) { //파일이 들어왔을 때면 등록해준다. 
				System.out.println(upload.getOriginalFilename());
				//.으로 나눌려면 이렇게해야해... 안해주면 .을 정규식문자로 인식하니깐
				String[] tempStrings = upload.getOriginalFilename().split("\\.");
				
				File file = new File(phisicalPath+File.separator+"IMG"+session.getAttribute("USER_ID")+"."+tempStrings[tempStrings.length-1]);		
				
				//3]업로드 처리
				upload.transferTo(file);
				dto.setImg("IMG"+session.getAttribute("USER_ID")+"."+tempStrings[tempStrings.length-1]);
				memberService.insertHostImg(dto);
			}
			
			//4]리퀘스트 영역에 데이타 저장
			mhsr.setAttribute("writer", mhsr.getParameter("writer"));
			mhsr.setAttribute("title", mhsr.getParameter("title"));
			//파일과 관련된 정보 저장
			mhsr.setAttribute("original",upload.getOriginalFilename());
			mhsr.setAttribute("size",(int)Math.ceil(upload.getSize()/1024.0));
			mhsr.setAttribute("type",upload.getContentType());
			//파일 오리지날 이름 (ex. picture.jpg)
			//mhsr.setAttribute("real","IMG"+session.getAttribute("USER_ID")+"."+tempStrings[tempStrings.length-1]);

    	}
    */	
    	return "redirect:/SCPartnerMain.do";
    }
	
}
