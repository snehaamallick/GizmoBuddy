package com.myorg.gizmobuddy.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.mail.javamail.JavaMailSender;
@Controller
@RequestMapping("/product/viewProduct/sendEmail")
public class SendEmailController {
	@Autowired
    private JavaMailSender mailSender;
     
    @RequestMapping(method = RequestMethod.POST)
    public String doSendEmail(HttpServletRequest request) {
        // takes input from e-mail form
        String recipientAddress = request.getParameter("email");
        String fname=request.getParameter("first_name");
        String subject ="gizmobuddy :: Your Friend Recommends..." /*request.getParameter("gizmobuddy alert")*/;
        String message = request.getParameter("comments");
        String finalmessage="Hi "+fname+", "+" "+message+"!!! "+"Check this out!!!";
         
        // prints debug info
        System.out.println("To: " + recipientAddress);
        System.out.println("Subject: " + subject);
        System.out.println("Message: " + finalmessage);
         
        // creates a simple e-mail object
        SimpleMailMessage email = new SimpleMailMessage();
        email.setTo(recipientAddress);
        email.setSubject(subject);
        email.setText(finalmessage);
         
        // sends the e-mail
        mailSender.send(email);
         
        // forwards to the view named "Result"
        return "redirect:/viewProduct";
    }
}
