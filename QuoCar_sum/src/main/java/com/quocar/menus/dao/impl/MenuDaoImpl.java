package com.quocar.menus.dao.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.quocar.menus.dao.MenuDao;
import com.quocar.menus.vo.MenuVo;

@Repository("menuDao")
public class MenuDaoImpl implements  MenuDao {

	@Autowired
	private  SqlSession  sqlSession;
	
	@Override
	public List<MenuVo> getMenuList() {
		
		List<MenuVo>  menuList = sqlSession.selectList( "Menu.MenuList" );
		
		return   menuList;
	}

	@Override
	public void insertMenu(MenuVo menuVo) {
		
		sqlSession.insert( "Menu.MenuInsert1", menuVo);
		
	}

	@Override
	public void insertMenu2(MenuVo menuVo) {
		
		sqlSession.insert( "Menu.MenuInsert2", menuVo);
		
	}

	@Override
	public void deleteMenu(MenuVo menuVo) {
		
		sqlSession.delete( "Menu.MenuDelete", menuVo);
		
	}

	@Override
	public MenuVo getMenu(MenuVo menuVo) {
		
		MenuVo  vo = sqlSession.selectOne( "Menu.MenuGet", menuVo ); 
		
		return  vo;
	}

	@Override
	public void updateMenu(MenuVo menuVo) {
				
		sqlSession.update( "Menu.MenuUpdate", menuVo );
				
	}

	@Override
	public String getMenuName(String menu_id) {
		
		String  menu_name  =  sqlSession.selectOne("Menu.MenuGetName", menu_id);
		
		return  menu_name;
	}

}












