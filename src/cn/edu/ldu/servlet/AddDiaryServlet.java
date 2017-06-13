package cn.edu.ldu.servlet;

import java.io.IOException;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.edu.ldu.bean.Diary;
import cn.edu.ldu.daoImpl.DiaryDaoImpl;

public class AddDiaryServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		Diary diary=new Diary();
		String content;
		content=request.getParameter("content");
		diary.setDirary_content(content);
		diary.setDirary_timeDate(new Date());
		
		DiaryDaoImpl diImpl=new DiaryDaoImpl();
		diImpl.addDiary(diary);
		request.getRequestDispatcher("/servlet/GetDiaryListServlet").forward(request,response);
	}

}