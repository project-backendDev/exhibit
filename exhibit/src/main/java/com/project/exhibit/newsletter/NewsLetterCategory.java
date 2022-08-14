package com.project.exhibit.newsletter;

import java.util.Date;

public class NewsLetterCategory {
	
	/**
	 
	-- 뉴스레터 카테고리 테이블
	CREATE TABLE `EXHIBIT_NEWSLETTER_CATEGORY` (
	  `CATEGORY_SEQ` INT NOT NULL AUTO_INCREMENT,
	  `CATEGORY` VARCHAR(50) NOT NULL,
	  `POSITION` INT,
	  `REG_DATE` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP,
	  `EDIT_DATE` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	  PRIMARY KEY (`CATEGORY_SEQ`)
	  )
	ENGINE = InnoDB
	DEFAULT CHARACTER SET = utf8
	COMMENT = 'CATEGORY_SEQ - 번호\n
	CATEGORY - 구분명\n
	POSITION - 포지션(순서)
	REG_DATE - 작성일자\n
	EDIT_DATE - 수정일자\n';
		 
	 **/
	
	private Integer category_Seq;
	private String category;
	private Integer position;
	private Date reg_date;
	private Date edit_date;
	
	public Integer getCategory_Seq() {
		return category_Seq;
	}
	public void setCategory_Seq(Integer category_Seq) {
		this.category_Seq = category_Seq;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public Integer getPosition() {
		return position;
	}
	public void setPosition(Integer position) {
		this.position = position;
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
}
