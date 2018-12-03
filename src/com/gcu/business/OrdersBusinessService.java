package com.gcu.business;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.gcu.data.DataAccessInterface;
import com.gcu.model.Order;

public class OrdersBusinessService implements OrdersBusinessInterface {

	@SuppressWarnings("rawtypes")
	
	@Autowired
	DataAccessInterface dao;
	
	@SuppressWarnings("unchecked")
	public List<Order> getAllOrders()
	{
		return dao.findAll();
	}
	
	public void init() {
		System.out.println("init() from OrdersBusinessService");
	}
	
	public void destroy() {
		System.out.println("destroy() from OrdersBusinessService");
	}
	
	@Override
	public void test() {
		// TODO Auto-generated method stub
		System.out.println("Hello from OrdersBusinessService.");
	}
}
