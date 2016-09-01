package com.myorg.gizmobuddy.controller;



import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.myorg.gizmobuddy.model.BillingAddress;
import com.myorg.gizmobuddy.model.Customer;
import com.myorg.gizmobuddy.model.ShippingAddress;
import com.myorg.gizmobuddy.service.CustomerService;
import com.myorg.gizmobuddy.service.impl.CustomerServiceImpl;

import javax.validation.Valid;
import java.util.List;


@Controller
public class RegisterController {

	Logger log= LoggerFactory.getLogger(RegisterController.class);
	
    @Autowired
    private CustomerServiceImpl customerService;

    @RequestMapping("/register")
    public String registerCustomer(Model model){
        Customer customer = new Customer();
        BillingAddress billingAddress = new BillingAddress();
        ShippingAddress shippingAddress = new ShippingAddress();
        customer.setBillingAddress(billingAddress);
        customer.setShippingAddress(shippingAddress);

        model.addAttribute("customer", customer);

        return "registerCustomer";
    }


    @RequestMapping(value = "/register", method = RequestMethod.POST)
    public String registerCustomerPost(@Valid @ModelAttribute("customer") Customer customer, BindingResult result, Model model){

        if(result.hasErrors()){
            return "registerCustomer";
        }

        List<Customer> customerList = customerService.getAllCustomers();

        for (int i=0; i< customerList.size(); i++){
            if(customer.getCustomerEmail().equals(customerList.get(i).getCustomerEmail())){
                model.addAttribute("emailMsg", "Email already exists");

                return "registerCustomer";
            }

            if(customer.getUsername().equals(customerList.get(i).getUsername())){
                model.addAttribute("usernameMsg", "Username already exists");

                return "registerCustomer";
            }
        }

        customer.setEnabled(true);
        customer.setEnabled(true);
		customer.setRole("ROLE_USER");
        customerService.addCustomer(customer);
        return "registerCustomerSuccess";
    }

} // The End of Class;
