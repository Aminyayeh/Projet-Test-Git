package web;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/servajouterp")
public class servajouterp extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   



	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String matricule=request.getParameter("matricule");
     	String nom=request.getParameter("nom");
     	int  telephone=Integer.parseInt(request.getParameter("telephone"));
    	String email=request.getParameter("email");
     	
    	
        response.sendRedirect("affcher professeur.jsp");
    	
     	Beanajouterprofesseur b=new Beanajouterprofesseur();
     	b.setMatricule(matricule);
     	b.setNom(nom);
     	b.setTelephone(telephone);
     	b.setEmail(email);
     	
     
        
     	BDDajouter h=new BDDajouter();
     	            h.insertprofesseur(b);
    
	}

}
