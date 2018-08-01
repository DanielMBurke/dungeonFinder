package dungeonfinder.dungeonfinderwebapp.model;

import java.time.LocalDateTime;

import javax.validation.constraints.*;

public class Person {

	private Long id;
	
	 @NotEmpty(message="Username required")
	 @Size(max=15, message="Username is too long")
	private String username;
	
	 @NotEmpty(message="Username required")
	 @Size(max=15, message="Username is too long")
	private String firstName;
	
	 @NotEmpty(message="Username required")
	 @Size(max=15, message="Username is too long")
	private String lastName;
	
	 @Email(message="Valid emails only")
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

	public void setAlignment(String alignment) {
		this.alignment = alignment;
	}
	

}
