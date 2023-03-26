package com.techblog.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.techblog.dao.UserDao;
import com.techblog.entities.User;
import com.techblog.helper.ConnectionProvider;

/**
 * Servlet implementation class RegisterServlet
 */
@WebServlet("/RegisterServlet") 
@MultipartConfig
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegisterServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		// response.getWriter().append("").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		
		String check=request.getParameter("usercheck");
		
		if(check==null) {
			out.println("Please agree terms and condition to sign up");
		}else {
			String name=request.getParameter("username");
			String email=request.getParameter("useremail");
			String password=request.getParameter("userpassword");
			String gender=request.getParameter("gender");
			String about=request.getParameter("userabout");
			
			// Create user object and set all comming data into that object 
			User user=new User(name,email,password,gender,about);
			
			// Sending data to dao for storing into database 
			UserDao dao=new UserDao(ConnectionProvider.getConnection());
			if(dao.saveUser(user)) {
				
				out.println("done");
			}
			else {
				out.println("Error");
			}
		}
		
	}

}
