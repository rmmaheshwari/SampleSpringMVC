var productApp = angular.module('productApp', []);

var items={"id","title","price"};

productApp.controller('ProductController', function($scope) {
	$scope.product = product;
	$scope.radha=function(){
		alert("Radha");
		$scope.product.items.push(
			    {id: null, title: null, price.price: null}
			);	
	};
	
	
});