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

/* 공지사항 게시글 전체 조회 */
	@RequestMapping(value="/noticeList" , method = RequestMethod.GET)
	@ResponseBody
	public List<Notice> noticeList(Model model){
		List<Notice> list = repo.notice_selectAll();

		return list;
	}

/* 공지사항 게시글 조회 */	
	@RequestMapping(value="/noticeDetail" , method = RequestMethod.GET)
	@ResponseBody
	public Notice noticeDetail(Notice notice){
		System.out.println("컨트롤러 테스트"+notice.getNoticeseq());
		Notice detail = repo.notice_selectOne(notice);
		
		System.out.println(detail.getNotice_title());
		System.out.println(detail.getNotice_date());
		System.out.println(detail.getNotice_contents());
		System.out.println(detail.getUserid());
		
		return detail;
	}
/* 공지사항 게시글 작성 */		
	@RequestMapping(value="/noticeWrite" , method = RequestMethod.POST)
	public int noticeWrite(Notice notice){
		int result = repo.notice_write(notice);
		
		return result;
	}
	
	
}
