package com.aksenplus.service;

import com.aksenplus.model.Cart;
import com.aksenplus.model.CartItem;
import org.springframework.stereotype.Service;

/**
 * Created by Power on 27/04/2017.
 */

@Service
public interface CartItemService {

void addCartItem(CartItem cartItem);
    void removeCartItem(CartItem cartItem);
    void removeAllCartItems(Cart cart);

    CartItem  getCartItemByProductId (int productId);




}
