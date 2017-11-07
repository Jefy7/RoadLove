package com.rl.roadlove.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.rl.roadlovebackend.dao.UserDao;
import com.rl.roadlovebackend.model.UserCredentials;

@Controller
public class LoginController {
	
	@Autowired
	UserDao userdao;
	
	@RequestMapping("/userlogin")
	public String showMeUserLogin(@RequestParam("email") String email, @RequestParam("password") String password, HttpSession session){
		
		System.out.println(email+"   "+password);
		
		UserCredentials usercredentials= userdao.singleUser(email); // NullPointerException
		
		boolean userexist=usercredentials.getPassword().equals(password);
		
		if(userexist){
			
			if(usercredentials.getRole().equals("admin")){
			
				session.setAttribute("admin",true );			
				session.setAttribute("name", usercredentials.getName());
				session.setAttribute("userEmail", usercredentials.getEmail());
				return "index";
			}
			else{
				
				session.setAttribute("admin",false );
				session.setAttribute("name", usercredentials.getName());
				session.setAttribute("userEmail", usercredentials.getEmail());
				return "index";
			}
			
		}
		
		else{
			
			return "errorcategory";
		}
	}
	
	@RequestMapping("/logout")
	public String showMeLogout(HttpSession session){
		 session.invalidate();
		
		return "index";
	}
	
	
}
