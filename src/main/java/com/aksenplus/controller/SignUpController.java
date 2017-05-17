package com.aksenplus.controller;

import com.aksenplus.mail.MailHandler;
import com.aksenplus.model.BillingAddress;
import com.aksenplus.model.Customer;
import com.aksenplus.model.ShippingAddress;
import com.aksenplus.service.CustomerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.validation.Valid;
import java.util.UUID;

/**
 * Created by Power on 24/04/2017.
 */

@Controller
public class SignUpController {

    @Autowired
    private CustomerService customerService;



    @RequestMapping("/signup")
    public String newCustomerInit(Model model)
    {
        Customer customer=new Customer();
        BillingAddress billingAddress=new BillingAddress();
        ShippingAddress shippingAddress =new ShippingAddress();
        customer.setBillingAddress(billingAddress);
        customer.setShippingAddress(shippingAddress);




        model.addAttribute("customer",customer);
        return "signup";
    }


    @RequestMapping( value = "/signup",method = RequestMethod.POST)
    public String newCustomerRegister(@Valid @ModelAttribute("customer") Customer customer,BindingResult result)
    {
        if(result.hasErrors()){
            return "signup";
        }
        customer.setEnabled(true);//active the customer maybe admin block him later
        customer.setVerified(false);// ofcourse not verified is false till user verify his email
        customer.setToken(UUID.randomUUID().toString());
        customerService.addCustomer(customer);


        return "signupSucces";
    }

}
