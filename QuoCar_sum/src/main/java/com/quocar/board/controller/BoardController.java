package com.quocar.board.controller;


import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.quocar.board.service.BoardService;
import com.quocar.board.vo.BoardVo;

@Controller
@RequestMapping("/Board")
public class BoardController {
	
	@Autowired
	private  BoardService  boardService;
    
    // 01. 게시글 목록
    @RequestMapping("/List")
    public ModelAndView list() throws Exception{
        List<BoardVo> list = boardService.listAll();
        // ModelAndView - 모델과 뷰
        ModelAndView mav = new ModelAndView();
        mav.setViewName("board/list"); // 뷰를 list.jsp로 설정
        mav.addObject("list", list); // 데이터를 저장
        return mav; // list.jsp로 List가 전달된다.
    }
    
    // 02_01. 게시글 작성화면
    // @RequestMapping("board/write.do")
    // value="", method="전송방식"
    @RequestMapping(value="/write.do", method=RequestMethod.GET)
    public String write(){
        return "board/write"; // write.jsp로 이동
    }
    
    // 02_02. 게시글 작성처리
    @RequestMapping(value="insert.do", method=RequestMethod.POST)
    public String insert(@ModelAttribute BoardVo vo) throws Exception{
        boardService.create(vo);
        return "redirect:List";
    }
    
    // 03. 게시글 상세내용 조회, 게시글 조회수 증가 처리
    // @RequestParam : get/post방식으로 전달된 변수 1개
    // HttpSession 세션객체
    @RequestMapping(value="/view.do", method=RequestMethod.GET)
    public ModelAndView view(@RequestParam int bno, HttpSession session) throws Exception{
        // 조회수 증가 처리
        boardService.increaseViewcnt(bno, session);
        // 모델(데이터)+뷰(화면)를 함께 전달하는 객체
        ModelAndView mav = new ModelAndView();
        // 뷰의 이름
        mav.setViewName("board/view");
        // 뷰에 전달할 데이터
        mav.addObject("dto", boardService.read(bno));
        return mav;
    }
    
    
    // 04. 게시글 수정
    // 폼에서 입력한 내용들은 @ModelAttribute BoardVO vo로 전달됨
    @RequestMapping(value="update.do", method=RequestMethod.POST)
    public String update(@ModelAttribute BoardVo vo) throws Exception{
        boardService.update(vo);
        return "redirect:List";
    }
    
    // 05. 게시글 삭제
    @RequestMapping("delete.do")
    public String delete(@RequestParam int bno) throws Exception{
        boardService.delete(bno);
        return "redirect:List";
    }
    
    // 06. 게시글 수정글로 넘어가기
    @RequestMapping(value = "/updateform.do", method = RequestMethod.GET)
    public ModelAndView updateForm(@RequestParam int bno) throws Exception {
    	// Retrieve the existing post's details
    	BoardVo boardVo = boardService.read(bno);
    	
    	// Create a ModelAndView to send data to the update.jsp page
    	ModelAndView mav = new ModelAndView();
    	mav.setViewName("board/update"); // Assuming your update.jsp is in the "board" directory
    	mav.addObject("dto", boardVo); // Pass the post details to the view
    	return mav;
    }
    

}
