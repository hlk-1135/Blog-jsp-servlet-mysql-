package cn.edu.ldu.bean;

import java.util.Date;

public class Title {
	
	private int title_id;
	private String title_article;  //文章的标题
	private Date title_time;       //文章的时间
	private int title_read;        //文章阅读量
	private String title_summary;  //文章的摘要
	private String title_content;  //文章的具体内容
	
	public Title() {
		
	}
	
	public Title(int title_id, String title_article, Date title_time,
			int title_read, String title_summary, String title_content) {
		super();
		this.title_id = title_id;
		this.title_article = title_article;
		this.title_time = title_time;
		this.title_read = title_read;
		this.title_summary = title_summary;
		this.title_content = title_content;
	}

	public int getTitle_id() {
		return title_id;
	}

	public void setTitle_id(int title_id) {
		this.title_id = title_id;
	}

	public String getTitle_article() {
		return title_article;
	}

	public void setTitle_article(String title_article) {
		this.title_article = title_article;
	}

	public Date getTitle_time() {
		return title_time;
	}

	public void setTitle_time(Date title_time) {
		this.title_time = title_time;
	}

	public int getTitle_read() {
		return title_read;
	}

	public void setTitle_read(int title_read) {
		this.title_read = title_read;
	}

	public String getTitle_summary() {
		return title_summary;
	}

	public void setTitle_summary(String title_summary) {
		this.title_summary = title_summary;
	}

	public String getTitle_content() {
		return title_content;
	}

	public void setTitle_content(String title_content) {
		this.title_content = title_content;
	}
		
}
