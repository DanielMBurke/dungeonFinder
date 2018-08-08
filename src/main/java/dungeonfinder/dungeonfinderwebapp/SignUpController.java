package dungeonfinder.dungeonfinderwebapp;
import java.time.LocalDateTime;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import dungeonfinder.dungeonfinderwebapp.model.Person;
import dungeonfinder.dungeonfinderwebapp.model.PersonDao;

@Controller
public class SignUpController {
	
	@Autowired
	private PersonDao personDao;
	
	@RequestMapping(path = "/signup", method = RequestMethod.GET)
	public String displaySignup(ModelMap model) {
		model.put("person", new Person());
		return "signup";
	}

	@RequestMapping(path = "/signup", method = RequestMethod.POST)
	public String submitSignup(@Valid @ModelAttribute("person") Person person,
			@RequestParam String[] attributes,
			HttpSession session, 
			BindingResult result,
			RedirectAttributes flash) {
		
		if(result.hasErrors()) {
			flash.addFlashAttribute("person", person);
			flash.addFlashAttribute(BindingResult.MODEL_KEY_PREFIX + "person", result);
		return "redirect:/signup";
		}
		Integer lawful = 0;
		Integer good = 0;
		for (String attrib : attributes) {
			if (attrib.substring(0, 1).equals("1")) { // Strategic Thinking (+1 Good, +1 Lawful)
				lawful++;
				good++;
			} else if (attrib.substring(0, 1).equals("2")) { // Executing (+1 Good, -1 Lawful)
				lawful--;
				good++;
			} else if (attrib.substring(0, 1).equals("3")) { // Relationship Building (-1 Good, +1 Lawful)
				lawful++;
				good--;
			} else if (attrib.substring(0, 1).equals("4")) {// Influencing (-1 Good, -1 Lawful)
				lawful--;
				good--;
			}
		}
		LocalDateTime joinDate = LocalDateTime.now();
		person.setAlignment(lawful, good);
		person.setDateSubmitted(joinDate);
		personDao.save(person);

		session.setAttribute("person", person);	
	
		
		flash.addFlashAttribute("message", "Congratulations!");
		
		return "redirect:/result";
	}

}
