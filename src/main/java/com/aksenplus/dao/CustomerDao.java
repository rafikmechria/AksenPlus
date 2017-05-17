package com.aksenplus.dao;

import com.aksenplus.model.Customer;
import org.springframework.stereotype.Component;

import java.util.List;

/**
 * Created by Power on 24/04/2017.
 */


@Component
public interface CustomerDao {


    void addCustomer (Customer customer);
    Customer getCustomerById (int customerId);
    List<Customer> getAllCustomers();

    Customer getCustomerByUserName(String username);
}
