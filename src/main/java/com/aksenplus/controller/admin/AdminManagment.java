package com.aksenplus.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

/**
 * Created by Power on 20/04/2017.
 */
@Controller

public class AdminManagment {

    @RequestMapping("/admin-login")
    public String login(@RequestParam(value = "error" , required=false ) String error ,
                        @RequestParam(value = "logout" , required=false ) String logout, Model model)
    {

        if(error!=null)
        {
            model.addAttribute("error","Login Error ,Check your username or password !");
        }

        if(error!=null)
        {
            model.addAttribute("msg","Logout Success . ");
        }
        return "admin-login";
    }



}
