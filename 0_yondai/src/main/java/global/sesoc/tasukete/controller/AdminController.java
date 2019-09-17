package global.sesoc.tasukete.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import global.sesoc.tasukete.dao.AdminRepository;
import global.sesoc.tasukete.dto.Notice;

@Controller
public class AdminController {
	
	@Autowired
	AdminRepository repo;
	
	
	@RequestMapping(value="/ad_index" , method = RequestMethod.GET)
	public String ad_index(){
		
		return "admin/ad_index";
	}
	
	@RequestMapping(value="/noticeList" , method = RequestMethod.GET)
	@ResponseBody
	public List<Notice> noticeList(Model model){
		List<Notice> noticeList = repo.notice_selectAll();

		return noticeList;
	}
	
	
}
