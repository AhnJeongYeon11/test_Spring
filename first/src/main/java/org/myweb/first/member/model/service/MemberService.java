package org.myweb.first.member.model.service;

import java.util.ArrayList;

import org.myweb.first.common.Paging;
import org.myweb.first.common.Search;
import org.myweb.first.common.SearchDate;
import org.myweb.first.member.model.vo.Member;

//스프링에서는 비즈니스 모델의 서비스 클래스는 인터페이스로 만들도록 정해져 있음
public interface MemberService {
	Member selectLogin(Member member);	
	int insertMember(Member member);
	Member selectMember(String userid);
	int updateMember(Member member);
	int deleteMember(String userid);
	ArrayList<Member> selectList();
	int updateLoginOK(Member member);
	//페이징 처리 적용으로 수정한 메소드 ---------------------------------
	ArrayList<Member> selectSearchUserid(Search search);
	ArrayList<Member> selectSearchGender(Search search);
	ArrayList<Member> selectSearchAge(Search search);
	ArrayList<Member> selectSearchEnrollDate(Search search);
	ArrayList<Member> selectSearchLoginOK(Search search);
	int selectCheckId(String userid);
	//페이징 처리 추가 처리된 메소드 -----------------------------------
	int selectListCount();
	ArrayList<Member> selectListP(Paging paging);
	int selectSearchUserIdCount(String keyword);
	int selectSearchGenderCount(String keyword);
	int selectSearchAgeCount(int age);
	int selectSearchEnrollDateCount(SearchDate searchDate);
	int selectSearchLoginOKCount(String keyword);
}
