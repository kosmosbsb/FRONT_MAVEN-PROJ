package com.kosmo.spacecloud.web.psy;

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
import org.springframework.web.bind.annotation.RequestMethod;

import com.kosmo.spacecloud.impl.psh.NoticeServiceImpl;
import com.kosmo.spacecloud.impl.psy.PsyTestDAO;
import com.kosmo.spacecloud.impl.psy.PsyTestServiceImpl;
import com.kosmo.spacecloud.service.psh.NoticeDTO;
import com.kosmo.spacecloud.service.psy.PsyTestDTO;
@Controller
public class PsyController {

	@Resource(name="psytestService")
	private PsyTestServiceImpl service;
	
	@RequestMapping("/NormalReserve/Reserve.do")
	public String list(Model model)throws Exception{
		
		List<PsyTestDTO> list=service.selectList();
		model.addAttribute("psyList",list);
		
		//for(PsyTestDTO dto:list) {
		//	System.out.println(dto.getH_nickname());
		//	System.out.println(dto.getSpace_name());
		//	System.out.println(dto.getImg_main());
		//}
		
		return "/scmain/reserve/Template";
	}
	
	@RequestMapping("/NormalReserve/ReserveView.do")
	public String reserveInfoList(Model model, HttpServletRequest req)throws Exception{
		
		String rn = req.getParameter("rn");
		String sn = req.getParameter("sn");
		//System.out.println(rn);
		//System.out.println(sn);
		
		List<PsyTestDTO> list=service.reserveView(rn);
		List<PsyTestDTO> list2=service.reserveViewReserver(rn);
		List<PsyTestDTO> list3=service.reserveViewRefund(sn);
		List<PsyTestDTO> list4=service.reserveViewSpace(sn);
		List<PsyTestDTO> list5=service.reserveViewMoney(rn);
		
		for(PsyTestDTO dto:list5) {
			System.out.println(dto.getReserve_no());
			System.out.println(dto.getRegidate());
			System.out.println(dto.getCancel_comment());
			System.out.println(dto.getStartdate());
			System.out.println(dto.getEnddate());
			System.out.println(dto.getDiff());
			System.out.println(dto.getReserve_person());
			System.out.println(dto.getRefundprice());
		}
		
		model.addAttribute("psyList",list);
		model.addAttribute("reserverList",list2);
		model.addAttribute("refundList",list3);
		model.addAttribute("spaceList",list4);
		//System.out.println(list5.isEmpty());
		if(!list5.isEmpty())
		model.addAttribute("moneyList",list5);
		
		//for(PsyTestDTO dto:list) {
			//System.out.println(dto.getReserve_no());
			//System.out.println(dto.getRegidate());
			//System.out.println(dto.getSpace_name());
			//System.out.println(dto.getReserve_date());
			//System.out.println(dto.getReserve_person());
			//System.out.println(dto.getAsk());
		//}
		
		return "/scmain/reserve/TemplateOrigin";
	}
	
	@RequestMapping("/NormalReserve/ReserveLoginList.do")
	public String reserveLoginlist(Model model,HttpSession session)throws Exception{
		
		//System.out.println(session.getAttribute("USER_NICNAME"));//사이드메뉴 로긴기능을 통해 세션에서 닉네임 가져오기
		
		//Map map = new HashMap();
		//map.put("nickname",session.getAttribute("USER_NICNAME"));
		String nickname = (String)session.getAttribute("USER_NICNAME_N");
		//System.out.println(nickname);
		List<PsyTestDTO> list=service.reserveLoginlist(nickname);
		model.addAttribute("reserveLoginlist",list);
		
		for(PsyTestDTO dto:list) {
			System.out.println(dto.getH_nickname());
			System.out.println(dto.getSpace_name());
			System.out.println(dto.getImg_main());
			System.out.println(dto.getStatus());
			System.out.println(dto.getRegidate());
		}
		
		return "/scmain/reserve/ReserveLoginList";
	}
	
	@RequestMapping(value="/NormalReserve/ReserveCancel.do", method=RequestMethod.POST)
	public String reserveCancel(PsyTestDTO dto,HttpServletRequest req,HttpSession session)throws Exception{
		dto.setCancel_comment(req.getParameter("comment"));
		dto.setReserve_no(req.getParameter("rn"));
		dto.setReserve_name((String)session.getAttribute("USER_NICNAME_N"));
		service.reserveCancel(dto);
		service.reserveCancelStatUpd(dto);
		//req.getParameter("rn");
		//req.getParameter("sn");
		
		//System.out.println(req.getParameter("price"));
		//System.out.println(req.getParameter("comment"));
		//System.out.println(req.getParameter("rn"));
		//System.out.println(req.getParameter("sn"));
		//req.setAttribute("rn", req.getParameter("rn"));
		//req.setAttribute("sn", req.getParameter("sn"));
		
		//for(PsyTestDTO dto:list) {
		//	System.out.println(dto.getH_nickname());
		//	System.out.println(dto.getSpace_name());
		//	System.out.println(dto.getImg_main());
		//}
		
		return "forward:/NormalReserve/ReserveView.do";
	}
	
