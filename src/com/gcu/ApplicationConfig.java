package com.gcu;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;

import com.gcu.business.AnotherOrdersBusinessService;
import com.gcu.business.OrdersBusinessInterface;
import com.gcu.business.OrdersBusinessService;
import com.gcu.controller.UserController;

@Configuration
public class ApplicationConfig {
	
	@Bean(name="userController")
	public UserController getUserController()
	{
		return new UserController();
	}
	
	@Bean(name="ordersService", initMethod="init", destroyMethod="destroy")
	@Scope(value="session", proxyMode=ScopedProxyMode.TARGET_CLASS)
	public OrdersBusinessInterface getOrdersService()
	{
		return new OrdersBusinessService();
	}
}
