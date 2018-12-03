<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<spring:url value="/resources/layouts.css" var="layoutsCSS" />
	<spring:url value="/resources/styles.css" var="stylesCSS" />
	<spring:url value="/resources/layouts.js" var="layoutsJS" />
	
	<script type="text/javascript" src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
    <script type="text/javascript"  src=" https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
	<link rel="stylesheet" href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css">
	
	<!-- <script src="https://code.jQuery.com/jQuery-3.3.1.min.js"></script>
		
	<link rel="stylesheet" href="https://cdn.datatables.net/1.10.16/css/jquery.dataTables.min.css">
	
	<script src="https://cdn.datatables.net/1.10.16/js/jquery.dataTables.min.js"></script>
	 -->
	<link rel="shortcut icon" href="data:image/x-icon;," type="image/x-icon">
	
	
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