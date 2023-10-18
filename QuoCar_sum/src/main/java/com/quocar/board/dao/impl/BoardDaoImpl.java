package com.quocar.board.dao.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
    public List<BoardVo> listAll(String searchOption, String keyword) throws Exception {
    	// 검색옵션, 키워드 맵에 저장
        Map<String, String> map = new HashMap<String, String>();
        map.put("searchOption", searchOption);
        map.put("keyword", keyword);
    	return sqlSession.selectList("board.listAll", map);
    }
    // 게시글 조회수 증가
    @Override
    public void increaseViewcnt(int bno) throws Exception {
        sqlSession.update("board.increaseViewcnt", bno);
    }
    // 07. 게시글 레코드 갯수
    @Override
    public int countArticle(String searchOption, String keyword) throws Exception {
        // 검색옵션, 키워드 맵에 저장
        Map<String, String> map = new HashMap<String, String>();
        map.put("searchOption", searchOption);
        map.put("keyword", keyword);
        return sqlSession.selectOne("board.countArticle", map);
    }
}






