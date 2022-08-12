package com.project.exhibit.information;

import java.util.Date;

public class Information {

	private int reserve_Seq;
	private String name;
	private String tel;
	private String visit_day;
	private String visit_time;
	private String reserve_people;
	private String transfer;
	private Date reg_date;
	private Date edit_date;
	private String add_item1;
	private String add_item2;
	private String add_item3;
	private String add_item4;
	private String add_item5;

	public int getReserve_Seq() {
		return reserve_Seq;
	}

	public void setReserve_Seq(int reserve_Seq) {
		this.reserve_Seq = reserve_Seq;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getVisit_day() {
		return visit_day;
	}

	public void setVisit_day(String visit_day) {
		this.visit_day = visit_day;
	}

	public String getVisit_time() {
		return visit_time;
	}

	public void setVisit_time(String visit_time) {
		this.visit_time = visit_time;
	}

	public String getReserve_people() {
		return reserve_people;
	}

	public void setReserve_people(String reserve_people) {
		this.reserve_people = reserve_people;
	}

	public String getTransfer() {
		return transfer;
	}

	public void setTransfer(String transfer) {
		this.transfer = transfer;
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

	public String getAdd_item1() {
		return add_item1;
	}

	public void setAdd_item1(String add_item1) {
		this.add_item1 = add_item1;
	}

	public String getAdd_item2() {
		return add_item2;
	}

	public void setAdd_item2(String add_item2) {
		this.add_item2 = add_item2;
	}

	public String getAdd_item3() {
		return add_item3;
	}

	public void setAdd_item3(String add_item3) {
		this.add_item3 = add_item3;
	}

	public String getAdd_item4() {
		return add_item4;
	}

	public void setAdd_item4(String add_item4) {
		this.add_item4 = add_item4;
	}

	public String getAdd_item5() {
		return add_item5;
	}

	public void setAdd_item5(String add_item5) {
		this.add_item5 = add_item5;
	}

	@Override
	public String toString() {
		return "Information [reserve_Seq=" + reserve_Seq + ", name=" + name + ", tel=" + tel + ", visit_day="
				+ visit_day + ", visit_time=" + visit_time + ", reserve_people=" + reserve_people + ", transfer="
				+ transfer + ", reg_date=" + reg_date + ", edit_date=" + edit_date + ", add_item1=" + add_item1
				+ ", add_item2=" + add_item2 + ", add_item3=" + add_item3 + ", add_item4=" + add_item4 + ", add_item5="
				+ add_item5 + "]";
	}

}
