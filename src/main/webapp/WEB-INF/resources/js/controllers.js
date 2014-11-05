var productApp = angular.module('productApp', []);


productApp.controller('ProductController', function($scope) {
	$scope.countryMap=countryMap;
	$scope.product = product;
	
	$scope.product.countryId=$scope.product.countryId+"";
	console.log($scope.product);
	$scope.radha=function(){
		$scope.product.items.push(
			    {id: null, title: null, "price":{"price":null}}
			);	
	};
	$scope.remove=function(index){
		$scope.product.items.splice(index,1);	
	};
	
});
