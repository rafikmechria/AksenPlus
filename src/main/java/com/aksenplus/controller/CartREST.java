package com.aksenplus.controller;

import com.aksenplus.model.Cart;
import com.aksenplus.model.CartItem;
import com.aksenplus.model.Customer;
import com.aksenplus.model.Product;
import com.aksenplus.service.CartItemService;
import com.aksenplus.service.CartService;
import com.aksenplus.service.CustomerService;
import com.aksenplus.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.web.bind.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * Created by Power on 25/04/2017.
 */
@Controller
@RequestMapping("/rest/cart")
public class CartREST {

    @Autowired
    private CartService cartService;

    @Autowired
    private CustomerService customerService;

    @Autowired
    private ProductService productService;

    @Autowired
    private CartItemService cartItemService;

    @RequestMapping("/{cartId}")
    public @ResponseBody
    Cart getCartById(@PathVariable(value = "cartId") int cartId) {
        return cartService.getCartById(cartId);
    }

    @RequestMapping(value = "/add/{productId}", method = RequestMethod.PUT)
    @ResponseStatus(value = HttpStatus.NO_CONTENT)
    public void addItem(@PathVariable(value = "productId") int productId, @AuthenticationPrincipal User activeUser) {


        Customer customer = customerService.getCustomerByUserName(activeUser.getUsername());
        Cart cart = customer.getCart();
        Product product = productService.getProductByID(productId);
        List<CartItem> cartItems = cart.getCartItems();

        for (int i = 0; i < cartItems.size(); i++) {
            if(product.getProductId()==cartItems.get(i).getProduct().getProductId())
            {
                CartItem cartItem = cartItems.get(i);
                cartItem.setQuantity(cartItem.getQuantity()+1);
                cartItem.setTotalprice(product.getProductPrice()*cartItem.getQuantity());
                cartItemService.addCartItem(cartItem);
                return;
            }

            CartItem cartItem = new CartItem();
            cartItem.setProduct(product);
            cartItem.setQuantity(1);
            cartItem.setTotalprice(product.getProductPrice()*cartItem.getQuantity());
            cartItem.setCart(cart);
            cartItemService.addCartItem(cartItem);



        }

        }



    @RequestMapping(value = "/remove/{productId}" , method = RequestMethod.PUT)
    @ResponseStatus(value = HttpStatus.NO_CONTENT)
    public void  removeItem(@PathVariable (value = "productId") int productId)// we dont have to use @Athenprincipal cuzz if cart contains any item it means that already authenticated user added it
    {
        CartItem cartItem= cartItemService.getCartItemByProductId(productId) ;
        cartItemService.removeCartItem(cartItem);

    }


    @RequestMapping(value = "/{cartId}" , method = RequestMethod.DELETE)
    @ResponseStatus(value = HttpStatus.NO_CONTENT)
    public void  DropCartContent(@PathVariable (value = "cartId") int cartId)// we dont have to use @Athenprincipal cuzz if cart contains any item it means that already authenticated user added it
    {
        Cart cart= cartService.getCartById(cartId) ;
        cartItemService.removeAllCartItems(cart);

    }


    @ExceptionHandler(IllegalArgumentException.class)
    @ResponseStatus(value = HttpStatus.BAD_REQUEST , reason = "Illegal request, cart is secure :D ")
    public void handleClientError(Exception e)
    {

    }
    @ExceptionHandler(Exception.class)
    @ResponseStatus(value = HttpStatus.INTERNAL_SERVER_ERROR , reason = "Http  error ! ")
    public void handleServerError(Exception e)
    {

    }






}
