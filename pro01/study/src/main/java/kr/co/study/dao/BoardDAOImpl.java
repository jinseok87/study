package kr.co.study.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.study.dto.BoardDTO;
@Repository
public class BoardDAOImpl implements BoardDAO {
	@Autowired
	SqlSession sqlSession;

	@Override
	public List<BoardDTO> boardList() throws Exception {
		return sqlSession.selectList("board.boardList");
	}

	@Override
	public BoardDTO boardDetail(int seq) throws Exception {
		return sqlSession.selectOne("board.boardDetail",seq);
	}

	@Override
	public int boardInsert(BoardDTO dto) throws Exception {
		return sqlSession.insert("board.boardInsert",dto);
	}

	@Override
	public int boardEdit(BoardDTO dto) throws Exception {
		return sqlSession.update("board.boardEdit",dto);
	}

	@Override
	public int boardDelete(int seq) throws Exception {
		return sqlSession.update("board.boardDelete",seq);
	}

	@Override
	public int visitedUp(int seq) throws Exception {
		return sqlSession.update("board.visitedUp",seq);
	}

}
