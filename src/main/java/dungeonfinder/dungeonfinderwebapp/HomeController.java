package dungeonfinder.dungeonfinderwebapp;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import dungeonfinder.dungeonfinderwebapp.model.PersonDao;

@Controller
public class HomeController {

	@Autowired
	private PersonDao personDao;

	@RequestMapping(path = {"/","home"}, method = RequestMethod.GET)
	public String displayHome(ModelMap modelholder) {
		modelholder.put("person", personDao.getAllPersons());
		return "home";
	}

	


}
