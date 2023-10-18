package com.quocar.menus.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.quocar.menus.service.MenuService;
import com.quocar.menus.vo.MenuVo;

@Controller
@RequestMapping("/Menus")
public class MenuController {
	
	@Autowired	
	private MenuService  menuService;
	
	// 메뉴 목록
	@RequestMapping("/List")      // /Menus/List
	public  String  list( Model  model ) {
		
		List<MenuVo>  menuList = menuService.getMenuList();  		
		
		model.addAttribute("menuList",  menuList);
		
		return  "menus/list";
	}
	
	// 메뉴 등록1 입력화면
	@RequestMapping("/WriteForm1")  // /Menus/WriteForm
	public  String   writeForm1() {
		
		return  "menus/write1";
		
	}
	
	// 메뉴 등록1
	@RequestMapping("/Write1")
	public  String  write1( MenuVo menuVo  ) {
		
		menuService.insertMenu(  menuVo  );
		
		return  "redirect:/Menus/List";
	}
	
	
	//--------------------------------------
	// 메뉴 등록2 입력화면
	@RequestMapping("/WriteForm2")  // /Menus/WriteForm2
	public  String   writeForm2() {
		
		return  "menus/write2";
		
	}
	
	// 메뉴 등록2
	@RequestMapping("/Write2")
	public  String  write2( MenuVo menuVo  ) {
		
		menuService.insertMenu2(  menuVo  );
		
		return  "redirect:/Menus/List";
	}
	
	//-------------------------
	// 메뉴 삭제
	/*
	@RequestMapping("/Delete")
	public  String   delete( MenuVo menuVo ) {
		
		menuService.deleteMenu( menuVo );
		
		return  "redirect:/Menus/List";
	}
	*/
	@ResponseBody
	@RequestMapping(value="/Delete", produces = "text/html;charset=UTF-8")
	public  String   delete( MenuVo menuVo ) {
		
		menuService.deleteMenu( menuVo );
		
		String     msg = "";
		msg          += "<script>";
		msg          += "alert('삭제되었습니다');";
		msg          += "location.href='/Menus/List';";
		msg          += "</script>";
		
		return     msg;
	}
	
	//------------------------------
	// 메뉴 수정
	// http://localhost:9090/Menus/UpdateForm?menu_id=MENU03
	// http://localhost:9090/Menus/UpdateForm?menu_id=MENU03&menu_name=
	// http://localhost:9090/Menus/UpdateForm?menu_id=MENU03&menu_name=&menu_seq=
	@RequestMapping("/UpdateForm")
	//public  String   updateForm( String menu_id, String menu_name, Model model ) {
	// MenuVo [  menu_id=MENU03, menu_name=null, menu_seq=null  ]
	public  String   updateForm( MenuVo menuVo, Model model ) {
		
		// System.out.println("a0:" + menuVo);
		MenuVo   vo  =  menuService.getMenu(  menuVo  );
		// System.out.println("a1:" + vo);
		
		model.addAttribute("menuVo", vo );
		
		return  "menus/update";
	}
	
	@RequestMapping("/Update")  // /Menus/Update
	public  String   update( MenuVo menuVo ) {
		
		//System.out.println("1:" + menuVo );
		menuService.updateMenu( menuVo  );
		//System.out.println("2:" + menuVo );
		
		return  "redirect:/Menus/List";  
	}
	
	
}













