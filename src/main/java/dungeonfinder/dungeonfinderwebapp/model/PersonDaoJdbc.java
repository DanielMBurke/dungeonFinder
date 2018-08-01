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
	public void save(Person person) {
		String sqlInsertPerson = "INSERT INTO person(username, first_name, last_name, email, gender, alignement, datesubmitted) "
				+ "VALUES (?,?,?,?,?,?,?) RETURNING person_id";
		long id = jdbcTemplate.queryForObject(sqlInsertPerson, Long.class, person.getUsername(), person.getFirstName(),
				person.getLastName(), person.geteMail(), person.getGender(), person.getAlignment(),
				person.getDateSubmitted());
		person.setId(id);
	}
	// Strategic Thinking (+1 Good, +1 Lawful)
	// 1.Analytical 2.Context 3.Futuristic 4.Ideation 5.Input 6.Intellection
	// 7.Learner 8.Strategic
	//
	// Executing (+1 Good, -1 Lawful)
	// 1.Achiever 2.Arranger 3.Belief 4.Consistency 5.Deliberative 6.Discipline
	// 7.Focus 8.Responsibility 9.Restorative
	//
	// Relationship Building (-1 Good, +1 Lawful)
	// 1.Adaptability 2.Connectedness 3.Developer 4.Empathy 5.Harmony 6.Includer
	// 7.Individualization 8.Positivity 9.Relator
	//
	// Influencing (-1 Good, -1 Lawful)
	// 1.Activator 2.Command 3.Communication 4.Competition 5.Maximizer
	// 5.Self-Assurance 6.Significant 7.Woo

	// given the calculated inputs from the selected check boxes on the form, set
	// the alignment using the logic below
	@Override
	public void getPersonAligment(Integer lawful, Integer good) {
		Person person = new Person();
		if (lawful >= 3 && good >= 3) {
			person.setAlignment("Lawful Good");

		} else if ((lawful >= 3) && (good <= 2 && good >= -2)) {
			person.setAlignment("Lawful Neutral");

		} else if ((lawful >= 3) && (good <= -3 && good >= -3)) {
			person.setAlignment("Lawful Evil");

		} else if ((lawful <= 2 && lawful >= -2) && (good >= 3)) {
			person.setAlignment("Neutral Good");

		} else if ((lawful <= 2 && lawful >= -2) && (good <= 2 && good >= -2)) {
			person.setAlignment("True Neutral");

		} else if ((lawful <= 2 && lawful >= -2) && (good <= -3 && good >= -3)) {
			person.setAlignment("Neutral Evil");

		} else if ((lawful == 5 && lawful == 5) && (good >= 3)) {
			person.setAlignment("Chaotic Good");

		} else if ((lawful <= 2 && lawful >= -2) && (good == 5 && good == 5)) {
			person.setAlignment("Chaotic Neutral");

		} else if (lawful <= -3 && good <= -3) {
			person.setAlignment("Chaotic Evil");
		}
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
			person.setAlignment(results.getString("alignment"));
			person.setDateSubmitted(results.getTimestamp("join_date").toLocalDateTime());
			allPersons.add(person);
		}
		return allPersons;
	}

}
