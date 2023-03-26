package com.techblog.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.techblog.entities.message;

/**
 * Servlet implementation class LogoutServlet
 */
@WebServlet("/LogoutServlet")
public class LogoutServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LogoutServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		// Removing session
				HttpSession s=request.getSession();
				s.removeAttribute("currentuser");
				
				// Create a message
				message msg=new message("You Have Loggged out Succesfully !", "success", "alert-success");
				// Send message on screen through session
				s.setAttribute("msg", msg);
				// Redirecting page
				response.sendRedirect("login.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		response.setContentType("text/html");
		// Removing session
		HttpSession s=request.getSession();
		s.removeAttribute("currentuser");
		
		// Create a message
		message msg=new message("log out succesfully", "success", "alert-success");
		// Send message on screen through session
		s.setAttribute("msg", msg);
		// Redirecting page
		response.sendRedirect("login.jsp");
		
	}

}
