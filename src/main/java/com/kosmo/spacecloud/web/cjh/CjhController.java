package com.kosmo.spacecloud.web.cjh;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

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
	public String controllerTestCJH(Model model) throws Exception{
		//System.out.println("CJH 컨트롤러 테스트 요청으로 들어옴.");
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
