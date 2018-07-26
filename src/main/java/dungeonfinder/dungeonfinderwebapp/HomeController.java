package dungeonfinder.dungeonfinderwebapp;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller 
public class HomeController {

	@RequestMapping(path= {"/","home"}, method=RequestMethod.GET)
	public String displayHome() {
		return "home";
	}
	
	@RequestMapping(path="/signup", method=RequestMethod.GET)
	public String displaySignup(Model modelholder) {
		return "signup";
		}
	
	
	//This will become a POST METHOD once the calculations are set
	@RequestMapping(path="/result", method=RequestMethod.GET)
	public String displayResult() {
		return "/result";
	}
}
