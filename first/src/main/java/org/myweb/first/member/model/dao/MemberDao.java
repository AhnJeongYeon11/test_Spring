package org.myweb.first.member.model.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.myweb.first.common.Paging;
import org.myweb.first.common.Search;
import org.myweb.first.common.SearchDate;
import org.myweb.first.member.model.vo.Member;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("memberDao")
public class MemberDao {
	//마이바티스 매퍼 파일에 쿼리문 별도로 작성함
	//root-context.xml 에 설정된 마이바티스 세션 객체를 연결 사용함
	@Autowired   //root-context.xml 에서 생성한 객체를 자동 연결함
	private SqlSessionTemplate sqlSessionTemplate;

	public Member selectLogin(Member member) {
		return sqlSessionTemplate.selectOne("memberMapper.selectLogin", member);
	}

	public int insertMember(Member member) {
		return sqlSessionTemplate.insert("memberMapper.insertMember", member);
	}

	public Member selectMember(String userid) {
		return sqlSessionTemplate.selectOne("memberMapper.selectMember", userid);
	}

	public int updateMember(Member member) {
		return sqlSessionTemplate.update("memberMapper.updateMember", member);
	}

	public int deleteMember(String userid) {
		return sqlSessionTemplate.delete("memberMapper.deleteMember", userid);
	}

	public ArrayList<Member> selectList() {
		List<Member> list = sqlSessionTemplate.selectList("memberMapper.selectList");
		return (ArrayList<Member>)list;
	}

	public int updateLoginOK(Member member) {
		return sqlSessionTemplate.update("memberMapper.updateLoginOK", member);
	}

	public ArrayList<Member> selectSearchUserid(Search search) {
		List<Member> list = sqlSessionTemplate.selectList("memberMapper.selectSearchUserid", search);
		return (ArrayList<Member>)list;
	}

	public ArrayList<Member> selectSearchGender(Search search) {
		List<Member> list = sqlSessionTemplate.selectList("memberMapper.selectSearchGender", search);
		return (ArrayList<Member>)list;
	}

	public ArrayList<Member> selectSearchAge(Search search) {
		List<Member> list = sqlSessionTemplate.selectList("memberMapper.selectSearchAge", search);
		return (ArrayList<Member>)list;
	}

	public ArrayList<Member> selectSearchEnrollDate(Search search) {
		List<Member> list = sqlSessionTemplate.selectList("memberMapper.selectSearchEnrollDate", search);
		return (ArrayList<Member>)list;
	}

	public ArrayList<Member> selectSearchLoginOK(Search search) {
		List<Member> list = sqlSessionTemplate.selectList("memberMapper.selectSearchLoginOK", search);
		return (ArrayList<Member>)list;
	}

	public int selectCheckId(String userid) {
		return sqlSessionTemplate.selectOne("memberMapper.selectCheckId", userid);
	}

	//페이징 처리 관련 메소드 ---------------------------------------------------------------------------
	public int selectListCount() {
		return sqlSessionTemplate.selectOne("memberMapper.selectListCount");
	}

	public ArrayList<Member> selectListP(Paging paging) {
		List<Member> list = sqlSessionTemplate.selectList("memberMapper.selectListP", paging);
		return (ArrayList<Member>)list;
	}

	public int selectSearchUserIdCount(String keyword) {
		return sqlSessionTemplate.selectOne("memberMapper.selectSearchUserIdCount", keyword);
	}

	public int selectSearchGenderCount(String keyword) {
		return sqlSessionTemplate.selectOne("memberMapper.selectSearchGenderCount", keyword);
	}

	public int selectSearchAgeCount(int age) {
		return sqlSessionTemplate.selectOne("memberMapper.selectSearchAgeCount", age);
	}

	public int selectSearchEnrollDateCount(SearchDate searchDate) {
		return sqlSessionTemplate.selectOne("memberMapper.selectSearchEnrollDateCount", searchDate);
	}

	public int selectSearchLoginOKCount(String keyword) {
		return sqlSessionTemplate.selectOne("memberMapper.selectSearchLoginOKCount", keyword);
	}

}













