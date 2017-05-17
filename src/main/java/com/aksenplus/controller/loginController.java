package com.aksenplus.controller;

import com.aksenplus.mail.MailHandler;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import java.security.Principal;

/**
 * Created by FUJITSU on 14/05/2017.
 */
@Controller
public class loginController {

/*
    @RequestMapping("/login")
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
        return "/login";
    }
*/
    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String adminLoginPage(HttpServletRequest request, ModelMap modelMap) {
        addUsername(request);
        return "login";
    }




    @RequestMapping(value = "/testemail", method = RequestMethod.GET)
    public String adminLoPage() {
        ApplicationContext context =
                new ClassPathXmlApplicationContext("webapp/WEB-INF/spring-mail.xml");
        //sending the token to the email
        MailHandler mm = (MailHandler) context.getBean("mailMail");

        String CustomerMail="rafik_m@live.com";
        String Msg="please verify your email by clicking on this link";

        mm.sendMail("no-reply@aksenplus.com",
                CustomerMail,
                "mail confirmation",
                Msg);
        return "signupSucces";
    }


    private void addUsername(HttpServletRequest request){
        Principal principal = request.getUserPrincipal();
        if(principal != null){
            request.setAttribute("username", principal.getName());
        }
    }
}
