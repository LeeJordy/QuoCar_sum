package com.quocar.board.dao.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.quocar.board.dao.BoardDao;
import com.quocar.board.vo.BoardVo;

@Repository("boardDao")
public class BoardDaoImpl implements BoardDao {

	@Autowired
	private  SqlSession sqlSession;
	// 01. 게시글 작성
    @Override
    public void create(BoardVo vo) throws Exception {
        sqlSession.insert("board.insert", vo);
    }
    // 02. 게시글 상세보기
    @Override
    public BoardVo read(int bno) throws Exception {
        return sqlSession.selectOne("board.view", bno);
    }
    // 03. 게시글 수정
    @Override
    public void update(BoardVo vo) throws Exception {
        sqlSession.update("board.updateArticle", vo);
 
    }
    // 04. 게시글 삭제
    @Override
    public void delete(int bno) throws Exception {
        sqlSession.delete("board.deleteArticle",bno);
 
    }
    // 05. 게시글 전체 목록
    @Override
    public List<BoardVo> listAll() throws Exception {
        return sqlSession.selectList("board.listAll");
    }
    // 게시글 조회수 증가
    @Override
    public void increaseViewcnt(int bno) throws Exception {
        sqlSession.update("board.increaseViewcnt", bno);
    }
    

}






