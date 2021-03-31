package com.cdac.cntr;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.cdac.dao.AdminDao;
import com.cdac.dto.Admin;
import com.cdac.dto.Customer;

@Controller
public class AdminController {

	@Autowired
	private AdminDao  adminDao;
	
	@RequestMapping(value = "/AdminLoginForm.htm",method = RequestMethod.GET)
	public String prepLogForm(ModelMap map) {
		map.put("admin", new Admin());
		return "AdminLoginForm";
	}
	
	@RequestMapping(value = "/AdminRegFrom.htm",method = RequestMethod.GET)
	public String prepRegForm(ModelMap map) {
		map.put("admin", new Admin());
		return "AdmimRegForm";
	}
	
	
	@RequestMapping(value = "/adminReg.htm",method = RequestMethod.POST)
	public String register(Admin admin,ModelMap map) {
		adminDao.insertAdmin(admin);
		return "index";
	}
	
	
	
	
	@RequestMapping(value = "/adminLogin.htm",method = RequestMethod.POST)
	public String login(Admin admin,BindingResult result,ModelMap map,HttpSession session) {
		
		
		System.out.println(admin);
		
		boolean b = adminDao.checkAdmin(admin);
		System.out.println(b);
		if(b) {
			session.setAttribute("admin", admin); 
			return "adminHome";
		}else {
			map.put("admin", new Admin());
			return "index";
		}
	}
	
	 @RequestMapping(value="/AdminLogout.htm",method = RequestMethod.GET)
     public String adminLogout(HttpServletRequest request){
	
         HttpSession httpSession = request.getSession();
         httpSession.removeAttribute("admin");
        
         httpSession.invalidate();
         return "index";
     }
	
}
