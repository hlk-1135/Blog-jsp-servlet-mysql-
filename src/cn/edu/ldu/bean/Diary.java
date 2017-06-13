package cn.edu.ldu.bean;

import java.util.Date;


public class Diary {
	
	private int dirary_id;
	private String dirary_content;
	private Date dirary_timeDate;
	public int getDirary_id() {
		return dirary_id;
	}
	public void setDirary_id(int dirary_id) {
		this.dirary_id = dirary_id;
	}
	public String getDirary_content() {
		return dirary_content;
	}
	public void setDirary_content(String dirary_content) {
		this.dirary_content = dirary_content;
	}
	public Date getDirary_timeDate() {
		return dirary_timeDate;
	}
	public void setDirary_timeDate(Date dirary_timeDate) {
		this.dirary_timeDate = dirary_timeDate;
	}

}
