package com.sample.controller;

import com.sample.model.Request;
import com.sample.model.TillRequest;
import com.sample.repository.RequestsRepository;
import com.sample.repository.TillRequestRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import java.util.List;

import static org.springframework.web.bind.annotation.RequestMethod.POST;

@Controller
@RequestMapping(value = "/home")
@SessionAttributes({"tillNumber"})
public class HomeController {

    @Autowired
    TillRequestRepository tillRequestRepository;

    @Autowired
    RequestsRepository requestsRepository;

    @RequestMapping(value = "index")
    public String index(Model model) {
        List<TillRequest> requests = tillRequestRepository.getAll();
        model.addAttribute("requests", requests);
        return "index";
    }

    @RequestMapping(value = "login")
    public String login() {
        return "login";
    }

    @RequestMapping(value = "login", method = POST)
    public String login(int tillNumber, Model model) {
        model.addAttribute("tillNumber", tillNumber);
        return "redirect:index";
    }

    @RequestMapping(value = "action", method = POST)
    public String action(@ModelAttribute("tillNumber") int tillNumber, String req, Model model) {
        requestsRepository.add(req, tillNumber);
        model.addAttribute("requestSent", true);
        return "redirect:index";
    }

    @RequestMapping(value = "/list")
    public String list(Model model) {
        List<Request> pendingRequests = requestsRepository.getPending();
        List<Request> doneRequests = requestsRepository.getDone();
        model.addAttribute("pending", pendingRequests);
        model.addAttribute("done", doneRequests);
        return "list";
    }

    @RequestMapping(value = "/done", method = POST)
    public String done(long requestId) {
        requestsRepository.done(requestId);
        System.out.println(requestId);
        return "redirect:list";
    }

    @RequestMapping(value = "/undo", method = POST)
    public String undo(long requestId) {
        requestsRepository.undo(requestId);
        System.out.println(requestId);
        return "redirect:list";
    }

}
