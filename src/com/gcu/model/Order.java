package com.gcu.model;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.support.rowset.SqlRowSet;

public class Order 
{
	private String orderNo = "";
	private String productName = "";
	private float price = 0;
	private int quantity = 0;
	
	public Order(String orderNo, String productName, float price, int quantity) {
		this.orderNo = orderNo;
		this.productName = productName;
		this.price = price;
		this.quantity = quantity;
	}

	public String getOrderNo() {
		return orderNo;
	}

	public void setOrderNo(String orderNo) {
		this.orderNo = orderNo;
	}

	public String getProductName() {
		return productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	public float getPrice() {
		return price;
	}

	public void setPrice(float price) {
		this.price = price;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	@Override
	public String toString() {
		return "Order [orderNo=" + orderNo + ", productName=" + productName + ", price=" + price + ", quantity="
				+ quantity + "]";
	}
	
	public static Order getResultSet(ResultSet rs) throws SQLException
	{
		Order order = new Order(
				rs.getString("ORDER_NO"),
				rs.getString("PRODUCT_NAME"),
				rs.getFloat("PRICE"),
				rs.getInt("QUANTITY")
				);
		return order;
	}
	
	public static Order getSqlRowSet(SqlRowSet srs) throws SQLException
	{
		Order order = new Order(
				srs.getString("ORDER_NO"),
				srs.getString("PRODUCT_NAME"),
				srs.getFloat("PRICE"),
				srs.getInt("QUANTITY")
				);
		return order;
	}
}
