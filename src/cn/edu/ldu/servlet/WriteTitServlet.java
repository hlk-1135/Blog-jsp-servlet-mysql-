package cn.edu.ldu.servlet;

import java.io.IOException;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import cn.edu.ldu.bean.Title;
import cn.edu.ldu.daoImpl.TitleDaoImpl;

public class WriteTitServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		Title title=new Title();
		String article,content,summary;
		
		try {
			article=request.getParameter("article");
			content=request.getParameter("content");
			summary=request.getParameter("summary");
			title.setTitle_article(article);
			title.setTitle_content(content);
			title.setTitle_summary(summary);
			title.setTitle_time(new Date());
			
			TitleDaoImpl titleDaoImpl=new TitleDaoImpl();
			titleDaoImpl.addTitle(title);
			
			request.getRequestDispatcher("/servlet/GetTitleListServlet").forward(request,response);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
