package web;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.DriverManager;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;

/**
 * Servlet implementation class Edit
 */
@WebServlet("/Edit")
public class Edit extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	Connection con;
	PreparedStatement ps;
	ResultSet rs;
	int row;
       
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		
		String mat=request.getParameter("matricule");
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			
			con=(Connection) DriverManager.getConnection("jdbc:mysql://localhost/abdikarim","root","");
			
			ps=(PreparedStatement) con.prepareStatement("select * from etudiant where matricule=?");
			
			ps.setString(1, );
		} catch (Exception e) {
			// TODO: handle exception
		}
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
