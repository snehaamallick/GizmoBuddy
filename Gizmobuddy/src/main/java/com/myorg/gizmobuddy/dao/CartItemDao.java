package com.myorg.gizmobuddy.dao;

import com.myorg.gizmobuddy.model.Cart;
import com.myorg.gizmobuddy.model.CartItem;

public interface CartItemDao 
{
	void addCartItem(CartItem cartItem);

void removeCartItem(CartItem cartItem);

void removeAllCartItems(Cart cart);

CartItem getCartItemByProductId(int productId);
}
