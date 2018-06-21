package org.ares.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.ares.entity.Column;
import org.ares.service.ColumnService;
import org.ares.service.DeleteService;
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
@RequestMapping("/mergecolumn")
public class MergeColumnController {
	@Autowired
	private IEmpService  empService;
	@Autowired
	private MergeService mergeColumnService;
	@RequestMapping("/merge")
	public String merge(Column column,Model model,HttpSession session){
		mergeColumnService.mergeColumn(column);
		List list = empService.select();
		session.setAttribute("list", list);
		return "/cms/inc/success";
		
	}
}
