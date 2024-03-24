package org.myweb.first.notice.model.service;

import java.util.ArrayList;

import org.myweb.first.notice.model.vo.Notice;

public interface NoticeService {
	
	ArrayList<Notice> selectTop3();
	

}
