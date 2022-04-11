package web;

public class Beanmodule {
   private int id;
	private String discipline;
	private String enseignant;
	
	
	public Beanmodule() {
		
	 
	}
	
	

	


	public Beanmodule(int id, String discipline, String enseignant) {

		this.id = id;
		this.discipline = discipline;
		this.enseignant = enseignant;
	}






	public int getId() {
		return id;
	}






	public void setId(int id) {
		this.id = id;
	}






	public String getDiscipline() {
		return discipline;
	}
	public void setDiscipline(String discipline) {
		this.discipline = discipline;
	}
	public String getEnseignant() {
		return enseignant;
	}
	public void setEnseignant(String enseignant) {
		this.enseignant = enseignant;
	}
	
	

}
