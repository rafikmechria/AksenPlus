package com.aksenplus.controller;

import com.aksenplus.model.Cart;
import com.aksenplus.model.Customer;
import com.aksenplus.model.CustomerOrder;
import com.aksenplus.service.CartService;
import com.aksenplus.service.CustomerOrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by Power on 27/04/2017.
 */

@Controller
public class OrderController {

    @Autowired
    private CartService cartService;

    @Autowired
    private CustomerOrderService customerOrderService;


    @RequestMapping("/customer/order/{cartId}")
    public String newOrder(@PathVariable("cartId") int cartId)
    {
        CustomerOrder customerOrder=new CustomerOrder();
        Cart cart= cartService.getCartById(cartId);
        customerOrder.setCart(cart);

        Customer customer=cart.getCustomer();
        customerOrder.setCustomer(customer);
        customerOrder.setBillingAddress(customer.getBillingAddress());
        customerOrder.setShippingAddress(customer.getShippingAddress());

        customerOrderService.addNewOrder(customerOrder);


        return "redirect:/checkout?cartId="+cartId;
    }
    @RequestMapping("/customer/orders")
    public String settings()
    {
        return "customer/orders";
    }

}
