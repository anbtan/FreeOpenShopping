package com.btan.freeopenshopping.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Collection;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

import com.btan.freeopenshopping.entities.User;

public class UserDaoImpl implements UserDao, UserDetailsService {

	@Autowired
	private DataSource dataSource;

	@Override
	public User verifyUser(String email, String password) {
		// TODO Auto-generated method stub
		String sql = "select * from users where email = ? and password = ?";
		JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
		try {
			User user = jdbcTemplate.queryForObject(sql, new Object[] { email,
					password }, new RowMapper<User>() {

				@Override
				public User mapRow(ResultSet rs, int rowNum)
						throws SQLException {
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
		boolean bResult = false;
		// TODO Auto-generated method stub
		String sql = "INSERT INTO USERS (username, password, enabled) VALUES (?,?,1)";
		JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
		Object[] args = new Object[] { user.getUsername(), user.getPassword() };

		int out = jdbcTemplate.update(sql, args);
		if (out != 0) {
			sql = "INSERT INTO USER_INFO(username, firstName, lastName, email, phone) VALUES (?,?,?,?,?)";
			args = new Object[] { user.getUsername(), user.getFirstName(), user.getLastName(), user.getEmail(), user.getPhone()};
			out = jdbcTemplate.update(sql, args);
			if (out != 0) {
				sql = "INSERT INTO ROLES(username, role) VALUES (?, 'USER')";
				args = new Object[] { user.getUsername() };
				out = jdbcTemplate.update(sql, args);
				if (out !=  0) {
					bResult = true;
				}
			}
		}
		return bResult;
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
		count = jdbcTemplate.queryForInt(sql, new Object[] { email });
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
		count = jdbcTemplate.queryForInt(sql, new Object[] { email, password,
				role });
		if (count > 0) {
			return true;
		} else {
			return false;
		}
	}

	@Override
	public UserDetails loadUserByUsername(final String email)
			throws UsernameNotFoundException {
		// TODO Auto-generated method stub
		User user = getUser(email);
		if (user != null) {
			
		}
			
		return new UserDetails() {

			@Override
			public boolean isEnabled() {
				// TODO Auto-generated method stub
				return false;
			}

			@Override
			public boolean isCredentialsNonExpired() {
				// TODO Auto-generated method stub
				return false;
			}

			@Override
			public boolean isAccountNonLocked() {
				// TODO Auto-generated method stub
				return false;
			}

			@Override
			public boolean isAccountNonExpired() {
				// TODO Auto-generated method stub
				return false;
			}

			@Override
			public String getUsername() {
				// TODO Auto-generated method stub
				return null;
			}

			@Override
			public String getPassword() {
				// TODO Auto-generated method stub
				return null;
			}

			@Override
			public Collection<? extends GrantedAuthority> getAuthorities() {
				// TODO Auto-generated method stub
				return null;
			}
		};
	}

	@Override
	public User getUser(String email) {
		// TODO Auto-generated method stub
		// TODO Auto-generated method stub
		String sql = "select * from users where email = ?";
		JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
		try {
			User user = jdbcTemplate.queryForObject(sql, new Object[] { email}, new RowMapper<User>() {

				@Override
				public User mapRow(ResultSet rs, int rowNum)
						throws SQLException {
					// TODO Auto-generated method stub
					User objUser = new User();
					objUser.setEmail(rs.getString("email"));
					objUser.setPassword(rs.getString("password"));
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
	public User getUserByUsername(String username) {
		// TODO Auto-generated method stub
		User user = null;
		if (username.isEmpty()) {
			return null;
		}
			
		String sql = "select * from USERS A INNER JOIN USER_INFO B on A.username = B.username where A.username = ?";
		JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
		try {
			user = jdbcTemplate.queryForObject(sql, new Object[] { username}, new RowMapper<User>() {

				@Override
				public User mapRow(ResultSet rs, int rowNum)
						throws SQLException {
					// TODO Auto-generated method stub
					User u = new User();
					u.setUsername(username);
					u.setPassword(rs.getString("password"));
					u.setFirstName(rs.getString("firstName"));
					u.setLastName(rs.getString("lastName"));
					u.setEmail(rs.getString("email"));
					u.setPhone(rs.getString("phone"));
					return u;
				}

			});
		} catch (EmptyResultDataAccessException e) {
			// TODO: handle exception
			return null;
		}
		return user;
	}

}
