package com.btan.freeopenshopping.dao;

import java.sql.ResultSet;
import java.sql.SQLException;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import com.btan.freeopenshopping.entities.User;

public class UserDaoImpl implements UserDao {
	
	@Autowired
	private DataSource dataSource;


	@Override
	public User verifyUser(String username, String password) {
		// TODO Auto-generated method stub
		String sql = "select * from users where username = ? and password = ?";
		JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
		try {
			User user = jdbcTemplate.queryForObject(sql, new Object[]{username, password}, new RowMapper<User>(){

				@Override
				public User mapRow(ResultSet rs, int rowNum) throws SQLException {
					// TODO Auto-generated method stub
					User objUser = new User();
					objUser.setEmail(rs.getString("email"));
					return objUser;
				}
				
			});
			return user;
		} catch (EmptyResultDataAccessException e) {
			// TODO: handle exception
			return null;
		}
				
	}
	
}
