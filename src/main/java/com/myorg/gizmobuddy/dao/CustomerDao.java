package com.myorg.gizmobuddy.dao;

import java.util.List;

import com.myorg.gizmobuddy.model.Customer;



public interface CustomerDao {
	

	    void addCustomer(Customer customer);

	    Customer getCustomerById(int customerId);

	    List<Customer> getAllCustomers();

	    Customer getCustomerByUsername(String username);
	

}
