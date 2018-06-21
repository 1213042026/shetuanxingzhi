package org.ares.controller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.ares.entity.Column;
import org.ares.service.ColumnService;
import org.ares.service.DeleteService;
import org.ares.service.IDataService;
import org.ares.service.IEmpService;
import org.ares.service.MergeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
/**
 * 栏目 控制器
 * @author Lanqiao08
 *
 */
@Controller
@RequestMapping("/data")
public class DataController {
	@Autowired
	private IDataService  dataService;
	@RequestMapping("/select")
	public String merge(Model model){
		HashMap list=null;
		HashMap map=null;
		HashMap disc=null;
		HashMap nationalnews=null;
		HashMap Internationalnews=null;
		HashMap hotspots=null;
		HashMap Entertainmentnews=null;
		HashMap Sportsnews=null;
		HashMap Photonews=null;
		HashMap Recreationalsports=null;
		HashMap Culture=null;
		HashMap Beautygallery=null;
		HashMap education=null; 
		HashMap computer=null;
		list=dataService.selectuser();
		map=dataService.selectnews();
		disc=dataService.selectdisc();
		nationalnews=dataService.selectnat();
		Internationalnews=dataService.selectint();
		hotspots=dataService.selecthot();
		Entertainmentnews=dataService.selectent();
		Sportsnews=dataService.selectspo();
		Photonews=dataService.selectpho();
		Recreationalsports=dataService.selectrec();
		Culture=dataService.selectcul();
		Beautygallery=dataService.selectbea();
		education=dataService.selectedu();
		computer=dataService.selectcom();
		model.addAttribute("user", list);
		model.addAttribute("news", map);
		model.addAttribute("disc", disc);
		model.addAttribute("nat", nationalnews);
		model.addAttribute("int", Internationalnews);
		model.addAttribute("hot", hotspots);
		model.addAttribute("ent", Entertainmentnews);
		model.addAttribute("spo", Sportsnews);
		model.addAttribute("pho", Photonews);
		model.addAttribute("rec", Recreationalsports);
		model.addAttribute("cul", Culture);
		model.addAttribute("bea", Beautygallery);
		model.addAttribute("edu", education);
		model.addAttribute("com", computer);
		return "/cms/data";
		
	}
	@RequestMapping("/user")
	@ResponseBody
	public HashMap select(Model model){
		HashMap list=null;
		list=dataService.selectuser();
		return list;
		
	}
	@RequestMapping("/news")
	@ResponseBody
	public HashMap selectnews(Model model){
		HashMap map=null;
		map=dataService.selectnews();
		return map;
		
	}
	@RequestMapping("/disc")
	@ResponseBody
	public HashMap selectdesc(Model model){
		HashMap map=null;
		map=dataService.selectdisc();
		return map;
		
	}
	
}
