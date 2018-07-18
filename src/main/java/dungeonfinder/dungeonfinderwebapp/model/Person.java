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

	
	
}
