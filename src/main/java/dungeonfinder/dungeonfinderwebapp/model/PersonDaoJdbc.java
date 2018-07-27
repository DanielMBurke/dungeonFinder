package dungeonfinder.dungeonfinderwebapp.model;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Component;


@Component
public class PersonDaoJdbc implements PersonDao{

	private JdbcTemplate jdbcTemplate;

	@Autowired
	public PersonDaoJdbc(DataSource dataSource) {
		this.jdbcTemplate = new JdbcTemplate(dataSource);
	}
	
	
	@Override
	public void save(Person person) {
		String sqlInsertPerson = "INSERT INTO person(username, first_name, last_name, email, gender, alignement, datesubmitted) VALUES (?,?,?,?,?,?) RETURNING person_id";
		long id = jdbcTemplate.queryForObject(sqlInsertPerson, Long.class, person.getUsername(), person.getFirstName(),  person.getLastName(),person.geteMail(), person.getGender(),person.getAlignment(), person.getDateSubmitted());
		person.setId(id);
	}


	@Override
	public List<Person> getAllPersons() {
		List<Person> allPersons = new ArrayList<>();
		String sqlSelectAllPersons = "SELECT * FROM person";
		SqlRowSet results = jdbcTemplate.queryForRowSet(sqlSelectAllPersons);
		while(results.next()) {
			Person person = new Person();
			person.setId(results.getLong("person_id"));
			person.setUsername(results.getString("username"));
			person.setFirstName(results.getString("first_name"));
			person.setLastName(results.getString("last_name"));
			person.seteMail(results.getString("email"));
			person.setGender(results.getString("gender"));
			person.setAlignment(results.getString("alignment"));
			person.setDateSubmitted(results.getTimestamp("join_date").toLocalDateTime());
			allPersons.add(person);
		}
		return allPersons;
	}
	
	
}