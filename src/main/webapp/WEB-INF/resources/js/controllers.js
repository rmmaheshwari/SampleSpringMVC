var productApp = angular.module('productApp', []);


productApp.controller('ProductController', function($scope) {
	$scope.product = product;
	$scope.radha=function(){
		$scope.product.items.push(
			    {id: null, title: null, "price":{"price":null}}
			);	
	};
	$scope.remove=function(index){
		$scope.product.items.splice(index,1);	
	};
	
});
