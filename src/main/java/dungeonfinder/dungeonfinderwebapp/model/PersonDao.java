package dungeonfinder.dungeonfinderwebapp.model;

import java.util.List;

public interface PersonDao {

	public Person save(Person person);

	public List<Person> getAllPersons();

	public Person getSelectedPersons(String username);
	


}
