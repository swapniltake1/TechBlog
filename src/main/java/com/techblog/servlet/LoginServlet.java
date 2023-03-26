package com.techblog.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.techblog.dao.UserDao;
import com.techblog.entities.User;
import com.techblog.entities.message;
import com.techblog.helper.ConnectionProvider;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		
		// Fetch data from form
		String userEmail=request.getParameter("email");
		String userPassword=request.getParameter("password");
		
		//creating userdao object. and passing database connection
		UserDao dao=new UserDao(ConnectionProvider.getConnection());
		
		User u=dao.getUserByEmailAndPassword(userEmail, userPassword);
		
		if(u==null) {
			// error while login
		//	out.println("Invalid Details !");
			message msg=new message("Invalid Details ! Please Try again .....", "error", "alert-danger");
		   
			HttpSession s = request.getSession();
			// Sending our msg through session
			s.setAttribute("msg", msg);
			
			response.sendRedirect("login.jsp");
		}else
		{
			// login success
			HttpSession s=request.getSession();
			s.setAttribute("currentuser", u);
			response.sendRedirect("profile.jsp");
			
		}
		
		
		
	}

}
