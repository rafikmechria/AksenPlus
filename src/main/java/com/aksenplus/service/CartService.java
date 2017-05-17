package com.aksenplus.service;

import com.aksenplus.model.Cart;
import org.springframework.stereotype.Service;

/**
 * Created by Power on 25/04/2017.
 */
@Service
public interface  CartService {

    Cart getCartById(int cartId);
    void update (Cart cart);
}
