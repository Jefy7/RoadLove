package com.rl.roadlove.controller;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import com.rl.roadlovebackend.dao.CategoryDao;
import com.rl.roadlovebackend.model.CategoryModel;

@Controller
public class CategoryController {

	@Autowired
	CategoryDao categorydao;
	
	@RequestMapping("addcategory")
	public ModelAndView showMeAddCategory()
	{
		ModelAndView modelandview= new ModelAndView("addcategory","categorymodelattribute",new CategoryModel());
		modelandview.addObject( "categorylistmodelattribute",categorydao.allCategory());
		return modelandview;
	}
	
	@RequestMapping("/categoryregister")
	public String showMeCategoryRegister(@ModelAttribute("categorymodelattribute") CategoryModel categorymodel){
		if(categorydao.insertCategory(categorymodel))
		{
			return "successcategory";
		}
		else
		{
		return "errorcategory";
		}
	}
}

