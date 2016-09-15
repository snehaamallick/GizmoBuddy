var cartApp = angular.module ("cartApp", []);

cartApp.controller("cartCtrl", function($scope, $http){
	
	$scope.initCartId = function(cartId){ 
	    $scope.cartId = cartId;
	    $scope.refreshCart(cartId);
	};

$scope.refreshCart = function(){
   $http.get('http://localhost:8080/Gizmobuddy/rest/cart/' + $scope.cartId).success(function (data){
       $scope.cart = data;
   });
};

$scope.clearCart = function(){
    $http.delete('http://localhost:8080/Gizmobuddy/rest/cart/' + $scope.cartId).success($scope.refreshCart());
};



$scope.addToCart = function(productId){
    $http.put('http://localhost:8080/Gizmobuddy/rest/cart/add/' + productId).success(function (){
        alert('Product successfully added to the cart!');
        $scope.refreshCart();
        
    });
};

$scope.removeFromCart = function(productId){
    $http.put('http://localhost:8080/Gizmobuddy/rest/cart/remove/' + productId).success(function(data){
       $scope.refreshCart();
    });
};

$scope.calGrandTotal = function(){ 
    var grandTotal = 0;

    for (var i = 0; i < $scope.cart.cartItems.length; i++){
        grandTotal += $scope.cart.cartItems[i].totalPrice;
    }

    return grandTotal;
}
});