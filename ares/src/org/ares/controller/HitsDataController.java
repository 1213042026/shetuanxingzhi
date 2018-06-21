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
/**
 * 栏目 控制器
 * @author Lanqiao08
 *
 */
@Controller
@RequestMapping("/hitsdata")
public class HitsDataController {
	@Autowired
	private IDataService  dataService;
	@RequestMapping("/hits")
	public String merge(Model model){
		List list=null;
		list=dataService.selecthits();
		model.addAttribute("list", list);
		return "/cms/hitsdata";
		
	}
}
