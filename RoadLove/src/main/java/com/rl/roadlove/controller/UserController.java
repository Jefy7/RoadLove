package com.rl.roadlove.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.rl.roadlovebackend.dao.UserDao;
import com.rl.roadlovebackend.model.UserCredentials;

@Controller
public class UserController {
	
	@Autowired
	UserDao userdao;
	
	@RequestMapping("signup")
	public ModelAndView showMeSignUp()
	{
		return new ModelAndView("signup","usermodelattribute",new UserCredentials());
	}
	
	@RequestMapping("/userregister")
	public String showMeUserRegister(@ModelAttribute("usermodelattribute") UserCredentials usercredentials){
		if(userdao.insertUser(usercredentials))
		{
			return "success";
		}
		else
		{
		return "errorsignup";
		}
	}
}
