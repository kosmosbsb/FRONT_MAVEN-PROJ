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
}
