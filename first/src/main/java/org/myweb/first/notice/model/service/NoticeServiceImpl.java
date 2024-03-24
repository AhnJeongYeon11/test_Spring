package org.myweb.first.notice.model.service;

import java.util.ArrayList;

import org.myweb.first.notice.model.dao.NoticeDao;
import org.myweb.first.notice.model.vo.Notice;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service("noticeService")
public class NoticeServiceImpl implements NoticeService {
	
	@Autowired
	private NoticeDao noticeDao;

	@Override
	public ArrayList<Notice> selectTop3() {
		return noticeDao.selectTop3();
	}

}
