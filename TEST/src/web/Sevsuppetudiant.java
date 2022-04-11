package web;

import java.io.IOException;
import java.sql.SQLException;

import javax.security.auth.message.callback.PrivateKeyCallback.Request;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Sevsuppetudiant
 */
@WebServlet("/Sevsuppetudiant")
public class Sevsuppetudiant extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	


	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		
		String matricule=request.getParameter("matricule");

	      
     
		
 	     Beanajouter b=new Beanajouter();
     	
     	b.setMatricule(matricule);
     	
    	BDDajouter h=new BDDajouter();
          h.suppetudiant(b);
          response.sendRedirect("affcher etudiant.jsp");
          
          
       
    	
    
          
	}
	
	
	}


