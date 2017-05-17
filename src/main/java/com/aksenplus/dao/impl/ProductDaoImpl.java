package com.aksenplus.dao.impl;

import com.aksenplus.dao.ProductDao;
import com.aksenplus.model.Product;
import org.hibernate.FlushMode;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import javax.transaction.Transactional;
import java.util.List;

/**
 * Created by Power on 08/04/2017.
 */

@Repository
@Transactional
public class ProductDaoImpl implements ProductDao {

    @Autowired
    private SessionFactory sessionFactory;


    public void addProduct(Product product) {

        Session session =sessionFactory.openSession(); // a hibernate db session
        session.getTransaction().begin();
        session.setFlushMode(FlushMode.COMMIT);
        session.saveOrUpdate(product);
        session.getTransaction().commit();
        session.flush();
        session.close();
    }


    @Transactional
    public Product getProductByID(Integer id) {

        Session session =sessionFactory.openSession();
        session.beginTransaction();
        session.setFlushMode(FlushMode.COMMIT);
        Product product =(Product) session.get(Product.class ,id);
        session.flush();
        session.close();
        return product;
    }

    public List<Product> getAllProducts() {
        Session session =sessionFactory.openSession();
        session.beginTransaction();
        session.setFlushMode(FlushMode.COMMIT);
        Query query = session.createQuery(" from Product");

        List<Product> products=query.list();
        session.flush();
        session.close();
        return  products;
    }

    public void deleteProduct(Integer id) {
        Session session =sessionFactory.getCurrentSession(); // a hibernate db session
        session.delete(getProductByID(id));
        session.flush();
    }

    public void updateProduct(Product product) {
        Session session =sessionFactory.openSession(); // a hibernate db session
        session.getTransaction().begin();
        session.saveOrUpdate(product);
        session.getTransaction().commit();
        session.flush();
    }




}
