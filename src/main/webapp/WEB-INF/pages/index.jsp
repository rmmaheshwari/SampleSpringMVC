<%@page import="com.fasterxml.jackson.databind.ObjectMapper"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en" ng-app="phonecatApp">
<head>
<meta charset="utf-8">
<title>My HTML File</title>
<link rel="stylesheet" href="resources/css/bootstrap.css">
<script src="resources/js/angular.js"></script>
<script src="resources/js/controllers.js"></script>
	<%
	ObjectMapper objectMapper = new ObjectMapper();
	
	out.print(objectMapper.writeValueAsString(request.getAttribute("product")));
	%>

</head>
<body ng-controller="PhoneListCtrl">
	
</body>
</html>