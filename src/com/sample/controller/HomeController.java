package com.sample.controller;

import com.sample.model.Request;
import com.sample.model.TillRequest;
import com.sample.repository.RequestsRepository;
import com.sample.repository.TillRequestRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.List;

@Controller
@RequestMapping(value = "/home")
public class HomeController {

    @Autowired
    TillRequestRepository tillRequestRepository;

    @Autowired
    RequestsRepository requestsRepository;

    @RequestMapping
    public String index(Model model) {
        List<TillRequest> requests = tillRequestRepository.getAll();
        model.addAttribute("requests", requests);
        return "index";
    }

    @RequestMapping(value = "action", method = RequestMethod.POST)
    public String action(String req) {
        int tillNumber = 2;
        requestsRepository.add(req, tillNumber);
        return "index";
    }

    @RequestMapping(value = "/list")
    public String list(Model model) {
        List<Request> pendingRequests = requestsRepository.getPending();
        List<Request> doneRequests = requestsRepository.getDone();
        model.addAttribute("pending", pendingRequests);
        model.addAttribute("done", doneRequests);
        return "list";
    }

}
