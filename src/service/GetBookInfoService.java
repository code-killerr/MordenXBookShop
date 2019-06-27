package service;

import java.util.List;

import dao.BookInfoDao;
import models.BookInfoModel;

public class GetBookInfoService {
	BookInfoDao bookInfoDao=new BookInfoDao();
	public List<BookInfoModel> getBookInfoByType(String type) throws Exception {
			return bookInfoDao.findByType(type);
	}
	
	public List<BookInfoModel> getBookInfoByName(String name) throws Exception {
		return bookInfoDao.findByName(name);
	}
}
