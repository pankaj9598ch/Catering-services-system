package com.cdac.dto;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table
public class Cart {
	@Id
	@GeneratedValue
	@Column(name = "cart_id")
	private int cartId;
	
	@Column(name = "product_name")
	private String productName;
	
	@Column(name = "product_price")
	private float productPrice;

	public Cart() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Cart(int cartId) {
		super();
		this.cartId = cartId;
	}

	public int getCartId() {
		return cartId;
	}

	public void setCartId(int cartId) {
		this.cartId = cartId;
	}

	public String getProductName() {
		return productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	public float getProductPrice() {
		return productPrice;
	}

	public void setProductPrice(float productPrice) {
		this.productPrice = productPrice;
	}

	@Override
	public String toString() {
		return "Cart [cartId=" + cartId + ", productName=" + productName + ", productPrice=" + productPrice + "]";
	}
	
	
	
}