	@RequestMapping(value="/NormalReserve/ReserveForm.do", method=RequestMethod.GET)
	public String reserveFormmove(Model model,HttpServletRequest req,HttpSession session)throws Exception{
		
		//System.out.println(req.getParameter("sn"));
		//System.out.println("예약폼 겟방식");
		String nickname = session.getAttribute("USER_NICNAME_N").toString();
		String clickedButtonParam = req.getParameter("sn");
		//System.out.println(nickname);
		List<PsyTestDTO> list=service.reserveTest(nickname);
		//System.out.println(list.size());
		//System.out.println(list.get(1).getReserve_no());
		//System.out.println(list.get(1).getSpace_no());
		//System.out.println("공간 번호는"+clickedButtonParam);
		for(PsyTestDTO dto:list) {
			//System.out.println(dto.getSpace_no());
			//System.out.println(dto.getReserve_no());
			if(dto.getSpace_no().equals(clickedButtonParam) && dto.getStatus().equals("0")) {
				//System.out.println("이미 예약이 되있다.");
				req.setAttribute("alreadyRes", "1");
				return "forward:/NormalReserve/Reserve.do";
			}
		}
		System.out.println("여기로 옴 1");
		List<PsyTestDTO> list2=service.reserveFormType(clickedButtonParam);
		model.addAttribute("reserveFormType",list2);
		System.out.println("여기로 옴 2");
		System.out.println(list2.get(0).getPrice_standard());
		System.out.println(list2.get(0).getTime_or_day());
		System.out.println(list2.get(0).getOper_time());
		System.out.println(list2.get(0).getRegularly_close());
		
		
		return "/scmain/reserve/ReserveForm";
	}
	
	@RequestMapping(value="/NormalReserve/ReserveForm.do", method=RequestMethod.POST)
	public String reserveForminsert(PsyTestDTO dto,HttpServletRequest req,HttpSession session)throws Exception{
		
		//System.out.println("예약폼 포스트방식");
		//System.out.println(req.getParameter("peopleNumber"));
		//System.out.println(req.getParameter("reservePhone"));
		//System.out.println(req.getParameter("reserveEmail"));
		//System.out.println(req.getParameter("reserveComment"));
		//System.out.println(req.getParameter("startDate"));
		//System.out.println(req.getParameter("endDate"));
		//System.out.println(session.getAttribute("USER_NICNAME"));
		//System.out.println(req.getParameter("sn"));
		//System.out.println(req.getParameter("PTpay") == null? "null":req.getParameter("PTpay"));
		//System.out.println(req.getParameter("PDpay") == null? "null":req.getParameter("PDpay"));
		//System.out.println(req.getParameter("STpay") == null? "null":req.getParameter("STpay"));
		//System.out.println(req.getParameter("SDpay") == null? "null":req.getParameter("STpay"));
		dto.setReserve_person(req.getParameter("peopleNumber"));
		dto.setReserve_phone(req.getParameter("reservePhone"));
		dto.setReserve_email(req.getParameter("reserveEmail"));
		dto.setAsk(req.getParameter("reserveComment"));
		dto.setStartdate(req.getParameter("startDate"));
		System.out.println(req.getParameter("startHour")==null? "null":req.getParameter("startHour"));
		if(req.getParameter("startHour")!=null) {
			String hour=req.getParameter("startHour")+","+req.getParameter("endHour");
			//System.out.println(hour);
			dto.setEnddate(hour);
		}
		else{
		dto.setEnddate(req.getParameter("endDate"));
		}
		
		dto.setReserve_name(session.getAttribute("USER_NICNAME_N").toString());
		dto.setSpace_no(req.getParameter("sn"));//totalprice
		if(req.getParameter("PTpay")!=null) {
			dto.setTotalprice(req.getParameter("PTpay"));
		}
		else if(req.getParameter("PDpay")!=null) {
			dto.setTotalprice(req.getParameter("PDpay"));
		}
		else if(req.getParameter("STpay")!=null) {
			dto.setTotalprice(req.getParameter("STpay"));
		}
		else if(req.getParameter("SDpay")!=null) {
			dto.setTotalprice(req.getParameter("SDpay"));
		}
		service.reserveInsert(dto);
		
		return "forward:/NormalReserve/ReserveLoginList.do";
	}
	
}
