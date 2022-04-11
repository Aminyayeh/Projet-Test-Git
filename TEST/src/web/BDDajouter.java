package web;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.apache.tomcat.jni.User;

public class BDDajouter {
	
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
	
	
	
	public void insert(Beanajouter beane) {
		
		
		try {
			
			loadriver(driver);
		    Connection con=getConnection();
		    
			String insert="insert into etudiant values(?,?,?,?,?)";
			PreparedStatement ps;
			
			
			ps=con.prepareStatement(insert);
			ps.setString(1, beane.getMatricule());
			ps.setString(2, beane.getNom());
			ps.setInt(3, beane.getTelephone());
			ps.setString(4, beane.getClasse());
			ps.setInt(5, beane.getTelephone_tutteur());
			
			ps.executeUpdate();
			
			
			
		} catch (SQLException e) {
		
			e.printStackTrace();
		
		}
	
		
	}
	
	public void insertprofesseur(Beanajouterprofesseur beane) {
	
		
		try {
			
			loadriver(driver);
		    Connection con=getConnection();
		    
			String in="insert into professeur values(?,?,?,?)";
			PreparedStatement ps;
			
			
			ps=con.prepareStatement(in);
			ps.setString(1, beane.getMatricule());
			ps.setString(2, beane.getNom());
			ps.setInt(3, beane.getTelephone());
			ps.setString(4, beane.getEmail());
			
			ps.executeUpdate();
			
			
			
		} catch (SQLException e) {
		
			e.printStackTrace();
			
		}
	
		
	}
	
public void insertmodule(Beanmodule beane) {
	
		
		try {
			
			loadriver(driver);
		    Connection con=getConnection();
		    
			String in="insert into module values(?,?,?)";
			PreparedStatement ps;
			
			
			ps=con.prepareStatement(in);
			ps.setInt(1, beane.getId());
			ps.setString(2, beane.getDiscipline());
			ps.setString(3, beane.getEnseignant());
		
			
			
			ps.executeUpdate();
			
			
			
		} catch (SQLException e) {
		
			e.printStackTrace();
			
		}
	
		
	}

public void suppetudiant(Beanajouter beane) {
	
	
	try {
		
		loadriver(driver);
	    Connection con=getConnection();
	    Beanajouter b=new Beanajouter();
		String in="delete from etudiant where matricule=?";
		PreparedStatement ps;
		
		
		ps=con.prepareStatement(in);
		ps.setString(1, beane.getMatricule());
		
		
		ps.executeUpdate();
		
		
		
	} catch (SQLException e) {
	
		e.printStackTrace();
		
	}

	
}
public void updateetudiant(Beanajouter beane) {
	
try {
		
		loadriver(driver);
	    Connection con=getConnection();
	    Beanajouter b=new Beanajouter();
	    
	   
		String in="select * from etudiant where matricule=?";
		PreparedStatement ps;
		
		
		ps=con.prepareStatement(in);
		
		  ResultSet rse=ps.executeQuery();
	         
	         while(rse.next()) {
	        	rse.getString(1);
	        	rse.getString(2);
	        	rse.getString(3);
	        	rse.getString(4);
	        	rse.getString(5);
	        	
	         }
	             
	   

		
		
		
	} catch (SQLException e) {
	
		e.printStackTrace();
		
	}
	
	
}









}
