package cn.edu.ldu.daoImpl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;
import cn.edu.ldu.bean.Diary;
import cn.edu.ldu.dao.DiaryDao;
import cn.edu.ldu.util.DBConn;
import cn.edu.ldu.util.Page;

public class DiaryDaoImpl implements DiaryDao {

	/**
	 * 写日记
	 */
	@Override
	public void addDiary(Diary diary) {

		Connection conn=DBConn.getConnection();
		String addSql="insert into diary(diary_content,diary_time) values (?,?)";
		PreparedStatement stmt=null;
		try {
			SimpleDateFormat s = new SimpleDateFormat("yyyy-MM-dd");
            String data=s.format(diary.getDirary_timeDate());
			stmt=conn.prepareStatement(addSql);
			stmt.setString(1, diary.getDirary_content());
			stmt.setString(2, data);
			stmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBConn.close(stmt);
			DBConn.close(conn);
		}
	}

	@Override
	public void deleteDiary(int diary_id) {
		

	}
	
	/**
	 * 根据时间降序并且分页查找所有的日记
	 */
	@Override
	public List<Diary> findAllDiarys(Page page) {
		Connection conn=DBConn.getConnection();
		String sql="select * from diary order by diary_time desc limit ?,?";
		PreparedStatement stmt=null;
		ResultSet rs=null;
		List<Diary> diarys=new ArrayList<Diary>();
		try {
			stmt=conn.prepareStatement(sql);
			stmt.setInt(1, page.getBeginIndex());
			stmt.setInt(2, page.getEveryPage());
			rs=stmt.executeQuery();
			while(rs.next()) {
				Diary diary=new Diary();
				diary.setDirary_content(rs.getString(2));
				diary.setDirary_timeDate(rs.getDate(3));
				diarys.add(diary);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBConn.close(rs);	
			DBConn.close(stmt);
			DBConn.close(conn);
		}
		return diarys;
	}

	/**
	 * 查询总的记录数
	 */
	@Override
	public int findAllCount() {
		Connection conn=DBConn.getConnection();
		String sql="select count(*) from diary";
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