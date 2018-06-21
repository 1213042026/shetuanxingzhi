package org.ares.controller;

import java.util.HashMap;
import java.util.List;

import org.ares.service.ITxtServise;
import org.ares.vo.pageModel;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/work")
public class worktopController {
	
	@Autowired
	ITxtServise txtServiceImpl;
	
	@RequestMapping("/Toptennews")
	@ResponseBody
	public List<HashMap> Toptennews(){
		List<HashMap> map=null;
		map=txtServiceImpl.selectToptennews();
		return map;
	}
	@RequestMapping("/Toptenwait")
	@ResponseBody
	public List<HashMap> Toptenwait(){
		List<HashMap> map=null;
		map=txtServiceImpl.selectToptenwait();
		return map;
	}
	
	@RequestMapping("/Top8")
	@ResponseBody
	public List<HashMap> Top8(){
		List<HashMap> map=null;
		map=txtServiceImpl.selectTop8();
		return map;
	}
	
	
	
	@RequestMapping("/selectWait")
	public String selectWait(Model model,pageModel pagemodel){
 		pageModel<HashMap> _pagemodel=null;
 		try {
			_pagemodel = txtServiceImpl.selectwait(pagemodel);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		model.addAttribute("pagemodelcx", _pagemodel);
		return "/cms/waitTxt";
	}
	@RequestMapping("/log")
	@ResponseBody
	public HashMap log(){
		HashMap map=null;
		map=txtServiceImpl.selectLogTime();
		return map;
	}

}
