package org.ares.controller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.ares.entity.Txt;
import org.ares.service.ITxtServise;
import org.ares.service.impl.TxtServiceImpl;
import org.ares.vo.pageModel;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/txt")
public class TxtController {

	@Autowired
	ITxtServise txtServiceImpl;
	
	/**
	 * 查询带分页的所有文章
	 * @param model
	 * @param pagemodel
	 * @return
	 */
 	@RequestMapping("/select")
	public String select(Model model,pageModel pagemodel){
 		pageModel<HashMap> _pagemodel=null;
 		try {
			_pagemodel = txtServiceImpl.selectTxt(pagemodel);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		model.addAttribute("pagemodel", _pagemodel);
		return "/cms/txt";
	}
 	
 	/**
 	 * 模糊查询文章
 	 * @param keyword
 	 * @param model
 	 * @return
 	 */
 	@RequestMapping("/selectBycondition")
 	public String selectBycondition(String keyword,Model model,pageModel pagemodel) {
 		pageModel<HashMap> _pagemodel=null;
 		String keywords="'%"+keyword+"%'";
 		System.out.println(keywords);
 		try {
			_pagemodel=txtServiceImpl.selectBycondition(keywords, pagemodel);
			System.out.println("size:"+_pagemodel.getList().size());
			System.out.println(_pagemodel.getRows());
		} catch (Exception e) {
			e.printStackTrace();
		}
 		model.addAttribute("pagemodels", _pagemodel);
 		return "/cms/txtBycondition";
 	}
 	
 	@RequestMapping("/selectBypartname")
 	public String selectBypartname(String partname,Model model,pageModel pagemodel){
 		pageModel<HashMap> _pagemodel=null;
 		try {
			_pagemodel=txtServiceImpl.selectBypart(partname, pagemodel);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		model.addAttribute("pagemodelap", _pagemodel);
		return "/cms/txtBypart";
 	}
 	
 	
 	/**
 	 * 单个删除文章
 	 * @param id
 	 * @return
 	 */
 	@RequestMapping("/deleteTxtByid")
	public String deleteTxtByid(String id){
 		txtServiceImpl.deleteTxtByid(id);
		return "redirect:/txt/select";
	}
 	
 	/**
 	 * 查询单个文章详情
 	 * @param id
 	 * @param model
 	 * @return
 	 */
	@RequestMapping("/selectxq")
	public String selectTxtxq(String id,Model model){
 		HashMap map=null;
 		map=txtServiceImpl.selectTxtxq(id);
		model.addAttribute("Txtxq", map);
		 
		return "/cms/txtxq";
	}
	
	/**
	 * 添加文章
	 * @param TXTtitle
	 * @param TXTtype
	 * @param TXTlm
	 * @param TXTimg
	 * @param content
	 * @return
	 */
	@RequestMapping("/addtxt")
	public String addtxt(String TXTtitle,String TXTdisc,String TXTtype,String TXTlm,String TXTimg,String content,HttpSession session){
		HashMap map=(HashMap) session.getAttribute("loginUser");
		String userid=map.get("id").toString();
		Txt txt=new Txt();
		txt.setCms_news_disc(TXTdisc);
		txt.setCms_user_id(userid);
		txt.setCms_news_name(TXTtitle);
		txt.setCms_news_type(TXTtype);
		txt.setCms_part_name(TXTlm);
		txt.setCms_news_imgurl(TXTimg);
		txt.setCms_news_content(content);
		System.out.println(txt.getCms_news_name());
		txtServiceImpl.inserttxt(txt);
		return "redirect:/txt/select";
	}
	/**
	 * 添加文章中的栏目名字
	 * @param model
	 * @return
	 */
	@RequestMapping("/tjtxt")
	public String selectTxt_part_name(Model model){
		List<HashMap> map=null;
		map=txtServiceImpl.selectTxt_part_name();
		System.out.println(map.toString());
		model.addAttribute("part_name", map);
		return "/cms/addtxt";
	}
	/**
	 * 查询文章审核页面
	 * @param id
	 * @param model
	 * @return
	 */
	@RequestMapping("/auditingTxt")
	public String auditingTxt(String id,Model model){
		HashMap map=null;
		map=txtServiceImpl.auditingTxt(id);
		System.out.println(map.size());
		model.addAttribute("auditingTxt", map);
		return "/cms/auditingtxt";
		
	}
	/**
	 * 审核过程A 通过
	 * @param id
	 * @return
	 */
	@RequestMapping("/auditA")
	public String auditA(String id){
		txtServiceImpl.auditA(id);
		return "redirect:/txt/select";
	}
	/**
	 * 审核过程B 驳回
	 * @param id
	 * @return
	 */
	@RequestMapping("/auditB")
	public String auditB(String id){
		txtServiceImpl.auditB(id);
		return "redirect:/txt/select";
	}
	
	
	@RequestMapping("/deleteAll")
	public String deleteAll(String[]  listval ){
		/*System.out.println(listval!=null?listval[0]:"");
		System.out.println(listval!=null?listval[1]:"");*/
		System.out.println("coming in");
		txtServiceImpl.deleteAll(listval);
		return "redirect:/txt/select";
	}
}
