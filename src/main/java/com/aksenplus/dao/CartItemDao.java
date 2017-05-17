package com.aksenplus.dao;

import com.aksenplus.model.Cart;
import com.aksenplus.model.CartItem;

/**
 * Created by Power on 27/04/2017.
 */
public interface CartItemDao {


    void addCartItem(CartItem cartItem);
    void removeCartItem(CartItem cartItem);
    void removeAllCartItems(Cart cart);


    CartItem getCartItemByProductId(int productId);
}
