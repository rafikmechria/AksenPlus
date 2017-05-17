package com.aksenplus.dao.impl;

import com.aksenplus.dao.CartItemDao;
import com.aksenplus.model.Cart;
import com.aksenplus.model.CartItem;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import javax.transaction.Transactional;
import java.util.List;

/**
 * Created by Power on 27/04/2017.
 */

@Repository
@Transactional
public class CartItemDaoImpl implements CartItemDao {


    @Autowired // hibernate seession acces
    private SessionFactory sessionFactory;

    public void addCartItem(CartItem cartItem) {

        Session session=sessionFactory.getCurrentSession();
        session.saveOrUpdate(cartItem);
        session.flush();
    }

    public void removeCartItem(CartItem cartItem) {
        Session session=sessionFactory.getCurrentSession();
        session.delete(cartItem);
        session.flush();
    }

    public void removeAllCartItems(Cart cart)
    {
        List<CartItem> cartItems=cart.getCartItems();

        for (CartItem item:cartItems)
        {
            removeCartItem(item);
        }

    }

    public CartItem getCartItemByProductId(int productId) {
        Session session = sessionFactory.openSession();
        Query query= session.createQuery(" FROM CartItem where productId =?");
        query.setInteger(0,productId);
        session.flush();

        return (CartItem) query.uniqueResult();
    }


}
