package dungeonfinder.dungeonfinderwebapp.model;

import java.util.ArrayList;
import java.util.List;
import javax.sql.DataSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Component;


@Component
public class PersonDaoJdbc implements PersonDao {

	private JdbcTemplate jdbcTemplate;

	@Autowired
	public PersonDaoJdbc(DataSource dataSource) {
		this.jdbcTemplate = new JdbcTemplate(dataSource);
	}

	@Override
	public Person save(Person personToSave) {
		if(personToSave.getId() == null) {
		String sqlInsertPerson = "INSERT INTO person"
				+ "(username,"
				+ "first_name,"
				+ "last_name,"
				+ "gender,"
				+ "alignement,"
				+ "datesubmitted)"
				+ "VALUES (?,?,?,?,?,?) "
				+ "RETURNING person_id";
		long id = jdbcTemplate.queryForObject(sqlInsertPerson, Long.class, 
				personToSave.getUsername(), 
				personToSave.getFirstName(),
				personToSave.getLastName(),
				personToSave.getGender(),
				personToSave.getAlignment(),
				personToSave.getDateSubmitted());
				personToSave.setId(id);
	} else {
		String updateSql =  "INSERT INTO person"
				+ "(username=?,"
				+ "first_name=?,"
				+ "last_name=?,"
				+ "gender=?,"
				+ "alignement=?,"
				+ "datesubmitted=?)"
				+ "WHERE person_id=?";
		jdbcTemplate.update(updateSql,
				personToSave.getUsername(), 
				personToSave.getFirstName(),
				personToSave.getLastName(),
				personToSave.getGender(),
				personToSave.getAlignment(),
				personToSave.getDateSubmitted());
				personToSave.getId();
	}
		return personToSave;
	}
	

	@Override
	public List<Person> getAllPersons() {
		List<Person> allPersons = new ArrayList<>();
		String sqlSelectAllPersons = "SELECT * FROM person";
		SqlRowSet results = jdbcTemplate.queryForRowSet(sqlSelectAllPersons);
		while (results.next()) {
			Person person = new Person();
			person.setId(results.getLong("person_id"));
			person.setUsername(results.getString("username"));
			person.setFirstName(results.getString("first_name"));
			person.setLastName(results.getString("last_name"));
			person.seteMail(results.getString("email"));
			person.setGender(results.getString("gender"));
			person.setThisAlignment(results.getString("alignment"));
			person.setDateSubmitted(results.getTimestamp("join_date").toLocalDateTime());
			allPersons.add(person);
		}
		return allPersons;
	}

	@Override
	public Person getSelectedPersons(String username) {
		Person selectedPerson = new Person();
		String getPerson = "Select * FROM person WHERE username =?";
		SqlRowSet results = jdbcTemplate.queryForRowSet(getPerson, username);
		while(results.next()) {
			selectedPerson.setUsername(results.getString("username"));
			selectedPerson.setFirstName(results.getString("first_name"));
			selectedPerson.setLastName(results.getString("last_name"));
			selectedPerson.seteMail(results.getString("email"));
			selectedPerson.setGender(results.getString("gender"));
			selectedPerson.setThisAlignment(results.getString("alignment"));
			selectedPerson.setDateSubmitted(results.getTimestamp("join_date").toLocalDateTime());	
		}
		return selectedPerson;
	}

	
}
