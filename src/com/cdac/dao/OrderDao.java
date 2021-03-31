package com.cdac.dao;


import java.util.List;

import com.cdac.dto.Order;


public interface OrderDao {

	void insertOrder(String productName , float productPrice ,int custId);
	List<Order> selectAll(int custId);
	
}
