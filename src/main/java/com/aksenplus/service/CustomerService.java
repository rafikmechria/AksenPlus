package com.aksenplus.service;

import com.aksenplus.model.Customer;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by Power on 24/04/2017.
 */

@Service
public interface CustomerService {


    void addCustomer (Customer customer);
    Customer getCustomerById (int customerId);
    List<Customer> getAllCustomers();
    Customer getCustomerByUserName(String username);
}
