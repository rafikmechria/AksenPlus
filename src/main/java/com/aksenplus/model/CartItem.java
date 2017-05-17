package com.aksenplus.model;

import com.fasterxml.jackson.annotation.JsonIgnore;

import javax.persistence.*;
import java.io.Serializable;

/**
 * Created by Power on 16/04/2017.
 */

@Entity
public class CartItem implements Serializable {


    private static final long serialVersionUID = 3478943922081307763L;


    @Id
    @GeneratedValue
    private int cartItemId;



    @ManyToOne // we got many cartItems into a one cart !
    @JoinColumn(name = "cartId") // foregin key
    @JsonIgnore
    private Cart cart;


@ManyToOne
@JoinColumn(name = "productId")
@JsonIgnore
    private Product product;



    private int quantity;



    private  double totalprice;


    public CartItem(Product product) {
        this.product = product;
        this.quantity = 1;
        this.totalprice = product.getProductPrice();
    }




    public CartItem (){}

    public static long getSerialVersionUID() {
        return serialVersionUID;
    }

    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }

    public int getCartItemId() {
        return cartItemId;
    }

    public void setCartItemId(int cartItemId) {
        this.cartItemId = cartItemId;
    }

    public Cart getCart() {
        return cart;
    }

    public void setCart(Cart cart) {
        this.cart = cart;
    }



    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public double getTotalprice() {
        return totalprice;
    }

    public void setTotalprice(double totalprice) {
        this.totalprice = totalprice;
    }
}
