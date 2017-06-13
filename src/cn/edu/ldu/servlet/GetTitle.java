package cn.edu.ldu.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.edu.ldu.bean.Title;
import cn.edu.ldu.dao.TitleDao;
import cn.edu.ldu.daoImpl.TitleDaoImpl;

public class GetTitle extends HttpServlet {

	/**
	 * 按照文章的标题获取出文章
	 */
	private static final long serialVersionUID = 1L;

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		int title_id=Integer.parseInt(request.getParameter("title_id"));
		int pretitle_id=Integer.parseInt(request.getParameter("title_id"))-1;
		int nexttitle_id=Integer.parseInt(request.getParameter("title_id"))+1;
		TitleDaoImpl titleDaoImpl=new TitleDaoImpl();
		TitleDao titleDao=titleDaoImpl;
		Title title=titleDao.findTitleById(title_id);
		Title pre_title=titleDao.findTitleById(pretitle_id);
		Title next_title=titleDao.findTitleById(nexttitle_id);
		request.setAttribute("title", title);
		request.setAttribute("pre_title", pre_title);
		request.setAttribute("next_title", next_title);
		ServletContext servletContext = getServletContext();
		RequestDispatcher dispatcher = servletContext.
					getRequestDispatcher("/jsp/show_title.jsp");	//跳转到消息显示页
		dispatcher.forward(request, response);
	}

}
