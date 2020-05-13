package org.springframework.samples.petclinic.web;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import org.springframework.samples.petclinic.model.Login;

@Controller
public class UserController {

    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public ModelAndView showLogin(HttpServletRequest request, HttpServletResponse response) {
        ModelAndView obj = new ModelAndView("login");
        obj.setViewName("login");
        return obj;
    }

    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public ModelAndView loginProcess(HttpServletRequest request, HttpServletResponse response,
                                     @RequestParam("username") String username,
                                     @RequestParam("password") String password) {
        Login login = new Login(username, password);
        ModelAndView mav = new ModelAndView("welcome");
        mav.addObject("username", login.getUsername());


/*        System.out.println(login.getUsername() + " " + login.getPassword());*/
        return mav;
    }
}

