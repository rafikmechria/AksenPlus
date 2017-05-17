package com.aksenplus.dao.impl;

import com.aksenplus.dao.CatalogDao;
import com.aksenplus.model.*;
import org.hibernate.FlushMode;
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
public class CatalogDaoImpl implements CatalogDao {

    @Autowired
    private SessionFactory sessionFactory;

    public void AddCatalog(Catalog catalog) {
        Session session =sessionFactory.openSession(); // a hibernate db session
        session.getTransaction().begin();
        session.saveOrUpdate(catalog);
        session.getTransaction().commit();
        session.flush();
    }



    public Catalog GetCatalogByName( String catalogName) {
        Session session = sessionFactory.openSession();
        session.getTransaction().begin();
        Query query = session.createQuery(" from Catalog where catalogName = ?");
        query.setString(0,catalogName);
       Catalog cc = (Catalog) query.uniqueResult();

        session.getTransaction().commit();
        session.flush();
        return cc;

    }



    public List<Catalog> GetAllCataloges() {
        Session session = sessionFactory.openSession();
        session.beginTransaction();
        session.setFlushMode(FlushMode.COMMIT);
        Query query = session.createQuery(" from Catalog");
        List<Catalog> catalogs=query.list();
        session.flush();
        session.close();
        return catalogs;
    }

    public List<Category> GetSubCategories(String catalogName) {

        Catalog catalog =GetCatalogByName(catalogName);

        Session session = sessionFactory.openSession();
        session.beginTransaction();
        session.setFlushMode(FlushMode.COMMIT);
        Query query = session.createQuery(" from Category where catalogId=?");
        query.setInteger(0,catalog.getCatalogId());
        List<Category> categories=query.list();
        session.flush();
        session.close();
        return categories;
    }

            //getting categories based on catalogue id
    public List<Category> GetAllCategories() {
        Session session = sessionFactory.openSession();
        session.beginTransaction();
        session.setFlushMode(FlushMode.COMMIT);
        Query query = session.createQuery(" from Category");
        List<Category> categories=query.list();
        session.flush();
        session.close();
        return categories;
    }

    public void removeCartItem(String catalogName) {
        Session session =sessionFactory.getCurrentSession(); // a hibernate db session
        session.delete(GetCatalogByName(catalogName));
        session.flush();
    }
}
