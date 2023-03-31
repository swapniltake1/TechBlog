package com.techblog.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import com.techblog.entities.Category;
import com.techblog.entities.Post;

public class PostDao {

	Connection con;

	public PostDao(Connection con) {
		super();
		this.con = con;
	}
	
	
	public ArrayList<Category> getAllCategories(){
		
		ArrayList<Category> list = new ArrayList<>();
		
		
		try {
			// Create query
			String query="select * from categoriess";
			// getting connenction
			Statement statement=this.con.createStatement();
			// Execute query
			ResultSet set=statement.executeQuery(query);
			//getting result and storing into list 
			while (set.next()) {
				 int cid = set.getInt("cid");
	                String name = set.getString("cname");
	                String description = set.getString("cdescription");
	                Category c = new Category(cid, name, description);
	                list.add(c);
				
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return list;
		
	}
	
	public boolean savePost(Post p) {
		boolean f=false;
		try {
			
			String q="insert into post(ptitle,pcontent,pcode,pphoto,userid,cid) values(?,?,?,?,?,?)";
			
			PreparedStatement psmt=con.prepareStatement(q);
			psmt.setString(1,p.getPtitle() );
			psmt.setString(2, p.getPcontent());
			psmt.setString(3, p.getPcode());
			psmt.setString(4, p.getPphoto());
			psmt.setInt(5, p.getUserid());
			psmt.setInt(6, p.getCid());
			
			psmt.executeUpdate();
			f=true;
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
		
		return f;
		
	}
	
}
