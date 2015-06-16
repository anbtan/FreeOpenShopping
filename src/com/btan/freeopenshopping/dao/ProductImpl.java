package com.btan.freeopenshopping.dao;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;

import com.btan.freeopenshopping.entities.Product;

public class ProductImpl implements ProductDao {
	
	@Autowired
	private DataSource dataSource;
	
	@Override
	public List<Product> getAllProduct() {
		// TODO Auto-generated method stub
		String sql = "Select * from Product";
		JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
		
		List<Product> productList = new ArrayList<Product>();
		List<Map<String, Object>> productRows = jdbcTemplate.queryForList(sql);
		
		for (Map<String, Object> productRow : productRows) {
			Product product = new Product();
			product.setProductId(Integer.parseInt(String.valueOf(productRow.get("productId"))));
			product.setProductName(String.valueOf(productRow.get("productName")));
			product.setPrice(Double.parseDouble(String.valueOf(productRow.get("price"))));
			product.setDescription(String.valueOf(productRow.get("description")));
			product.setProductImage(String.valueOf(productRow.get("productImage")));
			productList.add(product);
		}
		return productList;
	}

}
