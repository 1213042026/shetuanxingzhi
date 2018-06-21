package org.ares.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.ares.entity.Column;
import org.ares.service.DeleteService;
import org.ares.service.IEditorService;
import org.ares.service.IEmpService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/editorcolumn")
public class EditorColumnController {
	@Autowired
	private IEmpService  empService;
	@Autowired
	private IEditorService editorService;
	@RequestMapping("/editor")
	public String update(Column column,Model model,HttpSession session){
		editorService.editorColumn(column);
		List list = empService.select();
		session.setAttribute("list", list);
		return "/cms/inc/success";
		
	}
}
