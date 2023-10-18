package com.quocar.menus.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.quocar.menus.dao.MenuDao;
import com.quocar.menus.service.MenuService;
import com.quocar.menus.vo.MenuVo;

@Service("menuService")
public class MenuServiceImpl implements MenuService {

	@Autowired
	private  MenuDao   menuDao;
	
	@Override
	public List<MenuVo> getMenuList() {
		
		List<MenuVo>  menuList  =  menuDao.getMenuList();
		
		return  menuList;
	}

	@Override
	public void insertMenu(MenuVo menuVo) {
		
		menuDao.insertMenu( menuVo );
		
	}

	@Override
	public void insertMenu2(MenuVo menuVo) {
		
		menuDao.insertMenu2( menuVo );
		
	}

	@Override
	public void deleteMenu(MenuVo menuVo) {
		
		menuDao.deleteMenu( menuVo );
		
	}

	@Override
	public MenuVo getMenu(MenuVo menuVo) {
		
		MenuVo  vo   =  menuDao.getMenu( menuVo );
		
		return  vo;
	}

	@Override
	public void updateMenu(MenuVo menuVo) {
				
		menuDao.updateMenu( menuVo );
				
	}

	@Override
	public String getMenuName(String menu_id) {
		
		String  menu_name  =  menuDao.getMenuName( menu_id );  
		return  menu_name;
	}

}

















