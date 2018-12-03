package com.gcu.services;

import java.util.ArrayList;
import java.util.List;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;

import com.gcu.model.User;

@Path("service2")
public class UserService2 {
	
	@GET
	@Path("/users")
	@Produces("application/json")
	public List<User> getUsers() 
	{
		//Create some Users
		List<User> users = new ArrayList<User>();
		users.add(new User("Brianna", "Reha", 0));
		users.add(new User("Justine", "Reha", 0));
		
		// Return a list of users
		return users;
	}
}
