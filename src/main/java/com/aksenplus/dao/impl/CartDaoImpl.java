package com.aksenplus.dao.impl;

import com.aksenplus.dao.CartDao;
import com.aksenplus.model.Cart;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import javax.transaction.Transactional;
import java.io.IOException;

/**
 * Created by Power on 13/04/2017.
 */

@Repository
@Transactional
public class CartDaoImpl implements CartDao{
/*
    private Map<String,Cart> Listofcarts;
    public CartDaoImpl() {
        Listofcarts =new HashMap<String, Cart>();
    }
    public Cart create(Cart cart) {
        if(Listofcarts.keySet().contains(cart.getCartId()))
        {
         throw new  IllegalArgumentException(String.format("cannot create a cart one existing!",cart.getCartId()));
        }else
            {
                Listofcarts.put(String.valueOf(cart.getCartId()), cart);
            }
        return  cart;
    }
    public Cart read(String cartid) {

        return Listofcarts.get(cartid);
    }
    public void update(String cartid, Cart cart)
    {
        if (! Listofcarts.keySet().contains(cartid))
        {
            throw new  IllegalArgumentException(String.format("cannot update cart , not found!",cart.getCartId()));
        }
        else
        {
            delete(cartid);
            Listofcarts.put(cartid,cart);
        }
    }
    public void delete(String cartid)
    {

        if (! Listofcarts.keySet().contains(cartid))
        {
            throw new  IllegalArgumentException(String.format("cannot remove nothin !!"));
        }  else
            Listofcarts.remove(cartid);
    }
*/

@Autowired
private SessionFactory sessionFactory;


    public Cart getCartById(int cartid) {
        Session session =sessionFactory.getCurrentSession();
        session.beginTransaction();
        return (Cart) session.get(Cart.class , cartid);
    }

    public void update(int cartid, Cart cart) {

    }

    public void update( Cart cart) {
        int cartId = cart.getCartId();

    }

    public void delete(int cartid) {

    }

    public Cart validate(int cartId) throws IOException {

        Cart cart=getCartById(cartId);
        if(cart==null||cart.getCartItems().size()==0)
        {
            throw new IOException(cartId+"");
        }
        update(cart);
        return cart;
    }






}
