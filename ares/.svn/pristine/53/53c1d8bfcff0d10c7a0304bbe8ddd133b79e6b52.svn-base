package org.ares.controller;

import java.util.HashMap;

import org.ares.entity.Register;
import org.ares.service.IRegisterServise;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/register")
public class RegisterController {
	@Autowired
	IRegisterServise registerServiceImpl;
	
	@RequestMapping("/insert")
	public String insert(String username, String psw1, String email, String nickname, String sex,
			String tel, String qq) {
		Register register=new Register();
		register.setCms_user_uname(username);
		register.setCms_user_pwd(psw1);
		register.setCms_user_email(email);
		register.setCms_user_nickname(nickname);
		register.setCms_user_sex(sex);
		register.setCms_user_tel(tel);
		register.setCms_user_qq(qq);
		registerServiceImpl.insertRegister(register);
		return "redirect:/view/news/login";
		
		
	}
	@ResponseBody
	public HashMap selectRegisteryz(String username){
		HashMap map=registerServiceImpl.selectRegister(username);
		HashMap un = null;
		if(map==null){
			un.put("a", "1");
		}else{
			un.put("a", "2");
		}
		
		return un;
		
	}
	
}
