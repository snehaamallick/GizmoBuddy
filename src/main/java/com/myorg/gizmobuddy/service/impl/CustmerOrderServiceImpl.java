package com.myorg.gizmobuddy.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.myorg.gizmobuddy.dao.CustomerOrderDao;
import com.myorg.gizmobuddy.model.Cart;
import com.myorg.gizmobuddy.model.CartItem;
import com.myorg.gizmobuddy.model.CustomerOrder;
import com.myorg.gizmobuddy.service.CartService;
import com.myorg.gizmobuddy.service.CustomerOrderService;




@Service
public class CustmerOrderServiceImpl implements CustomerOrderService{

    @Autowired
    private CustomerOrderDao customerOrderDao;

    @Autowired
    private CartService cartService;

    public void addCustomerOrder(CustomerOrder customerOrder){
        customerOrderDao.addCustomerOrder(customerOrder);
    }

    public double getCustomerOrderGrandTotal(int cartId){
        double grandTotal = 0;
        Cart cart = cartService.getCartById(cartId);
        List<CartItem> cartItems = cart.getCartItems();

        for (CartItem item : cartItems){
            grandTotal += item.getTotalPrice();
        }

        return grandTotal;
    }

} // The End of Class;
