package dungeonfinder.dungeonfinderwebapp.model;

import java.time.LocalDateTime;

public class Person {
	
	private Long id;
	private String username;
	private String firstName;
	private String lastName;
	private String eMail;
	private String gender;
	private String alignment;
	private Integer lawful;
	private Integer good;
	private LocalDateTime dateSubmitted;

	
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
//	Alignment Strengths:
//	
//	Strategic Thinking (+1 Good, +1 Lawful)
//	1.Analytical 2.Context  3.Futuristic 4.Ideation 5.Input  6.Intellection 7.Learner 8.Strategic
//
//	Executing (+1 Good, -1 Lawful)
//	1.Achiever 2.Arranger 3.Belief 4.Consistency 5.Deliberative 6.Discipline 7.Focus 8.Responsibility 9.Restorative
//
//	Relationship Building (-1 Good, +1 Lawful)
//	1.Adaptability 2.Connectedness  3.Developer 4.Empathy 5.Harmony 6.Includer 7.Individualization 8.Positivity 9.Relator
//	
//	Influencing (-1 Good, -1 Lawful)
//	1.Activator 2.Command 3.Communication 4.Competition 5.Maximizer 5.Self-Assurance 6.Significant 7.Woo 
	
	public String getAlignment(int good, int lawful) {
		if (good == 5 && lawful == 5) {
			return "Lawful Good";
			
		} else if (good == 4 && lawful == 4) {
			return "Lawful Neutral";	
			
		} else if (good == 5 && lawful == 5) {
			return "Lawful Evil";
			
		}else if (good == 5 && lawful== 5) {
			return"Neutral Good";
			
		} else if (good == 5 && lawful == 5) {
			return "Neutral Evil";
			
		}else if (good == 5 && lawful== -5) {
			return"Chaotic Good";
			
		} else if (good == 5 && lawful == -5) {
			return "Chaotic Neutral";
			
		} else if (good >= -4 && lawful >= -4) {
			return "Chaotic Evil";
		}
	return "True Neutral";
	}

	public void setAlignment(String alignment) {
		this.alignment = alignment;
	}
	public Integer getLawful() {
		return lawful;
	}
	public void setLawful(Integer lawful) {
		this.lawful = lawful;
	}
	public Integer getGood() {
		return good;
	}
	public void setGood(Integer good) {
		this.good = good;
	}
	
	
}
