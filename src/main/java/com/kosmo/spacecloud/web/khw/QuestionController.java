package com.kosmo.spacecloud.web.khw;

import java.lang.reflect.Method;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.kosmo.spacecloud.khw.QuestionServiceImpl;
import com.kosmo.spacecloud.service.khw.QuestionDTO;

@Controller
public class QuestionController {
	
	@Resource(name="questionService")
	private QuestionServiceImpl service;
	
	@RequestMapping("/Question/Write.do")
	public String write(Model model,HttpServletRequest req, HttpSession session) throws Exception{
		
		QuestionDTO dto = new QuestionDTO();
		dto.setQuestion_type(req.getParameter("question_type"));
		dto.setQuestion_title(req.getParameter("question_title"));
		dto.setQuestion_content(req.getParameter("question_content"));
		dto.setId(session.getAttribute("USER_ID").toString());
		
		service.write(dto);
		System.out.println(req.getHeader("Referer"));
		
		String[] pageReq_do = req.getHeader("Referer").split("/");
		//확인용
		/*
		for(int i = 0 ; i < pageReq_do.length ; i++) {
			System.out.println(pageReq_do[i]);
		}
		*/
		
		System.out.println("이걸??: "+pageReq_do[pageReq_do.length-1]);
		
		//바로 이전에 요청했던 페이지로 이동
		//return "redirect:"+req.getHeader("Referer");
		
		
		//실패...
		//이렇게라도 구분짓자 (url에 토큰 남는거 때문에 아오 진짜) 
		//return "redirect:/"+pageReq_do[pageReq_do.length-1];
		
		return "redirect:/spacecloud.do";
	}
	
	@RequestMapping("/Question/current.do")
	public String selectList(Model model,HttpSession session)throws Exception{
		//System.out.println("map:"+map);
		//System.out.println("id:"+id);
		System.out.println("id:"+session.getAttribute("USER_ID").toString());
		
		List<QuestionDTO> list_all=service.question_List(session.getAttribute("USER_ID").toString());
		List<QuestionDTO> list_Answer=service.answer_List(session.getAttribute("USER_ID").toString());
		
		for(QuestionDTO dto:list_all) 
			System.out.println("list:"+dto.getState());
		
		for(QuestionDTO dto1:list_Answer) 
			System.out.println("list1:"+dto1.getAnswer_date());
		
		model.addAttribute("list_all",list_all);
		model.addAttribute("list_Answer",list_Answer);
		
		
		return "/scmain/current/Question";
	}
	
}
