package com.cdac.cntr;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.cdac.dao.CartDao;
import com.cdac.dao.OrderDao;
import com.cdac.dto.Cart;
import com.cdac.dto.Customer;
import com.cdac.dto.Order;

@Controller
public class OrderController {

	@Autowired
	private OrderDao orderDao;
	
	@Autowired
	private CartDao cartDao;
	
	@RequestMapping(value = "/order_add.htm",method = RequestMethod.GET)
	public String expenseAdd(Order order,HttpSession session) {
		
//		int custId =  ((Customer)session.getAttribute("customer")).getCustId();
		int custId = (int) session.getAttribute("customer_id");
		System.out.println("customer iddddddddddddddd" + custId);
		order.setCustId(custId);
		
		List<Cart> cli = cartDao.selectAllCart();
		
		for(Cart cc : cli) {
			
			orderDao.insertOrder(cc.getProductName(), cc.getProductPrice(), custId);
			cartDao.deleteCart(cc.getCartId());
			System.out.println("asdfsadfsadf============================" +cc.getCartId());
		}
		
		
		
		
		return "home";
	}
	
	
	@RequestMapping(value = "/show_order.htm",method = RequestMethod.GET)
  	public String allOrder(ModelMap map,HttpSession session , Order order) {
	
	  int custId = (int) session.getAttribute("customer_id");
	  System.out.println("customer idddddddddddd" + custId);
	  
  		List<Order> li =orderDao.selectAll(custId);
  		
  		
  		map.put("ordertList", li);
  		return "myOrder";
  	}
	
	@RequestMapping(value = "/placed_order.htm",method = RequestMethod.GET)
  	public String placedOrder(ModelMap map,HttpSession session , Order order) {
	
		int custId = (int) session.getAttribute("customer_id");
		System.out.println("customer iddddddddddddddd" + custId);
		order.setCustId(custId);
		
		List<Cart> cli = cartDao.selectAllCart();
		
		for(Cart cc : cli) {
			
			orderDao.insertOrder(cc.getProductName(), cc.getProductPrice(), custId);
			cartDao.deleteCart(cc.getCartId());
			System.out.println("CartId============================" +cc.getCartId());
		}
  		return "customerOrderPlaced";
  	}
	
	
	
}
