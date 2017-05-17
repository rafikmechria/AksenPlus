package com.aksenplus.controller;

import com.aksenplus.model.Customer;
import com.aksenplus.service.CustomerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.web.bind.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by Power on 24/04/2017.
 */
@Controller
@RequestMapping("/customer/cart")
public class CartController {

    @Autowired
    private CustomerService customerService;
    @RequestMapping
        public String getCart()
    {

        return "customer/cart";
    }


   /* public String getCart(@AuthenticationPrincipal User activeUser)
    {
        Customer customer= customerService.getCustomerByUserName(activeUser.getUsername());
        int cardId=customer.getCart().getCartId();
        return "redirect:/cart"+cardId;
    }

*/

    @RequestMapping("/{cartId}")
    public String getCartRedirect(@PathVariable (value = "cartId") int cartId , Model model)
    {

        model.addAttribute("cartId",cartId);

        return "customer/cart";
    }


}
