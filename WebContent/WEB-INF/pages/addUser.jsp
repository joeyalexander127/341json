<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<body>

	<h2>User Information</h2>
	
	<form:form class ="form-horizontal" method = "POST" modelAttribute="user" action="adduser">
	
		<div class="form-group">
		
	        <form:label path="firstName" class="control-label col-xs-2">First Name:</form:label>
	        <div class="col-xs-9">
	            <form:input path="firstName" class="form-control"/><form:errors path="firstName"/>
	        </div>
	    </div>  
	    <div class="form-group">
	    
	        <form:label path="lastName" class="control-label col-xs-2">Last Name:</form:label>
	        <div class="col-xs-9">
	            <form:input path="lastName" class="form-control"/><form:errors path="lastName"/>
	        </div>
	    </div>  
	        
	    <div class="form-group">
	    
	   		<form:label path="gender" class="control-label col-xs-2">Gender:</form:label>
	   		<div class="col-xs-8">
	   			<label class="radio-inline"><form:radiobutton path="gender" value="0" label="Female"/></label>
	   			<label class="radio-inline"><form:radiobutton path="gender" value="1" label="Male"/></label>
	   		</div>
	    	
	    </div>
	        
	    <div class="form-group">
	        <input type= "submit" value= "submit" class="btn btn-primary"/>
	 	</div>
	         
	    <form:errors path="*"/>
	</form:form>

</body>