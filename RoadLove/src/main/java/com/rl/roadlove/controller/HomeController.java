package com.rl.roadlove.controller;

import java.util.List;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import com.rl.roadlovebackend.dao.CategoryDao;
import com.rl.roadlovebackend.model.CategoryModel;

@Controller
public class HomeController {
	
	@Autowired
	CategoryDao categoryDao;
	
	@RequestMapping(value={"index","/"})
	public String showMeIndex(HttpSession session)
	{
		return "index";
	}
	@RequestMapping("home")
	public String showMeHome()
	{
		return"index";
	}
	@RequestMapping("contact")
	public String showMeConatctUs()
	{
		return "contactus";
	}
	
	@RequestMapping("aboutus")
	public String showMeAboutUs()
	{
		return "aboutus";
	}
	
	@RequestMapping("login")
	public String showMeLogIn()
	{
		return "login";
	}
	
	
	
	
}
