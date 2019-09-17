package global.sesoc.tasukete.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import global.sesoc.tasukete.dao.UserRepository;
import global.sesoc.tasukete.dto.Report;
import global.sesoc.tasukete.dto.Request;
import global.sesoc.tasukete.dto.Suggestion;

@Controller
public class BoardController {
	
	@Autowired
	UserRepository repository;
		//건의사항데이터받아오기
		@RequestMapping(value="/suggestionList" , method = RequestMethod.GET)
		@ResponseBody
		public List<Suggestion> suggestionList(Model model){
			List<Suggestion> suggestionList = repository.suggestion_selectAll();

			return suggestionList;
		}		
		//건의글올리기
		@RequestMapping(value="/suggestion", method=RequestMethod.POST)
		public String suggestion(Suggestion suggestion) {		
						
			int result = repository.suggestion(suggestion);
				
			return "user/user_index";
		}
		//요청목록
		@RequestMapping(value="/request" , method = RequestMethod.GET)
		@ResponseBody
		public List<Request> request(Model model){
			List<Request> request = repository.request_selectAll();

			return request;
			}
		//신고하기
		@RequestMapping(value="/report", method=RequestMethod.POST)
		public String report(Report report) {		
						
			int result = repository.report(report);
				
			return "user/user_index";
		}
		//건의디테일
		@RequestMapping(value="/suggestionDetail", method=RequestMethod.GET)
		public String suggestionDetail(int suggestionseq, Model model) {
			Suggestion suugestion = repository.selectOne(suggestionseq);
			
			model.addAttribute("suggestion", suggestion);
			
			return "user/html/suggestionDetail";
		}
}
