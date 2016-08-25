package com.myorg.gizmobuddy.service;

import com.myorg.gizmobuddy.model.CustomerOrder;

public interface CustomerOrderService {

    void addCustomerOrder(CustomerOrder customerOrder);

    double getCustomerOrderGrandTotal(int cartId);
}
