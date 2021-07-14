package cg.wbd.grandemonstration.controller;

import cg.wbd.grandemonstration.service.CustomerService;
import cg.wbd.grandemonstration.service.impl.SimpleCustomerServiceImpl;
import com.sun.org.apache.xpath.internal.operations.Mod;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class CustomerController2 {
    @Autowired
    private CustomerService customerService2;
    @GetMapping("/customers2")
    public String getAll(Model model) {
        model.addAttribute("customers", customerService2.findAll());
        return "list2";
    }
}
