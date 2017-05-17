package com.aksenplus.service;

import com.aksenplus.model.CustomerOrder;

/**
 * Created by Power on 27/04/2017.
 */
public interface CustomerOrderService {
    void addNewOrder(CustomerOrder customerOrder);

    double getOrderTotalprice(int cartId);
}
