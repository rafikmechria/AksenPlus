package com.aksenplus.dao.impl;

import com.aksenplus.dao.CustomerDao;
import com.aksenplus.model.Authorities;
import com.aksenplus.model.Customer;
import com.aksenplus.model.Users;
import org.hibernate.FlushMode;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import javax.transaction.Transactional;
import java.util.List;

/**
 * Created by Power on 24/04/2017.
 */


@Repository
@Transactional
public class CustomerDaoImpl implements CustomerDao {

    @Autowired // hibernate seession acces
    private SessionFactory sessionFactory;








    public void addCustomer(Customer customer) {
        Session session =sessionFactory.openSession(); // a hibernate db session
        session.getTransaction().begin();
        session.setFlushMode(FlushMode.COMMIT);
        //db model stuff to make a relation between addresses table and customer and get billing adress for this customer !
        //customer.getBillingAddress().setCustomer(customer);
        //customer.getShippingAddress().setCustomer(customer);


        session.saveOrUpdate(customer);
        //session.saveOrUpdate(customer.getBillingAddress());
        //session.saveOrUpdate(customer.getShippingAddress());

        Users newUser=new Users();
        newUser.setUserName(customer.getCustomerEmail());
newUser.setEnabled(true);
newUser.setCustomerId(customer.getCustomerId());

        Authorities newAuthority = new Authorities();
        newAuthority.setUsername(customer.getCustomerEmail());
        newAuthority.setAuthority("ROLE_CUSTOMER");

        session.saveOrUpdate(newUser);
        session.saveOrUpdate(newAuthority);



        session.getTransaction().commit();
        session.flush();
        session.close();
    }




    public Customer getCustomerById(int customerId) {
        Session session =sessionFactory.getCurrentSession();
        session.beginTransaction();
        Customer customer =(Customer) session.get(Customer.class ,customerId);
        return customer;
    }

    public List<Customer> getAllCustomers() {
        Session session = sessionFactory.openSession();
        Query query = session.createQuery(" from Customer");

        List<Customer> customers=query.list();
        session.flush();
        return  customers;
    }

    public Customer getCustomerByUserName(String username) {
        Session session = sessionFactory.openSession();
        Query query = session.createQuery(" from Customer where username = ?");
        query.setString(0,username);
        return  (Customer) query.uniqueResult();
    }

}
