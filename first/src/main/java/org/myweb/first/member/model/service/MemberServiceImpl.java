package org.myweb.first.member.model.service;

import java.util.ArrayList;

import org.myweb.first.common.Paging;
import org.myweb.first.common.Search;
import org.myweb.first.common.SearchDate;
import org.myweb.first.member.model.dao.MemberDao;
import org.myweb.first.member.model.vo.Member;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

//스프링에서는 서비스 interface 를 상속받은 후손클래스를 작성하도록 정해놓음
@Service("memberService")
public class MemberServiceImpl implements MemberService {
	//dao 와 연결 처리 : DI(Dependency Injection : 의존성 주업)
	@Autowired  //자동 DI 처리됨 ; 자동 객체 생성됨
	private MemberDao memberDao;

	@Override
	public Member selectLogin(Member member) {
		return memberDao.selectLogin(member);
	}

	@Override
	public int insertMember(Member member) {
		return memberDao.insertMember(member);
	}

	@Override
	public Member selectMember(String userid) {
		return memberDao.selectMember(userid);
	}

	@Override
	public int updateMember(Member member) {
		return memberDao.updateMember(member);
	}

	@Override
	public int deleteMember(String userid) {
		return memberDao.deleteMember(userid);
	}

	@Override
	public ArrayList<Member> selectList() {
		return memberDao.selectList();
	}

	@Override
	public int updateLoginOK(Member member) {
		return memberDao.updateLoginOK(member);
	}

	@Override
	public ArrayList<Member> selectSearchUserid(Search search) {
		return memberDao.selectSearchUserid(search);
	}

	@Override
	public ArrayList<Member> selectSearchGender(Search search) {
		return memberDao.selectSearchGender(search);
	}

	@Override
	public ArrayList<Member> selectSearchAge(Search search) {
		return memberDao.selectSearchAge(search);
	}

	@Override
	public ArrayList<Member> selectSearchEnrollDate(Search search) {
		return memberDao.selectSearchEnrollDate(search);
	}

	@Override
	public ArrayList<Member> selectSearchLoginOK(Search search) {
		return memberDao.selectSearchLoginOK(search);
	}

	@Override
	public int selectCheckId(String userid) {
		return memberDao.selectCheckId(userid);
	}

	@Override
	public int selectListCount() {
		return memberDao.selectListCount();
	}

	@Override
	public ArrayList<Member> selectListP(Paging paging) {
		return memberDao.selectListP(paging);
	}	

	@Override
	public int selectSearchUserIdCount(String keyword) {
		return memberDao.selectSearchUserIdCount(keyword);
	}

	@Override
	public int selectSearchGenderCount(String keyword) {
		return memberDao.selectSearchGenderCount(keyword);
	}

	@Override
	public int selectSearchAgeCount(int age) {
		return memberDao.selectSearchAgeCount(age);
	}

	@Override
	public int selectSearchEnrollDateCount(SearchDate searchDate) {
		return memberDao.selectSearchEnrollDateCount(searchDate);
	}

	@Override
	public int selectSearchLoginOKCount(String keyword) {
		return memberDao.selectSearchLoginOKCount(keyword);
	}	
	
}








