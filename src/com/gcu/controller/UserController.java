package com.gcu.controller;

import java.util.ArrayList;
import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.gcu.business.OrdersBusinessInterface;
import com.gcu.model.Order;
import com.gcu.model.User;

@Controller
@RequestMapping("/user")
public class UserController {
	
	OrdersBusinessInterface service;
	
	@Autowired
	public void setOrdersService(OrdersBusinessInterface service) 
	{
		this.service = service;
	}
	
	@RequestMapping(path="/add", method=RequestMethod.GET)
	public ModelAndView displayForm()
	{
		return new ModelAndView("addUser", "user", new User("","",0));
	}
	
	@RequestMapping(path="/adduser", method=RequestMethod.POST)
	public ModelAndView addUser(@Valid @ModelAttribute("user")User user, BindingResult result)
	{
		
		//Validate the form
		if(result.hasErrors())
		{
			return new ModelAndView("addUser", "user", user);
		}
		
		
		List<Order> orders = service.getAllOrders();
		//Calls Orders business service
		service.test();
		
//		return new ModelAndView("displayUser", "user", user);
//		List<User> users = new ArrayList<User>();
//		users.add(user);
//		users.add(new User("Justine", "Reha", 1));
//		return new ModelAndView("displayUsers", "users", orders);
//		return new ModelAndView("displayOrders", "orders", orders);
		return new ModelAndView("displayOrders3");

	}
	
	@RequestMapping(path="/displayOrders2", method=RequestMethod.GET)
	public String displayOrders2()
	{
		return "displayOrders2";
	}
	
	@RequestMapping(path="/displayOrders3", method=RequestMethod.GET)
	public String displayOrders3()
	{
		return "displayOrders3";
	}
	
}
