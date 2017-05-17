package com.aksenplus.dao;

import com.aksenplus.model.Cart;

import java.io.IOException;

/**
 * Created by Power on 13/04/2017.
 */
public interface CartDao {

    Cart getCartById(int cartid);
    void update(int cartid , Cart cart);
    void delete (int cartid);
    Cart validate(int cartId) throws IOException;



}
