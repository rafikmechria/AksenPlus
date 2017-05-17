package com.aksenplus.service.impl;

import com.aksenplus.dao.CartDao;
import com.aksenplus.model.Cart;
import com.aksenplus.service.CartService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by Power on 25/04/2017.
 */

@Service
public class CartServiceImpl implements CartService {


    @Autowired
    private CartDao cartDao;



    public Cart getCartById(int cartId) {
        return cartDao.getCartById(cartId);
    }

    public void update(Cart cart) {
        cartDao.update(cart.getCartId(),cart);
    }
}
