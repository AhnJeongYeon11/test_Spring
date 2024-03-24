package org.myweb.first.board.model.service;

import java.util.ArrayList;

import org.myweb.first.board.model.dao.BoardDao;
import org.myweb.first.board.model.vo.Board;
import org.myweb.first.common.Paging;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("boardService")
public class BoardServiceImpl implements BoardService{
	@Autowired
	private BoardDao boardDao;
	
	@Override
	public ArrayList<Board> selectTop3() {
		return boardDao.selectTop3();
	}

	@Override
	public int selectListCount() {
		return boardDao.selectListCount();
	}

	@Override
	public ArrayList<Board> selectList(Paging paging) {
		return boardDao.selectList(paging);
	}

	@Override
	public int insertOriginBoard(Board board) {
		return boardDao.insertOriginBoard(board);
	}

	@Override
	public void updateAddReadCount(int boardNum) {
		boardDao.updateAddReadCount(boardNum);
	}

	@Override
	public Board selectBoard(int boardNum) {
		return boardDao.selectBoard(boardNum);
	}

	@Override
	public int updateReplySeq(Board reply) {
		return boardDao.updateReplySeq(reply);
		
	}



	@Override
	public int insertReply(Board reply) {
		return boardDao.insertReply(reply);
	}

	@Override
	public int deleteBoard(Board board) {
		// TODO Auto-generated method stub
		return boardDao.deleteBoard(board);
	}

	@Override
	public int updateReply(Board reply) {
		return boardDao.updateReply(reply);
	}

	@Override
	public int updateOrigin(Board board) {
		return boardDao.updateOrigin(board);
	}

	
	
}
