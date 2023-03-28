package com.techblog.dao;
import java.sql.*;

import com.techblog.entities.User;
public class UserDao {
    private Connection con;

	public UserDao(Connection con) {
		super();
		this.con = con;
	}
	
	// Update Information
	
	public boolean updateUser(User user) {
		boolean f=false;
		 try {
			 
			 String query="update user set name=?, email=?, password=?, gender=?, about=?, profile=? where id=?";
			 
			 PreparedStatement psmt=con.prepareStatement(query);
			 psmt.setString(1, user.getName());
			 psmt.setString(2, user.getEmail());
			 psmt.setString(3, user.getPassword());
			 psmt.setString(4, user.getGender());
			 psmt.setString(5, user.getAbout());
			 psmt.setString(6, user.getProfile());
			 psmt.setInt(7, user.getId());
			 
			 psmt.executeUpdate();
			 f=true;
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return f;
	 }
	
    // To save user into database from signup page 
	public boolean saveUser(User user) {
		boolean f=false; 
		try {
			
			
			String query="insert into user(name,email,password,gender,about) values(?,?,?,?,?)";
			PreparedStatement pstmt=this.con.prepareStatement(query);
			pstmt.setString(1, user.getName());
			pstmt.setString(2, user.getEmail());
			pstmt.setString(3, user.getPassword());
			pstmt.setString(4, user.getGender());
			pstmt.setString(5, user.getAbout());
			
			pstmt.executeUpdate();
			f=true;
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return f;
	}
	
	// by user email and password login 
	public User getUserByEmailAndPassword(String email, String password) {
		User user=null;
		
		try {
			
			String query="select * from user where email=? and password=?";
			
			PreparedStatement pstmt=con.prepareStatement(query);
			
			pstmt.setString(1, email);
			pstmt.setString(2, password);
			
			ResultSet set=pstmt.executeQuery();
			
			if(set.next()) {
				
				user=new User();
				// data from database
				String name=set.getString("name");
				// Set data to user object 
				user.setName(name);
				user.setId(set.getInt("id"));
				user.setEmail(set.getString("email"));
				user.setPassword(set.getString("password"));
				user.setGender(set.getString("gender"));
				user.setAbout(set.getString("about"));
				user.setDatetime(set.getTimestamp("joiningdate"));
				user.setProfile(set.getString("profile"));
			}
			
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
		return user;
	}
	
	
	
}
