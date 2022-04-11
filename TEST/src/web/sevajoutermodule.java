package web;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/sevajoutermodule")
public class sevajoutermodule extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		

	     int id =Integer.parseInt(request.getParameter("id"));
		String discipline=request.getParameter("module");
	     String enseignant=request.getParameter("enseignant");

	     
		 response.sendRedirect("affchermodule.jsp");
	     
	     
	     Beanmodule m=new Beanmodule();
	     m.setId(id);
	     m.setDiscipline(discipline);
	     m.setEnseignant(enseignant);
	
	   	BDDajouter h=new BDDajouter();
	    h.insertmodule(m);
	}

}
