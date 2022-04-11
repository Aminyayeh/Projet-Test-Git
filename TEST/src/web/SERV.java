package web;

import java.io.IOException;
import java.sql.DriverManager;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.SendResult;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;
import com.sun.corba.se.spi.orbutil.fsm.Guard.Result;

import web.Bean;
import web.C1;


/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/login")
public class SERV extends HttpServlet {
	private static final long serialVersionUID = 1L;
       @Override
    	
    	
   	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    		
    	   HttpSession session=request.getSession();
    	   
    	   C1 c=new C1();
    	  	Bean b=new Bean();
    	String username=request.getParameter("username");
    	String password =request.getParameter("password");
    
    	
  
    	
    	b.setUsername(username);
    	b.setPassword(password);
    	
    
    	
    	if((c).validate(b)) {
    	 session.setAttribute("logi", username);
    	// session.setAttribute("lo", password);
    	response.sendRedirect("MenuG.jsp");
    	}else {
    		response.sendRedirect("connexion.jsp");
    	}
    	

       }		
}
   
	