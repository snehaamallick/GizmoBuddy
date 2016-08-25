package com.myorg.gizmobuddy.service;

import com.myorg.gizmobuddy.model.Cart;
import com.myorg.gizmobuddy.model.CartItem;

public interface CartItemService {

    void addCartItem(CartItem cartItem);

    void removeCartItem(CartItem cartItem);

    void removeAllCartItems(Cart cart);

    CartItem getCartItemByProductId(int productId);

}
