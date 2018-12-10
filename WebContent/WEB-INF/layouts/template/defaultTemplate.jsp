<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>CST-341 In-Class Activity</title>	
	
	<script type="text/javascript" src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
	
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css">
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	
	<style type="text/css">.bs-example { margin: 20px; }</style>
	
	<link rel="stylesheet" href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css">
	<link rel="stylesheet" href="https://cdn.datatables.net/responsive/2.2.0/css/responsive.dataTables.css">
    <script type="text/javascript"  src=" https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
	<script src="//cdn.datatables.net/responsive/2.2.0/js/dataTables.responsive.js"></script>
	
	<link rel="shortcut icon" href="data:image/x-icon;," type="image/x-icon">
	
	<spring:url value="/resources/layouts.css" var="layoutsCSS" />
	<spring:url value="/resources/styles.css" var="stylesCSS" />
	<spring:url value="/resources/layouts.js" var="layoutsJS" />
	
	<link href="${layoutsCSS}" rel="stylesheet" type="text/css" media="all"/>
	<link href="${stylesCSS}" rel="stylesheet" type="text/css" media="all"/>
	<script src="${layoutsJS}"></script>
	
	<title>CST-341 In-Class Activity</title>
</head>

<body>
	<div class="application">
		<div class="menuLeft">
			<tiles:insertAttribute name="menuLeft" />
		</div>
		<div align="center" class="container">
			<!-- Header -->
			<div class="header">
				<tiles:insertAttribute name="header" />
			</div>
			
			<!-- Body Page -->
			<div class="body">
				<tiles:insertAttribute name="body" />
			</div>
		
			<!-- Footer Page -->
			<div class="footer">
				<tiles:insertAttribute name="footer" />
			</div>
		</div>
		<div class="menuRight">
			<tiles:insertAttribute name="menuRight" />
		</div>
	</div>
	
</body>

</html>