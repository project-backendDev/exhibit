package com.project.exhibit.imageslide;

import java.util.Date;

public class ImageSlide {

	private int artcl_seq;
	private String image_Nm;
	private String origin_Nm;
	private String change_Nm;
	private String url;
	private Date reg_date;
	private String add_Item1;
	private String add_Item2;
	private String add_Item3;
	private String add_Item4;
	private String add_Item5;
	
	public int getArtcl_seq() {
		return artcl_seq;
	}
	public void setArtcl_seq(int artcl_seq) {
		this.artcl_seq = artcl_seq;
	}
	public String getImage_Nm() {
		return image_Nm;
	}
	public void setImage_Nm(String image_Nm) {
		this.image_Nm = image_Nm;
	}
	public String getOrigin_Nm() {
		return origin_Nm;
	}
	public void setOrigin_Nm(String origin_Nm) {
		this.origin_Nm = origin_Nm;
	}
	public String getChange_Nm() {
		return change_Nm;
	}
	public void setChange_Nm(String change_Nm) {
		this.change_Nm = change_Nm;
	}
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	public Date getReg_date() {
		return reg_date;
	}
	public void setReg_date(Date reg_date) {
		this.reg_date = reg_date;
	}
	public String getAdd_Item1() {
		return add_Item1;
	}
	public void setAdd_Item1(String add_Item1) {
		this.add_Item1 = add_Item1;
	}
	public String getAdd_Item2() {
		return add_Item2;
	}
	public void setAdd_Item2(String add_Item2) {
		this.add_Item2 = add_Item2;
	}
	public String getAdd_Item3() {
		return add_Item3;
	}
	public void setAdd_Item3(String add_Item3) {
		this.add_Item3 = add_Item3;
	}
	public String getAdd_Item4() {
		return add_Item4;
	}
	public void setAdd_Item4(String add_Item4) {
		this.add_Item4 = add_Item4;
	}
	public String getAdd_Item5() {
		return add_Item5;
	}
	public void setAdd_Item5(String add_Item5) {
		this.add_Item5 = add_Item5;
	}
	
	@Override
	public String toString() {
		return "ImageSlide [artcl_seq=" + artcl_seq + ", image_Nm=" + image_Nm + ", origin_Nm=" + origin_Nm
				+ ", change_Nm=" + change_Nm + ", url=" + url + ", reg_date=" + reg_date + ", add_Item1=" + add_Item1
				+ ", add_Item2=" + add_Item2 + ", add_Item3=" + add_Item3 + ", add_Item4=" + add_Item4 + ", add_Item5="
				+ add_Item5 + "]";
	}
	
	
	
}
