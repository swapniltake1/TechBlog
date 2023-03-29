package com.techblog.helper;

import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;

public class Helper {

	/// fuNCtion for detete 1st photo which one we updating
	public static boolean deleteFile(String path) {
		boolean f=false;
		
		try {
			
			File file=new File(path);
			
			f=file.delete();
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return f;
	}
	
	
	// Function for save profile photo into project directory.
	public static boolean saveFile(InputStream is, String path) {
		boolean f=false;
		
		try {
			byte b[]=new byte[is.available()];
			is.read(b);
			
			FileOutputStream fileOutputStream=new FileOutputStream(path);
			fileOutputStream.write(b);
			
			fileOutputStream.flush();
			
			fileOutputStream.close();
			
			f=true;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return f;
	}
}
