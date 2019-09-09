package global.sesoc.test;

import java.util.Locale;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class UserController {

	@RequestMapping(value = "start", method = RequestMethod.GET)
	public String start(Locale locale, Model model) {

		
		return "index";
	}
	//로그인
	@RequestMapping(value = "login", method = RequestMethod.GET)
	public String login(Locale locale, Model model) {

		
		return "login";
	}
	//공지사항
	@RequestMapping(value = "index", method = RequestMethod.GET)
	public String index(Locale locale, Model model) {

		
		return "index";
	}
	@RequestMapping(value = "notice", method = RequestMethod.GET)
	public String notice(Locale locale, Model model) {

		
		return "notice";
	}
}
