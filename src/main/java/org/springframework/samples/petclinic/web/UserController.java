package org.springframework.samples.petclinic.web;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.samples.petclinic.model.Owner;
import org.springframework.samples.petclinic.model.User;
import org.springframework.samples.petclinic.service.ClinicService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.Collection;


@Controller
public class UserController {

    private final ClinicService clinicService;

    @Autowired
    public UserController(ClinicService clinicService) {
        this.clinicService = clinicService;
    }


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
        ModelAndView mav = new ModelAndView("login");
//        mav.addObject("username", username);


        Collection<User> results = this.clinicService.findUsernameAndPassword(username, password);

        System.out.println(results.size());

        if (!results.isEmpty()) {
            System.out.println("Vao duoc roi ban oi");
            mav = new ModelAndView("welcome");
            mav.addObject("username", username);
        } else {
            System.out.println("Ko vao duoc dau ban oi");
            mav = new ModelAndView("login");
            mav.addObject("message", "Username or Password is wrong!!");
        }

/*        System.out.println(login.getUsername() + " " + login.getPassword());*/
        return mav;
    }
}

