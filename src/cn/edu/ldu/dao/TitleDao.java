package cn.edu.ldu.dao;

import java.util.List;
import cn.edu.ldu.bean.Title;
import cn.edu.ldu.util.Page;

public interface TitleDao {
	
	public void addTitle(Title title);   //定义添加文章的方法
	public Title findTitleByArticle(String tittle_article); //定义按照文章标题查找文章的方法
	public Title findTitleById(int tittle_id); //定义按照文章id查找文章的方法
	public List<Title> findAllTitles(Page page);//定义按分页信息查询所有文章的方法
	public int findAllCount();					//定义查询的记录数
	
}