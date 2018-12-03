package com.gcu.business;

import java.util.List;

import com.gcu.model.Order;

public class AnotherOrdersBusinessService implements OrdersBusinessInterface{
	
	public void init() {
		System.out.println("init() from AnotherOrdersBusinessService");
	}
	
	public void destroy() {
		System.out.println("destroy() from AnotherOrdersBusinessService");
	}
	
	@Override
	public void test() {
		// TODO Auto-generated method stub
		System.out.println("Hello from AnotherOrdersBusinessService.");
	}

	@Override
	public List<Order> getAllOrders() {
		// TODO Auto-generated method stub
		return null;
	}
}
