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
	public User verifyUser(String email, String password) {
		// TODO Auto-generated method stub
		String sql = "select * from users where email = ? and password = ?";
		JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
		try {
			User user = jdbcTemplate.queryForObject(sql, new Object[]{email, password}, new RowMapper<User>(){

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


	@Override
	public boolean registerUser(User user) {
		// TODO Auto-generated method stub
		String sql = "INSERT INTO USERS ("
				+ "email, password, firstName, lastName, phone, fax, company, address1, address2, city, "
				+ "postcode, country, region, role, status) VALUES ("
				+ "?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
		
		JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
		
		Object[] args = new Object[] {user.getEmail(), user.getPassword(), user.getFirstName(), user.getLastName(),
			user.getPhone(), user.getFax(), user.getCompany(), user.getAddress1(), user.getAddress2(), user.getCity(),
			user.getPostCode(), user.getCountry(), user.getRegion(), 2, 1};
		
		int out = jdbcTemplate.update(sql, args);
		
		if (out != 0) {
			return true;
		} else {
			return false;
		}
	}


	/**
	 * Check the existing user based on email
	 */
	@Override
	public boolean isExistedUser(String email) {
		// TODO Auto-generated method stub
		String sql = "select count(*) from users where email = ?";
		JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
		int count = 0;
		count = jdbcTemplate.queryForInt(sql, new Object[]{email});
		if (count > 0) {
			return true;
		} else {
			return false;
		}
		
	}


	@Override
	public boolean login(String email, String password, int role) {
		// TODO Auto-generated method stub
		String sql = "select count(*) from users where email = ? and password = ? and role = ?";
		JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
		int count = 0;
		count = jdbcTemplate.queryForInt(sql, new Object[]{email, password, role});
		if (count > 0) {
			return true;
		} else {
			return false;
		}
	}
	
}
