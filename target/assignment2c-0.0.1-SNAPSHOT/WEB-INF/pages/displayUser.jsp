<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Display User Interface</title>
</head>
<body>

	<h2>User Information</h2>
	<table>
		<tr>
			<th><label>First Name</label></th>
			<th><label>Last Name</label></th>
		</tr>
		<tr>
			<td><label>${user.firstName}</label></td>
			<td><label>${user.lastName}</label></td>
		</tr>
		<tr>
			<td colspan="2"><a href="add">Add a User</a></td>
		</tr>
	</table>
</body>
</html>