package org.ares.controller;


import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.ares.entity.Menu;
import org.ares.mapper.IEmpMapper;
import org.ares.service.IEmpService;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;


import org.ares.entity.Menu;
import org.ares.mapper.IEmpMapper;
import org.ares.service.IEmpService;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;


/**
 * 专门用来重定向页面的
 * @author Lanqiao08
 *
 */


@Controller
public class ViewController {
	@Autowired
	private IEmpService  empService;
	
	@RequestMapping("/view/{url}/{ftl}")

	public String forward(@PathVariable("ftl") String view,@PathVariable("url") String url,Model model,String type,String frameurl,HttpSession session){
		if("lmgl".equals(type)||"wzgl".equals(type)){
		List list = empService.select();
		model.addAttribute("frameurl", frameurl);
		session.setAttribute("list", list);
		}
		model.addAttribute("frameurl", frameurl);
		return url+"/"+view;
	}
	
	@RequestMapping("/view/{ftl}")
	public String forwards(@PathVariable("ftl") String view,Model model,String type,String frameurl,HttpSession session){
		return view;
	}
	
	

	public String forward(@PathVariable("ftl") String view,@PathVariable("url") String url,Model model,String type,String frameurl){
		if("lmgl".equals(type)||"wzgl".equals(type)){
		List list = empService.select();
			
		model.addAttribute("frameurl", frameurl);
		model.addAttribute("list", list);
		
		}
		model.addAttribute("frameurl", frameurl);
		return url+"/"+view;
	}
	@RequestMapping("/inc/{url}/{ftl}")
	public String forwardInc(@PathVariable("ftl") String view,@PathVariable("url") String url){
	
		return url+"/inc/"+view;
	}
	
	
	
	
}
