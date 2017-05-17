package com.aksenplus.dao.impl;

import com.aksenplus.dao.CategoryDao;
import com.aksenplus.model.Catalog;
import com.aksenplus.model.Category;
import com.aksenplus.model.Product;
import org.hibernate.Hibernate;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import javax.transaction.Transactional;
import java.util.List;

/**
 * Created by Power on 03/05/2017.
 */

@Repository
@Transactional
public class CategoryDaoImpl implements CategoryDao {

    @Autowired
    private SessionFactory sessionFactory;

    public void addCategory(Category category) {
        Session session =sessionFactory.openSession(); // a hibernate db session
        session.getTransaction().begin();
        session.saveOrUpdate(category);
        session.getTransaction().commit();
        session.flush();

    }

    public void removeCategory(String category) {
        Session session =sessionFactory.getCurrentSession(); // a hibernate db session
        session.delete(getCategoryByName(category));
        session.flush();
    }

    public Category getCategoryByName(String categoryName) {

        Session session =sessionFactory.getCurrentSession();
        session.beginTransaction();
        Query query = session.createQuery(" from Category where categoryNameEn = ?");
        query.setString(0,categoryName);
        return  (Category) query.uniqueResult();

    }


    public List<Product> getProductsByCategoryName(String categoryName) {

        Session session =sessionFactory.getCurrentSession();
        session.getTransaction().begin();
        Query query = session.createQuery(" from Product where productCategory = ?");
        query.setString(0,categoryName);
        List<Product> products=query.list();
        session.getTransaction().commit();
        session.flush();
        return  products;

    }




}
