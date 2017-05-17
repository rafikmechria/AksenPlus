package com.aksenplus.service.impl;

import com.aksenplus.dao.CustomerDao;
import com.aksenplus.model.Customer;
import com.aksenplus.service.CustomerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by Power on 20/04/2017.
 */
@Service
public class CustomerServiceImpl implements CustomerService {


    @Autowired
    private CustomerDao customerDao;



    public void addCustomer(Customer customer) {

        customerDao.addCustomer(customer);
    }

    public Customer getCustomerById(int customerId) {
        return customerDao.getCustomerById(customerId);
    }

    public List<Customer> getAllCustomers() {
        return customerDao.getAllCustomers();
    }

    public Customer getCustomerByUserName(String username) {
        return customerDao.getCustomerByUserName(username);
    }
}
