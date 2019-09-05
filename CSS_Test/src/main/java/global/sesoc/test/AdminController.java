package global.sesoc.test;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class AdminController {
	
	@RequestMapping(value="/matching_List" , method=RequestMethod.GET)
	public String matching_List(){
		
		return "full-screen-table";
	}
	
}
