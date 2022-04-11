package web;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class servajouter
 */
@WebServlet("/servajouter")
public class servajouter extends HttpServlet {

       
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
    	String matricule=request.getParameter("matricule");
     	String nom=request.getParameter("nom");
     	int telephone=Integer.parseInt(request.getParameter("telephone"));
    	String classe=request.getParameter("classe");
    	int tuteur=Integer.parseInt(request.getParameter("tuteur"));
     	
     	Beanajouter b=new Beanajouter();
     	
     	b.setMatricule(matricule);
     	b.setNom(nom);
        b.setTelephone(telephone);
        b.setClasse(classe);
        b.setTelephone_tutteur(tuteur);
        
        response.sendRedirect("affcher etudiant.jsp");
     	BDDajouter h=new BDDajouter();
     h.insert(b);
     
     
     
     
    
     
     	
	}

}
