package com.project.exhibit.sayeon;

import java.util.Date;

public class Sayeon {

	private Integer artcl_Seq;
	private String title;
	private String content;
	private String writer;
	private String phone;
	private Date reg_date;
	private Date edit_date;
	private int hit;
	private String img_Origin_Nm;
	private String img_File_Nm;
	private String img_Path;
	
	private Sayeon preView;
	private Sayeon nextView;
	
	public Integer getArtcl_Seq() {
		return artcl_Seq;
	}
	public void setArtcl_Seq(Integer artcl_Seq) {
		this.artcl_Seq = artcl_Seq;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public Date getReg_date() {
		return reg_date;
	}
	public void setReg_date(Date reg_date) {
		this.reg_date = reg_date;
	}
	public Date getEdit_date() {
		return edit_date;
	}
	public void setEdit_date(Date edit_date) {
		this.edit_date = edit_date;
	}
	public int getHit() {
		return hit;
	}
	public void setHit(int hit) {
		this.hit = hit;
	}
	public String getImg_Origin_Nm() {
		return img_Origin_Nm;
	}
	public void setImg_Origin_Nm(String img_Origin_Nm) {
		this.img_Origin_Nm = img_Origin_Nm;
	}
	public String getImg_File_Nm() {
		return img_File_Nm;
	}
	public void setImg_File_Nm(String img_File_Nm) {
		this.img_File_Nm = img_File_Nm;
	}
	public String getImg_Path() {
		return img_Path;
	}
	public void setImg_Path(String img_Path) {
		this.img_Path = img_Path;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public Sayeon getPreView() {
		return preView;
	}
	public void setPreView(Sayeon preView) {
		this.preView = preView;
	}
	public Sayeon getNextView() {
		return nextView;
	}
	public void setNextView(Sayeon nextView) {
		this.nextView = nextView;
	}
	
	
	
}
