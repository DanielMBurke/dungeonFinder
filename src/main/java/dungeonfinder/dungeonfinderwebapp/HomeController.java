package dungeonfinder.dungeonfinderwebapp;

import java.time.LocalDateTime;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import dungeonfinder.dungeonfinderwebapp.model.Person;
import dungeonfinder.dungeonfinderwebapp.model.PersonDao;

@Controller
public class HomeController {

	@Autowired
	private PersonDao personDao;

	@RequestMapping(path = { "/", "home" }, method = RequestMethod.GET)
	public String displayHome(ModelMap modelholder) {
		modelholder.put("person", personDao.getAllPersons());
		return "home";
	}

	@RequestMapping(path = "/signup", method = RequestMethod.GET)
	public String displaySignup(ModelMap modelholder) {
		return "signup";
	}

	@RequestMapping(path = "/signup", method = RequestMethod.POST)
	public String submitSignup(@RequestParam String firstName, @RequestParam String lastName,
			@RequestParam String username, @RequestParam String gender, @RequestParam String[] attributes) {
		Integer lawful = 0;
		Integer good = 0;

		// Parse to int before looping through?
		// Integer[] attributeNums = new Integer[attributes.length];
		// for(Integer i = 0; i < attributes.length;i++)
		// {attributeNums[i] = Integer.parseInt(attributes[i]);
		// }
		for (String attrib : attributes) {
			if (attrib.substring(0, 1) == "1") { // Strategic Thinking (+1 Good, +1 Lawful)
				lawful++;
				good++;
			} else if (attrib.substring(0, 1) == "2") { // Executing (+1 Good, -1 Lawful)
				lawful--;
				good++;
			} else if (attrib.substring(0, 1) == "3") { // Relationship Building (-1 Good, +1 Lawful)
				lawful++;
				good--;
			} else if (attrib.substring(0, 1) == "4") {// Influencing (-1 Good, -1 Lawful)

				lawful--;
				good--;
			}
		}
		LocalDateTime dateSubmitted = LocalDateTime.now();
		Person person = new Person();
		person.setFirstName(firstName);
		person.setLastName(lastName);
		person.setUsername(username);
		person.setGender(gender);
		person.setAlignment(lawful, good);
		person.setDateSubmitted(dateSubmitted);
		personDao.save(person);
		return "redirect:/result";
	}

	@RequestMapping(path = "/result", method = RequestMethod.GET)
	public String displayResult(@RequestParam String username, ModelMap modelholder) {
		Person person = personDao.getSelectedPersons(username);
		modelholder.put("person", person);
		return "/result";
	}

}
