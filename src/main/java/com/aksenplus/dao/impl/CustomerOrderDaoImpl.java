package com.aksenplus.dao.impl;

import com.aksenplus.dao.CustomerOrderDao;
import com.aksenplus.model.CustomerOrder;
import org.springframework.stereotype.Repository;

import javax.transaction.Transactional;

/**
 * Created by Power on 27/04/2017.
 */

@Repository
@Transactional
public class CustomerOrderDaoImpl implements CustomerOrderDao {
    public void addNewOrder(CustomerOrder customerOrder) {

    }

    public double getOrderTotalprice(int cartId) {
        return 0;
    }
}
