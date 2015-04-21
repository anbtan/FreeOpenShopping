package com.btan.freeopenshopping.dao;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;

import com.btan.freeopenshopping.entities.Category;

public class CategoryImpl implements CategoryDao {
	
	@Autowired
	private DataSource dataSource;
	
	@Override
	public List<Category> getAll() {
		// TODO Auto-generated method stub
		String sql = "select * from categories";
		JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
		
		List<Category> cateList = new ArrayList<Category>();
		List<Map<String, Object>> cateRows = jdbcTemplate.queryForList(sql);
		for (Map<String, Object> cateRow : cateRows) {
			Category cate = new Category();
			cate.setId(Integer.parseInt(String.valueOf(cateRow.get("id"))));
			cate.setName(String.valueOf(cateRow.get("name")));
			cate.setDescription(String.valueOf(cateRow.get("description")));
			cate.setLevel(Integer.parseInt(String.valueOf(cateRow.get("level"))));
			cate.setParentId(Integer.parseInt(String.valueOf(cateRow.get("parentId"))));
			cateList.add(cate);
		}
		
		return cateList;
	}

	@Override
	public boolean addCategory(Category cate) {
		// TODO Auto-generated method stub
		String sql = "INSERT INTO categories (name, description, level, parentId) VALUES (?, ?, ?, ?)";
		JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
		
		Object[] args = new Object[] {cate.getName(), cate.getDescription(), cate.getLevel(), cate.getParentId()};
		
		int out = jdbcTemplate.update(sql, args);
		
		if (out != 0) {
			return true;
		} else {
			return false;
		}
	}

}
