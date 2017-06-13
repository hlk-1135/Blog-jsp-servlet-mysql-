package cn.edu.ldu.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.edu.ldu.bean.Diary;
import cn.edu.ldu.dao.DiaryDao;
import cn.edu.ldu.daoImpl.DiaryDaoImpl;
import cn.edu.ldu.util.Page;
import cn.edu.ldu.util.PageUtil;

public class GetDiaryListServlet extends HttpServlet {

	/**
	 * 获取出所有的日记
	 */
	private static final long serialVersionUID = 1L;

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		int currentPage = 0;
		String currentPageStr = request.getParameter("currentPage");
		if(currentPageStr == null || "".equals(currentPageStr)){
			currentPage = 1;
		}else {
			currentPage = Integer.parseInt(currentPageStr);
		}
		DiaryDaoImpl diaryDaoImpl=new DiaryDaoImpl();
		DiaryDao diaryDao=diaryDaoImpl;
		Page page=PageUtil.createPage(5, diaryDao.findAllCount(), currentPage);
		List<Diary> diaries=diaryDao.findAllDiarys(page);
		request.setAttribute("diaries", diaries);
		request.setAttribute("page", page);
		ServletContext servletContext = getServletContext();
		RequestDispatcher dispatcher = servletContext.
					getRequestDispatcher("/jsp/diary.jsp");//跳转到消息列表页
		dispatcher.forward(request, response);
	}

}
