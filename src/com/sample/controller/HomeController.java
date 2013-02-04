package com.sample.controller;

import com.sample.repository.RequestRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = "/home")
public class HomeController {

    @Autowired
    RequestRepository requestRepository;

    @RequestMapping
    public String index() {
        return "index";
    }

    @RequestMapping(value = "action", method = RequestMethod.POST)
    public String action(String req) {
        requestRepository.add(req);
        return "index";
    }

}
