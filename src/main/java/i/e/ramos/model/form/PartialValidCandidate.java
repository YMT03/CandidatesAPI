package i.e.ramos.model.form;

import javax.validation.constraints.Size;

import i.e.ramos.model.Candidate;

public class PartialValidCandidate {
	
	private Long id;
	@Size(max=100)
	private String name;
	@Size(max=100)
	private String lastName;
	@Size(max=100)
	private String address;
	@Size(max=100)
	private String phone;
	@Size(max=100)
	private String dni;
	@Size(max=100)
	private String mail;
	
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
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
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getDni() {
		return dni;
	}
	public void setDni(String dni) {
		this.dni = dni;
	}
	public String getMail() {
		return mail;
	}
	public void setMail(String mail) {
		this.mail = mail;
	}
	
	public Candidate build() {
		Candidate candidate = new Candidate();
		candidate.setId(id);
		candidate.setName(name);
		candidate.setLastName(lastName);
		candidate.setAddress(address);
		candidate.setDni(dni);
		candidate.setPhone(phone);
		candidate.setMail(mail);
		return candidate;
	}

}
