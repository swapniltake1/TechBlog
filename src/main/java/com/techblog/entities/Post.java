package com.techblog.entities;

import java.sql.Timestamp;

public class Post {

	private int pid;
	private String ptitle;
	private String pcontent;
	private String pcode;
	private String pphoto;
	private Timestamp pdate;
	private int cid;
	private int userid;
	
	
	public Post(String ptitle, String pcontent, String pcode, String pphoto, int cid, int userid) {
		super();
		this.ptitle = ptitle;
		this.pcontent = pcontent;
		this.pcode = pcode;
		this.pphoto = pphoto;
		this.cid = cid;
		this.userid = userid;
	}
	
	
	public Post() {
		super();
		// TODO Auto-generated constructor stub
	}


	public Post(String ptitle, String pcontent, String pcode, String pphoto, Timestamp pdate, int cid, int userid) {
		super();
		this.ptitle = ptitle;
		this.pcontent = pcontent;
		this.setPcode(pcode);
		this.pphoto = pphoto;
		this.pdate = pdate;
		this.cid = cid;
		this.setUserid(userid);
	}


	public Post(int pid, String ptitle, String pcontent, String pcode, String pphoto, Timestamp pdate, int cid, int userid) {
		super();
		this.pid = pid;
		this.ptitle = ptitle;
		this.pcontent = pcontent;
		this.setPcode(pcode);
		this.pphoto = pphoto;
		this.pdate = pdate;
		this.cid = cid;
		this.setUserid(userid);
	}


	public int getPid() {
		return pid;
	}


	public void setPid(int pid) {
		this.pid = pid;
	}


	public String getPtitle() {
		return ptitle;
	}


	public void setPtitle(String ptitle) {
		this.ptitle = ptitle;
	}


	public String getPcontent() {
		return pcontent;
	}


	public void setPcontent(String pcontent) {
		this.pcontent = pcontent;
	}


	public String getPphoto() {
		return pphoto;
	}


	public void setPphoto(String pphoto) {
		this.pphoto = pphoto;
	}


	public Timestamp getPdate() {
		return pdate;
	}


	public void setPdate(Timestamp pdate) {
		this.pdate = pdate;
	}


	public int getCid() {
		return cid;
	}


	public void setCid(int cid) {
		this.cid = cid;
	}


	public String getPcode() {
		return pcode;
	}


	public void setPcode(String pcode) {
		this.pcode = pcode;
	}


	public int getUserid() {
		return userid;
	}


	public void setUserid(int userid) {
		this.userid = userid;
	}
	
	
	

}
