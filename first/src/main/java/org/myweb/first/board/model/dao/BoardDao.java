package org.myweb.first.board.model.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.myweb.first.board.model.vo.Board;
import org.myweb.first.common.Paging;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("boardDao")
public class BoardDao {
	//마이바티스 매퍼파일에 쿼리문 별도로 작성함
	//root-context.xml 에 저장된 마이바티스 연결 객체를 사용해서, 매퍼의 쿼리문을 사용 실행 처리함
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	//조회수 많은 인기 게시글 3개 Top-3 조회
	public ArrayList<Board> selectTop3(){
		List<Board> list = sqlSessionTemplate.selectList("boardMapper.selectTop3");
		return (ArrayList<Board>)list;
		
		
		
	}

	public int selectListCount() {
		return sqlSessionTemplate.selectOne("boardMapper.selectListCount");
	}

	public ArrayList<Board> selectList(Paging paging) {
		List<Board> list = sqlSessionTemplate.selectList("boardMapper.selectList", paging);
		return (ArrayList<Board>)list;
	}

	public int insertOriginBoard(Board board) {
		// TODO Auto-generated method stub
		return sqlSessionTemplate.insert("boardMapper.insertOriginBoard", board);
	}

	public void updateAddReadCount(int boardNum) {
		sqlSessionTemplate.update("boardMapper.updateAddReadCount", boardNum);
	}

	public Board selectBoard(int boardNum) {
		return sqlSessionTemplate.selectOne("boardMapper.selectBoard", boardNum);
	}

	public int updateReplySeq(Board reply) {
		int result = 0;
		
		if(reply.getBoardLev() == 2) {
			result = sqlSessionTemplate.update("boardMapper.updateReplySeq1",reply);
		}
		if(reply.getBoardLev() == 3) {
			result = sqlSessionTemplate.update("boardMapper.updateReplySeq2",reply);
		}
		
		return result;
	}

	public int insertReply(Board reply) {
		int result = 0;
		
		if(reply.getBoardLev() == 2) {
			result = sqlSessionTemplate.insert("boardMapper.insertReply1",reply);
		}
		if(reply.getBoardLev() == 3) {
			result = sqlSessionTemplate.insert("boardMapper.insertReply2",reply);
		}
		
		return result;
	}

	public int deleteBoard(Board board) {
		return sqlSessionTemplate.delete("boardMapper.deleteBoard", board);
	}

	public int updateReply(Board reply) {
		// TODO Auto-generated method stub
		return sqlSessionTemplate.update("boardMapper.updateReply", reply);
	}
	
	public int updateOrigin(Board board) {
		// TODO Auto-generated method stub
		return sqlSessionTemplate.update("boardMapper.updateOrigin", board);
	}
	

}
