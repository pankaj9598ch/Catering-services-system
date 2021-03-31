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


@Controller
public class ProductController {
	
	@Autowired
	private ProductDao productDao;
	
	@RequestMapping(value = "/addProduct.htm",method = RequestMethod.GET)
	public String AddProduct(ModelMap map) {
		map.put("product", new Product());
		return "ProductAddForm";
	}
	
	@RequestMapping(value = "/product_add.htm",method = RequestMethod.POST)
	public String ProductAdd(Product product,HttpSession session) {
		int adminId = ((Admin)session.getAttribute("admin")).getAdminId();
		
		product.setAdminId(adminId);
		productDao.insertProduct(product);
		return "adminHome";
	}
	
	@RequestMapping(value = "/product_list.htm",method = RequestMethod.GET)
	public String allProduct(ModelMap map,HttpSession session) {
		int adminId = ((Admin)session.getAttribute("admin")).getAdminId();
		List<Product> li = productDao.selectAll();
		map.put("productList", li);
		return "productList";
	}
	
	@RequestMapping(value = "/product_delete.htm",method = RequestMethod.GET)
	public String productDelete(@RequestParam int productId,ModelMap map,HttpSession session) {
		
		productDao.deleteProduct(productId);
		
		int adminId = ((Admin)session.getAttribute("admin")).getAdminId();
		List<Product> li = productDao.selectAll();
		map.put("productList", li);
		return "productList";
	}
	
//	update form redirect
	@RequestMapping(value = "/product_update_form.htm",method = RequestMethod.GET)
	public String expenseUpdateForm(@RequestParam int productId,ModelMap map) {
		
		Product prd = productDao.selectProduct(productId);
		map.put("product", prd);
		
		return "productUpdateForm";
	}
	
//	update product
	@RequestMapping(value = "/product_update.htm",method = RequestMethod.POST)
	public String expenseUpdate(Product product,ModelMap map,HttpSession session) {
		
		int adminId = ((Admin)session.getAttribute("admin")).getAdminId();
		product.setAdminId(adminId);
		productDao.updateProduct(product);
					
		List<Product> li = productDao.selectAll();
		map.put("productList", li);
		return "productList";
	}
	
//	Show Customer Product
	@RequestMapping(value = "/cust_product_list.htm",method = RequestMethod.GET)
	public String custAllProduct(ModelMap map,HttpSession session) {
//		int adminId = ((Admin)session.getAttribute("admin")).getAdminId();
		List<Product> li = productDao.selectAll();
		map.put("productList", li);
		return "custProductList";
	}
	
}
