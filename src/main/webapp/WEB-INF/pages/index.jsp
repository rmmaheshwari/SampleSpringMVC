<!doctype html>
<html lang="en" ng-app="phonecatApp">
<head>
<meta charset="utf-8">
<title>My HTML File</title>
<link rel="stylesheet" href="resources/css/bootstrap.css">
<script src="resources/js/angular.js"></script>
<script src="resources/js/controllers.js"></script>
</head>
<body ng-controller="PhoneListCtrl">

	<input type="text" ng-model="nameText"/>
	<ul>
		<li ng-repeat="phone in phones | filter :nameText |orderBy: 'name' ">{{phone.name}}
			<p>{{phone.snippet | uppercase}},{{$index}}</p>
		</li>
	</ul>
	{{name}}
</body>
</html>