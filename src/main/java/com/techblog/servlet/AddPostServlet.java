package com.techblog.servlet;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import com.techblog.dao.PostDao;
import com.techblog.entities.Post;
import com.techblog.entities.User;
import com.techblog.helper.ConnectionProvider;
import com.techblog.helper.Helper;

/**
 * Servlet implementation class AddPostServlet
 */
@WebServlet("/AddPostServlet") @MultipartConfig
public class AddPostServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddPostServlet() {
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
		
		int cid=Integer.parseInt(request.getParameter("cid"));
		String ptitle=request.getParameter("post-title");
		String pcontent=request.getParameter("post-content");
		String pcode=request.getParameter("post-code");
		Part part=request.getPart("post-img");
		String imageName=part.getSubmittedFileName();
		
		// Printing data which we feetching
	/*	
		out.println(cid);
		out.println(ptitle);
		out.println(pcontent);
		out.println(pcode);
		out.println(imageName);
	*/	
		
		
		// Getting current user id.
		
		HttpSession session=request.getSession();
		
		User user=(User) session.getAttribute("currentuser");
	    
	//	out.println(user.getName());
		
		Post post=new Post(ptitle,pcontent,pcode,imageName, null,user.getId(),cid);
		
		PostDao dao=new PostDao(ConnectionProvider.getConnection());
		
		if(dao.savePost(post)) {
			
			 @SuppressWarnings("deprecation")
			String path = request.getRealPath("/") + "blog_post" + File.separator + part.getSubmittedFileName();
             Helper.saveFile(part.getInputStream(), path);
			out.println("done");
			
		    response.sendRedirect("profile.jsp");
			
		}else {
			out.println("error");
		}
		
		
	}

}
