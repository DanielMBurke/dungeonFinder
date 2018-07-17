package dungeonfinder.dungeonfinderwebapp;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller 
public class HomeController {
	
//
//	@Autowired
//	 private Dao Dao;

	@RequestMapping(path={"/"}, method=RequestMethod.GET)
	public String displayHome() {
		return "home";
	}
	@RequestMapping(path={"/signup"}, method=RequestMethod.GET)
	public String displaySignup() {
		return "signup";
	}
	@RequestMapping(path={"/result"}, method=RequestMethod.GET)
	public String displayResult() {
		return "result";
	}
}
