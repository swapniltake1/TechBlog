package com.techblog.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import com.techblog.dao.UserDao;
import com.techblog.entities.User;
import com.techblog.helper.ConnectionProvider;

/**
 * Servlet implementation class EditServlet
 */
@WebServlet("/EditServlet") @MultipartConfig
public class EditServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EditServlet() {
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
		
		// fetch data from form 
		
		String name=request.getParameter("username");
		String email=request.getParameter("useremail");
		String password=request.getParameter("userpassword");
		String about=request.getParameter("userabout");
		Part part=request.getPart("userprofile");
		String imageName=part.getSubmittedFileName();
		
		// get the user from session
		
		HttpSession session=request.getSession();
		User user=(User) session.getAttribute("currentuser");
		
		user.setName(name);
		user.setEmail(email);
		user.setPassword(password);
		user.setAbout(about);
		user.setProfile(imageName);
		
		// Update Into Database
		
		// Gettinf connection to database
		UserDao userDao=new UserDao(ConnectionProvider.getConnection());
		
		boolean ans=userDao.updateUser(user);
		if(ans) {
			out.println("Updated Successfully");
		}else {
			out.println("Error while updating");
		}
		
	}

}