package com.quocar.board.dao;

import java.util.List;

import com.quocar.board.vo.BoardVo;

public interface BoardDao {
	// 01. 게시글 작성
    public void create(BoardVo vo) throws Exception;
    // 02. 게시글 상세보기
    public BoardVo read(int bno) throws Exception;
    // 03. 게시글 수정
    public void update(BoardVo vo) throws Exception;
    // 04. 게시글 삭제
    public void delete(int bno) throws Exception;
    // 05. 게시글 전체 목록 ==> 검색옵션, 키워드 매개변수 추가
    public List<BoardVo> listAll(String searchOption, String keyword) throws Exception;
    // 06. 게시글 조회 증가
    public void increaseViewcnt(int bno) throws Exception;
	// 07. 게시글 레코드 갯수 메서드 추가
    public int countArticle(String searchOption, String keyword) throws Exception;

}
