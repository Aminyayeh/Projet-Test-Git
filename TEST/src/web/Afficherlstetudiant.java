package web;

import java.sql.Connection;
import java.sql.DriverManager;

public class Afficherlstetudiant {
	
	
	private String url="jdbc:mysql://localhost:3306/abdikarim";
	private String nom="root";
	private String mdp="";
	private String driver="com.mysql.jdbc.Driver";
	
	
	public void loadriver(String driver) {
		try {
			Class.forName(driver);
		} catch (Exception e) {
		e.printStackTrace();
		}
	}
	
	public Connection getConnection() {
		Connection con=null;
		try {
			con=DriverManager.getConnection(url,nom,mdp);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return con;
	}

}
