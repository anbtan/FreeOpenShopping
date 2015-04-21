package com.btan.freeopenshopping.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.btan.freeopenshopping.dao.CategoryDao;
import com.btan.freeopenshopping.entities.Category;

public class AdminServiceImpl implements AdminService {

	@Autowired
	CategoryDao cateDao;
	
	@Override
	public List<Category> getAll() {
		// TODO Auto-generated method stub
		return cateDao.getAll();
	}

}
