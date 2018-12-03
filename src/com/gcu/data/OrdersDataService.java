package com.gcu.data;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;

import com.gcu.model.Order;

public class OrdersDataService implements DataAccessInterface<Order>{

	private DataSource dataSource;
	private JdbcTemplate jdbcTemplateObject;
	
	public void setDataSource(DataSource dataSource)
	{
		this.dataSource = dataSource;
		this.jdbcTemplateObject = new JdbcTemplate(dataSource);
	}
	
	Connection conn = null;
	String url = "jdbc:derby:/Users/Matt/MySpringDB";
	String username = "user";
	String password = "derby";
	
	public OrdersDataService() {}
	
	@Override
	public List<Order> findAll() 
	{
		String sql = "SELECT * FROM testapp.ORDERS";
		List<Order> orders = new ArrayList<Order>();
		
		try
		{
			//Execute
			SqlRowSet srs = jdbcTemplateObject.queryForRowSet(sql);
			
			while(srs.next())
			{
				orders.add(Order.getSqlRowSet(srs));
			}
		}
		catch(Exception e) 
		{
			e.printStackTrace();
		}
		
		return orders;
	}

	@Override
	public Order findById(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean create(Order order) 
	{
		String sql = "INSERT INTO testapp.ORDERS(ORDERS_NO, PRODUCT_NAME, PRICE, QUANTITY) VALUES (?,?,?)";
		try
		{
			// Execute SQL Insert
			int rows = jdbcTemplateObject.update(sql, order.getOrderNo(), order.getProductName(), order.getPrice(), order.getQuantity());
			
			// Return Result of Insert
			return rows == 1 ? true : false;
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return false;
	}

	@Override
	public boolean update(Order t) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean delete(Order t) {
		// TODO Auto-generated method stub
		return false;
	}
	
}
