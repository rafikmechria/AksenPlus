package com.aksenplus.service.impl;

import com.aksenplus.dao.CartItemDao;
import com.aksenplus.model.Cart;
import com.aksenplus.model.CartItem;
import com.aksenplus.service.CartItemService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by Power on 27/04/2017.
 */

@Service
public class CartItemServiceImpl implements CartItemService {

   @Autowired
   private CartItemDao cartItemDao;


    public void addCartItem(CartItem cartItem) {
cartItemDao.addCartItem(cartItem);
    }

    public void removeCartItem(CartItem cartItem) {
        cartItemDao.removeCartItem(cartItem);
    }

    public void removeAllCartItems(Cart cart) {
        cartItemDao.removeAllCartItems(cart);
    }

    public CartItem getCartItemByProductId(int productId) {
        return cartItemDao.getCartItemByProductId( productId);
    }
}
