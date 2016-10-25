package com.myorg.gizmobuddy.service;

import com.myorg.gizmobuddy.model.Cart;

public interface CartService {

    Cart getCartById(int cartId);

    void update(Cart cart);
}

