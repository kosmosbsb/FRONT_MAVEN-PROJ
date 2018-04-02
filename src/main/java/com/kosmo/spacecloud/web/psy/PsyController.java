package com.kosmo.spacecloud.web.psy;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

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
	public String reserveInfoList(Model model)throws Exception{
		
		List<PsyTestDTO> list=service.reserveView();
		List<PsyTestDTO> list2=service.reserveViewReserver();
		List<PsyTestDTO> list3=service.reserveViewRefund();
		List<PsyTestDTO> list4=service.reserveViewSpace();
		List<PsyTestDTO> list5=service.reserveViewMoney();
		
		model.addAttribute("psyList",list);
		model.addAttribute("reserverList",list2);
		model.addAttribute("refundList",list3);
		model.addAttribute("spaceList",list4);
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
	
}
