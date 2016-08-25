package com.myorg.gizmobuddy.controller;


import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.security.web.bind.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseStatus;

import com.myorg.gizmobuddy.service.CartItemService;
import com.myorg.gizmobuddy.service.CustomerService;
import com.myorg.gizmobuddy.service.ProductService;



@Controller
public class HomeController {
	
	 @Autowired
	    private CartItemService cartItemService;
	 @Autowired
	    private CustomerService customerService;
	 @Autowired
	    private ProductService productService;

	 @RequestMapping(value={"/","gotoindex"})
		public String homePage()
		{
			return "home";
		}
		@RequestMapping("/aboutus")
		public String loadAboutusPage()
		{
			return "aboutus";
		}
		@RequestMapping("/faq")
		public String loadfaq()
		{
			return "faq";
		}
		@RequestMapping("/Contact")
		public String loadContactPage()
		{
			return "contact";
		}
    
 
    @RequestMapping("/login")
    public String login(
            @RequestParam(value="error", required = false)
            String error,
            @RequestParam(value="logout", required = false)
            String logout,
            Model model){

        if(error != null){
            model.addAttribute("error", "Invalid username and password");
        }

        if (logout !=null){
            model.addAttribute("msg", "You have been logged out successfully");
        }

        return "login";
    }
    
    @RequestMapping(value="/logout", method = RequestMethod.GET)
	public String logoutPage (HttpServletRequest request, HttpServletResponse response) {
	    Authentication auth = SecurityContextHolder.getContext().getAuthentication();
	    if (auth != null){    
	        new SecurityContextLogoutHandler().logout(request, response, auth);
	    }
	    return "redirect:/login?logout";//You can redirect wherever you want, but generally it's a good practice to show login screen again.
	}

    @RequestMapping("/about")
    public String about(){
        return "about";
    }
    
    @RequestMapping("/logout")
    public String logout(){
        return "home";
    }


} // The End of Class;
