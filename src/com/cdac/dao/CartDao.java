package com.cdac.dao;

import java.util.List;

import com.cdac.dto.Cart;
import com.cdac.dto.Product;

public interface CartDao {
	void insertCart(Cart cart);
	void deleteCart(int cartId);
	List<Cart> selectAllCart();
}
