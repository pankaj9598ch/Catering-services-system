package com.cdac.cntr;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.cdac.dao.ProductDao;
import com.cdac.dto.Admin;
import com.cdac.dto.Product;

import com.cdac.dao.CartDao;
import com.cdac.dto.Cart;

@Controller
public class CartController {
	
	@Autowired
	private CartDao cartDao;
	
	@RequestMapping(value = "/product_cart_form.htm",method = RequestMethod.GET)
	public String addCart(ModelMap map, @RequestParam String productName, @RequestParam float productPrice , Cart cart ) {
		cart.setProductName(productName);
		cart.setProductPrice(productPrice);
		
		cartDao.insertCart(cart);
		List<Cart> li = cartDao.selectAllCart();
		map.put("cartList", li);
		return "myCart";
	}
	

	@RequestMapping(value = "/cart_delete.htm",method = RequestMethod.GET)
	public String cartDelete(@RequestParam int cartId, ModelMap map,HttpSession session) {
		
		cartDao.deleteCart(cartId);
	
		List<Cart> li = cartDao.selectAllCart();
		map.put("cartList", li);
		
		
		
		
		return "myCart";
		
	}
	
	@RequestMapping(value = "/cart_show.htm",method = RequestMethod.GET)
	public String showCart( ModelMap map,HttpSession session) {
		
	
		List<Cart> li = cartDao.selectAllCart();
		map.put("cartList", li);
		
		return "myCart";
		
	}
	
}
