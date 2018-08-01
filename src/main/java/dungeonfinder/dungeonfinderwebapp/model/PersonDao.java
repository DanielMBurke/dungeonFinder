package dungeonfinder.dungeonfinderwebapp.model;

import java.util.List;

public interface PersonDao {
	
	public List<Person> getAllPersons();
	
	public void save(Person post);


}
