package org.springframework.samples.petclinic.web;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController {

    @GetMapping(value = "/welcome")
    public String Welcome() {
        return "welcome";
    }

}
