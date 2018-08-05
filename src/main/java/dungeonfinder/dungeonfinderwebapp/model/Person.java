package dungeonfinder.dungeonfinderwebapp.model;

import java.time.LocalDateTime;

import javax.validation.constraints.*;

public class Person {

	private Long id;

	@NotEmpty(message = "Username required")
	@Size(max = 15, message = "Username is too long")
	private String username;

	@NotEmpty(message = "Username required")
	@Size(max = 15, message = "Username is too long")
	private String firstName;

	@NotEmpty(message = "Username required")
	@Size(max = 15, message = "Username is too long")
	private String lastName;

	@Email(message = "Valid emails only")
	private String eMail;

	private String gender;
	private LocalDateTime dateSubmitted;
	private String alignment;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String geteMail() {
		return eMail;
	}

	public void seteMail(String eMail) {
		this.eMail = eMail;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public LocalDateTime getDateSubmitted() {
		return dateSubmitted;
	}

	public void setDateSubmitted(LocalDateTime dateSubmitted) {
		this.dateSubmitted = dateSubmitted;
	}

	public String getAlignment() {
		return alignment;
	}

	public void setThisAlignment(String alignment) {
		this.alignment = alignment;
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
	
	public void setAlignment(Integer lawful, Integer good) {
		lawful = (lawful * 2);
		good = (good * 2);
		Person person = new Person();
		if (lawful >= 3 && good >= 3) {//
			person.setThisAlignment("Lawful Good");

		} else if ((lawful >= 3) && (good < 3 && good > -3)) {//
			person.setThisAlignment("Lawful Neutral");

		} else if ((lawful > 2 && good <= -3)) {//
			person.setThisAlignment("Lawful Evil");

		} else if ((lawful < 3 && lawful > -3) && (good >= 3)) {//
			person.setThisAlignment("Neutral Good");

		} else if ((lawful <= 2 && lawful >= -2) && (good <= 2 && good >= -2)) {//
			person.setThisAlignment("True Neutral");

		} else if ((lawful < 3 && lawful > -3) && good < -2) {//
			person.setThisAlignment("Neutral Evil");

		} else if ((lawful < -3 && good >= 3)) {//
			person.setThisAlignment("Chaotic Good");

		} else if ((lawful < -3) && (good < 3 && good > -3)) {
			person.setThisAlignment("Chaotic Neutral");

		} else if (lawful <= -3 && good <= -3) {
			person.setThisAlignment("Chaotic Evil");//
		}
	}
}