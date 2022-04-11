package web;

public class Beanajouterprofesseur {
	
	private String matricule;
	private String nom;
     private int telephone;
	private String email;
	
	
	public Beanajouterprofesseur() {
		
	}

	

	public Beanajouterprofesseur(String matricule, String nom, int telephone, String email) {
		super();
		this.matricule = matricule;
		this.nom = nom;
		this.telephone = telephone;
		this.email = email;
	}



	public String getMatricule() {
		return matricule;
	}
	public void setMatricule(String matricule) {
		this.matricule = matricule;
	}
	public String getNom() {
		return nom;
	}
	public void setNom(String nom) {
		this.nom = nom;
	}




	

	public int getTelephone() {
		return telephone;
	}



	public void setTelephone(int telephone) {
		this.telephone = telephone;
	}



	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
	
	

}
