package cn.edu.ldu.servlet;

import java.io.IOException;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import cn.edu.ldu.bean.Title;
import cn.edu.ldu.dao.TitleDao;
import cn.edu.ldu.daoImpl.TitleDaoImpl;
import cn.edu.ldu.util.Page;
import cn.edu.ldu.util.PageUtil;

public class GetTitleListServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		int currentPage = 0;
		String currentPageStr = request.getParameter("currentPage");
		if(currentPageStr == null || "".equals(currentPageStr)){
			currentPage = 1;
		}else {
			currentPage = Integer.parseInt(currentPageStr);
		}
		TitleDaoImpl titleDaoImpl=new TitleDaoImpl();
		TitleDao titleDao=titleDaoImpl;
		Page page = PageUtil.createPage(5, titleDao.findAllCount(), currentPage);
		List<Title> titles = titleDao.findAllTitles(page);
		request.setAttribute("titles", titles);
		request.setAttribute("page", page);
		ServletContext servletContext = getServletContext();
		RequestDispatcher dispatcher = servletContext.
					getRequestDispatcher("/jsp/title.jsp");//跳转到消息列表页
		dispatcher.forward(request, response);
	}

}
