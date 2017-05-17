/**
 * Created by Power on 17/04/2017.
 */




var cartApp =angular.module("cartApp",[]);
cartApp.controller("cartCtrl" , function ($scope ,$http) {



    //clear cart method
    $scope.clearCart = function ()
    {
        $http.delete("/rest/cart/"+$scope.cartId).success($scope.refreshCart());
    };


    $scope.initCartId=function (cartId)
    {
        $scope.cartId=cartId;
        $scope.refreshCart(cartId);


    };

    //reload cart method
    $scope.refreshCart = function ()
    {
        $http.get("/rest/cart/"+$scope.cartId).success(function (data) {
            $scope.cart=data;

        })
    };

    $scope.addToCart=function(productId)
    {

        $http.put("/rest/cart/add/"+productId).success(
            function ()
            {
              //   $scope.refreshCart();   shittttt
             alert("Product added to the cart ");
        });

    };


    $scope.removeFromCart=function (productId)
    {
        $http.put("/rest/cart/remove/" + productId).success(function (data) {
            $scope.refreshCart();
            alert("removed from cart the cart ");
        });

    };

    $scope.calculateTOTAL=function ()
    {
        var TOTAL=0;

        for(var i=0; i<$scope.cart.cartItems.length;i++)
        {
            TOTAL+=$scope.cart.cartItems[i].totalPrice;
        }
        return TOTAL;

    };



});

