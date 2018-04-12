package com.kosmo.spacecloud.web.cjh;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kosmo.spacecloud.impl.cjh.CjhTestServiceImpl;
import com.kosmo.spacecloud.service.cjh.CjhDTO;

@Controller
public class CjhController {
	
	@Resource(name="cjhService")
	private CjhTestServiceImpl service;

	@RequestMapping("/CJH/ControllerTest.do")
	public String controllerTestCJH(Model model,HttpSession session,HttpServletRequest request) throws Exception{
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
		String space_type= request.getParameter("type");
		String precaution= request.getParameter("precaution");
		String oper_time = request.getParameter("opertime1") +","+request.getParameter("opertime2"); 
		String regularly_close= request.getParameter("regularlyclose");
		String tagOutputName = request.getParameter("tagoutputName");
		String facilities = "#"+request.getParameter("facilParam").replaceAll("\r\n", "#");
		
		CjhDTO dto = new CjhDTO();
		dto.setSpace_name(space_name);
		dto.setSpace_type(spaceResult3);
		dto.setIntro_main(intro_main);
		dto.setIntro_detail(intro_detail);
		dto.setImg_main("https://media.immediate.co.uk/volatile/sites/3/2017/11/imagenotavailable1-39de324.png?quality=90&resize=620,413");
		dto.setSpace_tag(tagOutputName);
		dto.setFacilities(facilities);
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
		dto.setSpace_type(space_type);
		dto.setPrecaution(precaution);
		dto.setOper_time(oper_time);
		dto.setRegularly_close(regularly_close);
		
		return "/scmain/space/Template";
	}
	
	
	@RequestMapping("/Normal/spaceview.do")
	   public String spaceView(Model model, HttpServletRequest req) throws Exception{
	      String sn = req.getParameter("sn");
	      //System.out.println(sn);
	      //System.out.println("공간뷰 컨트롤러로 들어옴.");
	      List<CjhDTO> list = service.selectListsp(sn);
	      List<CjhDTO> list2 = service.selectListhost(sn);
	      List<CjhDTO> list3 = service.selectListres(sn);
	      
	      for(CjhDTO dto:list) {
	         req.setAttribute("Hname", dto.getImg_main());
	         //System.out.println(dto.getImg_main());
	            if(dto.getImg_main().contains("#")) {
	               String[] imgs = dto.getImg_main().split("#");
	               for(int i=0;i<=imgs.length-1;i++) {
	                  //System.out.println(imgs[i]);
	                  req.setAttribute("img"+i, imgs[i]);
	               }
	            }else {
	               req.setAttribute("img0", dto.getImg_main());
	               //System.out.println(dto.getImg_main());
	            }
	      }
	      model.addAttribute("spaceInfo",list);
	      model.addAttribute("spaceHostInfo",list2);
	      model.addAttribute("spaceResInfo",list3);
	      
	      return "/scmain/space/psy/SpaceView";
	   }
	
}
