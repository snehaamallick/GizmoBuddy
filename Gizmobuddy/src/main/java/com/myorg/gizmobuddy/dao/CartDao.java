package com.myorg.gizmobuddy.dao;

import java.io.IOException;

import com.myorg.gizmobuddy.model.Cart;



public interface CartDao  {

    Cart getCartById(int cartId);

    Cart validate(int cartId) throws IOException;

    void update(Cart cart);

}

