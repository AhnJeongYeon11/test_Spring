package org.myweb.first.notice.model.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.myweb.first.notice.model.vo.Notice;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("noticeDao")
public class NoticeDao {
	//마이바티스 매퍼 파일에 쿼리문 별도로 작성함
		//root-context.xml 에 설정된 마이바티스 세션 객체를 연결 사용함
		@Autowired	//root-context.xml 에서 생성한 객체를 자동 연결함
		private SqlSessionTemplate sqlSessionTemplate;
		
		//새 공지글 3개 조회 리턴 : 작성날짜로 Top-3 분석 이용함
		public ArrayList<Notice> selectTop3(){
			List<Notice> list = sqlSessionTemplate.selectList("noticeMapper.selectTop3");
			return (ArrayList<Notice>)list;
		}

}








