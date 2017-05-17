package com.aksenplus.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by FUJITSU on 15/05/2017.
 */

@Controller
public class CustomerController {
    @RequestMapping("/customer/profile")
    public String home()
    {
        return "customer/profile";
    }



    @RequestMapping("/customer/settings")
    public String settings()
    {
        return "customer/settings";
    }


}
