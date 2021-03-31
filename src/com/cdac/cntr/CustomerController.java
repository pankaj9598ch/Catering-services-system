package com.cdac.cntr;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.MailSender;
import org.springframework.mail.SimpleMailMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.context.request.WebRequest;

import com.cdac.dao.CartDao;
import com.cdac.dao.CustomerDao;
import com.cdac.dto.Cart;
import com.cdac.dto.Customer;


@Controller
public class CustomerController {
	
	@Autowired
	private CustomerDao  customerDao;
	
	@Autowired
	private MailSender mailSender;
	
	@Autowired
	private CartDao cartDao;
	
	@RequestMapping(value = "/regForm.htm",method = RequestMethod.GET)
	public String regForm(ModelMap map) {
		map.put("customer", new Customer());
		return "regForm";
	}
	
	@RequestMapping(value = "/reg.htm",method = RequestMethod.POST)
	public String register(Customer customer,ModelMap map) {
		customerDao.insertCustomer(customer);
		return "index";
	}
	
	@RequestMapping(value = "/loginForm.htm",method = RequestMethod.GET)
	public String prepLogForm(ModelMap map) {
		map.put("customer", new Customer());
		return "loginForm";
	}
	
	@RequestMapping(value = "/login.htm",method = RequestMethod.POST)
	public String login(Customer customer,BindingResult result,ModelMap map,HttpSession session) {
		
		
		
		
		boolean b = customerDao.checkCustomer(customer);
		if(b) {
			
			session.setAttribute("customer_id", customer.getCustId());
			session.setAttribute("customer", customer); 
			return "home";
		}else {
			map.put("customer", new Customer());
			return "index";
		}
	}
	
	
	
	@RequestMapping(value = "/forgot_password.htm",method = RequestMethod.POST)
	public String forgotPassword(@RequestParam String custEmail,ModelMap map) {	
		System.out.println(custEmail);
		String pass = customerDao.forgotPassword(custEmail);
		String msg = "you are not registered";
		if(pass!=null) {	
			
			SimpleMailMessage message = new SimpleMailMessage();  
	        message.setFrom("pankaj9598ch@gmail.com");  
	        message.setTo(custEmail);  
	        message.setSubject("Your password");  
	        message.setText(pass);  
	        //sending message   
	        mailSender.send(message);
			msg = "check the mail for password";
		}
		map.put("msg", msg);
		return "index";
	}
	
//	@RequestMapping(value = "/customer_logout.htm",method = RequestMethod.GET)
//	public String logout(@ModelAttribute Customer customer ,HttpSession session,ModelMap map,SessionStatus status,WebRequest request) {
//		 status.setComplete();
//		 request.removeAttribute("customer", WebRequest.SCOPE_SESSION);
//		 session.invalidate();
//		 map.put("customer", new Customer());
//		return "index";
//	}
	
	 @RequestMapping(value="/logout.htm",method = RequestMethod.GET)
     public String logout(HttpServletRequest request){
		 List<Cart> cli = cartDao.selectAllCart();
			
			for(Cart cc : cli) {
				cartDao.deleteCart(cc.getCartId());
				System.out.println("asdfsadfsadf============================" +cc.getCartId());
			}
         HttpSession httpSession = request.getSession();
         httpSession.removeAttribute("customer");
         httpSession.removeAttribute("customer_id");
         httpSession.invalidate();
         return "index";
     }
	
	
	
}
