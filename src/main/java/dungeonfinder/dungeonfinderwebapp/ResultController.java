package dungeonfinder.dungeonfinderwebapp;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ResultController {
	
	@RequestMapping(path = "/result", method = RequestMethod.GET)
	public String displayResult(HttpSession session) {
		session.getAttribute("person");
		return "/result";
	}

}
