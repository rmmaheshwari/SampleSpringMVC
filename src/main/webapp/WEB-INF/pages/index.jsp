<%@page import="com.fasterxml.jackson.databind.ObjectMapper"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en" ng-app="productApp">
<head>
<meta charset="utf-8">
<title>My HTML File</title>
<link rel="stylesheet" href="resources/css/bootstrap.css">
<script src="resources/js/angular.js"></script>
<script src="resources/js/controllers.js"></script>

<script type="text/javascript">
	var product =
<%=new ObjectMapper().writeValueAsString(request
					.getAttribute("product"))%>
	
</script>
</head>
<body ng-controller="ProductController">
	<form:form commandName="product" cssClass="form-horizontal"
		ng-model="product">
		<form:input path="title" type="text" ng-model="product.title" />
		<form:input path="id" type="text" ng-model="product.id" />
			{{title}},{{id}}
			<div id="div{{$index}}" ng-repeat="item in product.items">
			<input type="text" ng-model="item.title" />
			<input type="text" ng-model="item.id" />
		</div>
	</form:form>
</body>
</html>