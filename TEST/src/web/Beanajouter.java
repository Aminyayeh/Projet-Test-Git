package web;

public class Beanajouter {

	private String  matricule;
	private String nom;
	private int telephone;
	private String classe;
	private int telephone_tutteur;
	
	
	






public Beanajouter() {
		
		
	}



public Beanajouter(String matricule, String nom, int telephone, String classe, int telephone_tutteur) {

	this.matricule = matricule;
	this.nom = nom;
	this.telephone = telephone;
	this.classe = classe;
	this.telephone_tutteur = telephone_tutteur;
}



public int getTelephone() {
	return telephone;
}



public void setTelephone(int telephone) {
	this.telephone = telephone;
}



public String getClasse() {
	return classe;
}



public void setClasse(String classe) {
	this.classe = classe;
}



public int getTelephone_tutteur() {
	return telephone_tutteur;
}



public void setTelephone_tutteur(int telephone_tutteur) {
	this.telephone_tutteur = telephone_tutteur;
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

}
