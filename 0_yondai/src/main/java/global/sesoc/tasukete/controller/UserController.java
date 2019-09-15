package global.sesoc.tasukete.controller;

import java.util.Locale;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import global.sesoc.tasukete.dao.UserRepository;
import global.sesoc.tasukete.dto.Tasukete_user;


@Controller
public class UserController {

	@Autowired
	UserRepository repository;
	//홈화면
	@RequestMapping(value = "index", method = RequestMethod.GET)
	public String index(Locale locale, Model model) {

		return "index";
	}
	//공지사항
	@RequestMapping(value = "notice", method = RequestMethod.GET)
	public String notice(Locale locale, Model model) {

		return "index"; //임시로 지정
	}
	//로그인
	@RequestMapping(value = "login", method = RequestMethod.GET)
	public String login(Locale locale, Model model) {

		return "id/login";
	}
	//로그인
	@RequestMapping(value="/login", method=RequestMethod.POST)
	public String login(Tasukete_user user, Model model, HttpSession session) {
		
		Tasukete_user m = repository.selectOne(user);
		
		String message = "";
		if(m == null) {
			message = "로그인을 할 수 없습니다.";
			model.addAttribute("message", message);

			return "id/login";
			
		} else {
			session.setAttribute("loginId", m.getUserid());
			session.setAttribute("loginName", m.getUsername());
		
			if(m.getUserid().equals("admin")){
				return "redirect:ad_index";
			}else{
				System.out.println("테스트2");
				return "redirect:index";
			}
		}
		
	}
	
	//아이디 중복확인 화면 요청
	@RequestMapping(value="/idCheck", method=RequestMethod.GET)
	public String idCheck() {
		
		return "id/idcheck";
	}
	//아이디 중복확인 처리 요청
	@RequestMapping(value="/idCheck", method=RequestMethod.POST)
	public String idCheck(String userid, Model model) {

			model.addAttribute("message", "ok");
			model.addAttribute("userid", userid);
		
		return "id/idcheck";
	}
	//회원가입
	@RequestMapping(value="/signup", method=RequestMethod.GET)
	public String signup() {
					
		return "id/signup";
	}
		
	//회원가입 처리 요청
	@RequestMapping(value="/signup", method=RequestMethod.POST)
	public String signProcess(Tasukete_user user) {		
					
		int result = repository.signup(user);
			
		return "redirect:login";
	}
	//로그아웃
	@RequestMapping (value="logout", method=RequestMethod.GET)
	public String logout(HttpSession session) {
			
		session.invalidate();
			
		return "redirect:index";
		}
	
}
