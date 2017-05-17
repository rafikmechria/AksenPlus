package com.aksenplus.dao.impl;

import com.aksenplus.dao.AdBannerDao;
import com.aksenplus.model.AdBanner;
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
 * Created by Power on 02/05/2017.
 */
@Repository
@Transactional
public class AdBannerDaoImpl implements AdBannerDao {

    @Autowired
    private SessionFactory sessionFactory;


    public void addNewAdBanner(AdBanner adBanner) {



        Session session =sessionFactory.openSession(); // a hibernate db session
        session.getTransaction().begin();
        session.setFlushMode(FlushMode.COMMIT);
        session.saveOrUpdate(adBanner);
        session.getTransaction().commit();
        session.flush();
        session.close();
    }

    public AdBanner getAdBannerByName(String Name) {
        return null;
    }

    public AdBanner getAdBannerById(int id) {
        Session session =sessionFactory.getCurrentSession();
        session.beginTransaction();
        AdBanner adBanner =(AdBanner) session.get(AdBanner.class ,id);
        return adBanner;
    }

    public List<AdBanner> getAllAdBanners() {
        Session session =sessionFactory.openSession();
        session.beginTransaction();
        session.setFlushMode(FlushMode.COMMIT);
        Query query = session.createQuery(" from AdBanner");
        List<AdBanner> adBanners=query.list();
        session.flush();
        session.close();
        return  adBanners;
    }

    public void deleteAdBanner(int id) {
        Session session =sessionFactory.getCurrentSession(); // a hibernate db session
        session.delete(getAdBannerById(id));
        session.flush();
    }

    public void updateAdBanner(AdBanner adBanner) {
        Session session =sessionFactory.openSession(); // a hibernate db session
        session.getTransaction().begin();
        session.saveOrUpdate(adBanner);
        session.getTransaction().commit();
        session.flush();
    }
}
