<%@page import="java.util.Date"%>
<%@page import="com.fasterxml.jackson.databind.ObjectMapper"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="f" uri="http://www.radha.com/functions"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en" ng-app="productApp">
<head>
<meta charset="utf-8">
<title>My HTML File</title>
<link rel="stylesheet" href="resources/css/bootstrap.css">
<script src="resources/js/angular.js?<%=new Date()%>"></script>
<script src="resources/js/controllers.js?<%=new Date()%>""></script>

<script type="text/javascript">
var product=${f:convertToJson(product)};
	var countryMap =${f:convertToJson(countryMap)};
	
</script>
</head>
<body ng-controller="ProductController">
	<form:form commandName="product" cssClass="form-horizontal">
		<form:input path="title" type="text" ng-model="product.title" />

		<select ng-model="product.countryId" name="countryId" 
			ng-Options="id as value for (id,value) in countryMap"></select>

		<input type="text" name="id" ng-model="product.id" />
			{{title}},{{id}}
			<div ng-repeat="item in product.items">
			<div id="div{{$index}}">
			 {{item.title}},{{item.price.price}},{{item.id}}<br/>
				<input type="text"  name="items[{{$index}}].title"
					ng-model="item.title" /> <input type="text"
					name="items[{{$index}}].id" ng-model="item.id" /> <input
					type="text" name="items[{{$index}}].price.price"
					ng-model="item.price.price" /> <input type="button"
					ng-click="remove($index)" value="Remove Rows" />
			</div>
		</div>
		<input type="button" ng-click="radha()" value="Add More Rows" />
	</form:form>
</body>
</html>