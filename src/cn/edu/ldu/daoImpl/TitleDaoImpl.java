package cn.edu.ldu.daoImpl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

import cn.edu.ldu.bean.Title;
import cn.edu.ldu.dao.TitleDao;
import cn.edu.ldu.util.DBConn;
import cn.edu.ldu.util.Page;

public class TitleDaoImpl implements TitleDao {

	/**
	 * 写文章
	 */
	@Override
	public void addTitle(Title title) {
		Connection conn=DBConn.getConnection();
		String addSql="insert into title(title_article,title_time,title_summary,title_content)values(?,?,?,?)";
		PreparedStatement stmt=null;
		try {
			SimpleDateFormat s = new SimpleDateFormat("yyyy-MM-dd");
            String data=s.format(title.getTitle_time());
			stmt=conn.prepareStatement(addSql);
			stmt.setString(1, title.getTitle_article());
			stmt.setString(2, data);
			stmt.setString(3, title.getTitle_summary());
			stmt.setString(4, title.getTitle_content());
			stmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBConn.close(stmt);
			DBConn.close(conn);
		}
	}

	/**
	 * 按照文章标题查找文章
	 */
	@Override
	public Title findTitleByArticle(String tittle_article) {
		Connection conn=DBConn.getConnection();
		String findSql="select title_id,title_article,title_time,title_read,title_content from title where title_article=?";
		PreparedStatement stmt = null;	
		ResultSet rs = null;
		Title title=null;
		try {
			stmt=conn.prepareStatement(findSql);
			stmt.setString(1, tittle_article);
			rs=stmt.executeQuery();
			if(rs.next()) {
				title=new Title();
				title.setTitle_id(rs.getInt(1));
				title.setTitle_article(rs.getString(2));
				title.setTitle_time(rs.getTimestamp(3));
				title.setTitle_read(rs.getInt(4));
				title.setTitle_content(rs.getString(5));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBConn.close(rs);	
			DBConn.close(stmt);
			DBConn.close(conn);
		}
		return title;
	}

	/**
	 * 按照分页信息查询所有的文章
	 */
	@Override
	public List<Title> findAllTitles(Page page) {
		Connection conn=DBConn.getConnection();
		String sql="select * from title order by title_time desc limit ?,?";
		PreparedStatement stmt=null;
		ResultSet rs=null;
		List<Title> titles=new ArrayList<Title>();
		try {
			stmt=conn.prepareStatement(sql);
			stmt.setInt(1, page.getBeginIndex());
			stmt.setInt(2, page.getEveryPage());
			rs=stmt.executeQuery();
			while(rs.next()) {
				Title title=new Title();
				title.setTitle_id(rs.getInt(1));
				title.setTitle_article(rs.getString(2));
				title.setTitle_time(rs.getDate(3));
				title.setTitle_read(rs.getInt(4));
				title.setTitle_summary(rs.getString(5));
				titles.add(title);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBConn.close(rs);	
			DBConn.close(stmt);
			DBConn.close(conn);
		}
		return titles;
	}

	/**
	 * 按照文章id查询文章
	 */
	@Override
	public Title findTitleById(int tittle_id) {
		Connection conn=DBConn.getConnection();
		String findSql="select * from title where title_id=?";
		PreparedStatement stmt = null;	
		ResultSet rs = null;
		Title title=null;
		try {
			stmt=conn.prepareStatement(findSql);
			stmt.setInt(1, tittle_id);
			rs=stmt.executeQuery();
			if(rs.next()) {
				title=new Title();
				title.setTitle_id(rs.getInt(1));
				title.setTitle_article(rs.getString(2));
				title.setTitle_time(rs.getDate(3));
				title.setTitle_read(rs.getInt(4));
				title.setTitle_summary(rs.getString(5));
				title.setTitle_content(rs.getString(6));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBConn.close(rs);	
			DBConn.close(stmt);
			DBConn.close(conn);
		}
		return title;
	}
	
	/**
	 * 查询的总记录数
	 */
	@Override
	public int findAllCount() {
		Connection conn=DBConn.getConnection();
		String sql="select count(*) from title";
		PreparedStatement stmt=null;
		ResultSet rs=null;
		int count=0;
		try {
			stmt=conn.prepareStatement(sql);
			rs=stmt.executeQuery();
			if(rs.next()) {
				count=rs.getInt(1);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBConn.close(rs);	
			DBConn.close(stmt);
			DBConn.close(conn);
		}
		
		return count;
	}

}