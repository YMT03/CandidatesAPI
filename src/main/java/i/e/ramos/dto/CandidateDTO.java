package i.e.ramos.dto;

public class CandidateDTO {
	
	private String name;
	private String lastName;
	private String dni;
	
	public CandidateDTO(String name, String lastName, String dni) {
		this.name = name;
		this.lastName = lastName;
		this.dni = dni;
	}
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public String getDni() {
		return dni;
	}
	public void setDni(String dni) {
		this.dni = dni;
	}

}
