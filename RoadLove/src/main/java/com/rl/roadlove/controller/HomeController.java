package com.rl.roadlove.controller;

import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {
	
	@RequestMapping(value={"index","/"})
	public String showMeIndex()
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
	
	@RequestMapping("addproduct")
	public String showMeAddProduct(){
		return "addproduct";
	}
	
	
}
