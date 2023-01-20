package kr.co.study.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.study.dao.BoardDAO;
import kr.co.study.dto.BoardDTO;
@Service
public class BoardServiceImpl implements BoardService {
	@Autowired
	BoardDAO boarDAO;
	@Override
	public List<BoardDTO> boardList() throws Exception {
		return boarDAO.boardList();
	}

	@Override
	public BoardDTO boardDetail(int seq) throws Exception {
		return boarDAO.boardDetail(seq);
	}

	@Override
	public int boardInsert(BoardDTO dto) throws Exception {
		return boarDAO.boardInsert(dto);
	}

	@Override
	public int boardEdit(BoardDTO dto) throws Exception {
		return boarDAO.boardEdit(dto);
	}

	@Override
	public int boardDelete(int seq) throws Exception {
		return boarDAO.boardDelete(seq);
	}

	@Override
	public int visitedUp(int seq) throws Exception {
		return boarDAO.visitedUp(seq);
	}

}
