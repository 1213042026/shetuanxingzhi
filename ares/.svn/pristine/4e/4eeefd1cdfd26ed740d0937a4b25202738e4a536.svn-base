package org.ares.controller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.log4j.lf5.viewer.LogFactor5InputDialog;
import org.ares.entity.Column;
import org.ares.entity.User;
import org.ares.service.ILoginServise;
import org.ares.service.impl.LoginServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/login")
public class LoginController {
	@Autowired
	ILoginServise loginServiceImpl;
	
	@RequestMapping("/selectLoginnews")
	public String selectLoginnews(String username,String password,HttpSession session,String checkcode,Model model){
		String forward="/news/login";
		//判断验证码
		String session_code=(String)session.getAttribute("checkcode");
		if(session_code.equals(checkcode)){
			
			HashMap map=loginServiceImpl.selectLoginnews(username, password);
			if(map==null){
				model.addAttribute("loginError","用户名或密码错误");
			}else{
				session.setAttribute("loginUser", map);
				forward="redirect:/view/news/aresindex";
			}
		}else{
			model.addAttribute("loginError", "验证码错误");
		}
		return forward ;
	}
	
	
	@RequestMapping("/selectLogincms")
	public String selectLogincms (User user,String h_username,String h_password,HttpSession session,String checkcode,Model model){
		String forward="/loginh";
		String session_code=(String)session.getAttribute("checkcode");
		if(session_code.equals(checkcode)){
			HashMap map=loginServiceImpl.selectLogincms(h_username, h_password);
			if(map==null){
				
				model.addAttribute("loginError", "登录失败");
			}else{
				loginServiceImpl.insertRecord(user);
				session.setAttribute("loginUser", map);
				model.addAttribute("loginUser", map);
				forward="redirect:/view/cms/main?frameurl=/ares/view/cms/worktop";
			}
		}else{
			model.addAttribute("loginError", "验证码错误");
		}
		return forward;
	}
	
	@RequestMapping("/logincmsout")
	public String logincmsout(HttpSession session){
		session.invalidate();
		return "/loginh";
		
	}
	
}
