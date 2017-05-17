package com.aksenplus.dao;

import com.aksenplus.model.CustomerOrder;

/**
 * Created by Power on 27/04/2017.
 */
public interface CustomerOrderDao {
    void addNewOrder(CustomerOrder customerOrder);

    double getOrderTotalprice(int cartId);
}
