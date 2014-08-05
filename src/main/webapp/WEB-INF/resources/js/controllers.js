var productApp = angular.module('productApp', []);


productApp.controller('ProductController', function($scope) {
	$scope.product = product;
	$scope.radha=function(){
		alert("Radha");
		$scope.product.items.push(
			    {id: null, title: null, "price":{"price":null}}
			);	
		console.log($scope.product);
	};
	
	$scope.remove=function(index){
		alert("Remove");
		$scope.product.items.splice(index,1);	
		console.log($scope.product);
	};
	
	
	
	
});
