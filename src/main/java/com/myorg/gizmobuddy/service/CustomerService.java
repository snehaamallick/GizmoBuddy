package com.myorg.gizmobuddy.service;

import java.util.List;

import com.myorg.gizmobuddy.model.Customer;


public interface CustomerService {

    void addCustomer(Customer customer);

    Customer getCustomerById(int customerId);

    List<Customer> getAllCustomers();

    Customer getCustomerByUsername(String username);

}
