package com.aksenplus.service.impl;

import com.aksenplus.dao.CustomerOrderDao;
import com.aksenplus.model.Cart;
import com.aksenplus.model.CartItem;
import com.aksenplus.model.CustomerOrder;
import com.aksenplus.service.CartService;
import com.aksenplus.service.CustomerOrderService;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by Power on 27/04/2017.
 */
@Service
public class CustomerOrderServiceImpl implements CustomerOrderService {


    private CustomerOrderDao customerOrderDao;
    private CartService cartService;


    public void addNewOrder(CustomerOrder customerOrder) {
            customerOrderDao.addNewOrder(customerOrder);
    }

    public double getOrderTotalprice(int cartId) {
    double Total=0;
        Cart cart=cartService.getCartById(cartId);
        List<CartItem> cartItems = cart.getCartItems();


        for(CartItem item : cartItems)
        {
            Total+=item.getTotalprice();
        }

        return Total;
    }
}
