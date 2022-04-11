package web;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.sun.org.apache.xerces.internal.util.Status;


public class C1 {
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
	
	public boolean validate(Bean bean) {
		boolean status=false;
		try {
			loadriver(driver);
			Connection con=getConnection();
			
			String sql="select *from java where username=? and password=?";
			PreparedStatement ps;
			ps=con.prepareStatement(sql);
			ps.setString(1, bean.getUsername());
			ps.setString(2, bean.getPassword());
			
			ResultSet rs=ps.executeQuery();
			status=rs.next();
			
			
			
			
		} catch (Exception e) {
		
		}
		return status;
	}
	
	
}
