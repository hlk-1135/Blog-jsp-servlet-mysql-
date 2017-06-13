package cn.edu.ldu.dao;

import java.util.List;

import cn.edu.ldu.bean.Diary;
import cn.edu.ldu.util.Page;
public interface DiaryDao {
	
	public void addDiary(Diary diary);
	public List<Diary> findAllDiarys(Page page);//定义按分页信息查询所有日记
	public void deleteDiary(int diary_id);
	public int findAllCount();					//定义查询的记录数
}
