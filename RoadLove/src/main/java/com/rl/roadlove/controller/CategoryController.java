package com.rl.roadlove.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.file.FileSystems;
import java.nio.file.Files;
import java.nio.file.Path;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import com.rl.roadlovebackend.dao.CategoryDao;
import com.rl.roadlovebackend.model.CategoryModel;

@Controller
public class CategoryController extends Thread {

	@Autowired
	CategoryDao categorydao;
	
	@RequestMapping("addcategory")
	public ModelAndView showMeAddCategory()
	{
		ModelAndView modelandview= new ModelAndView("addcategory","categorymodelattribute",new CategoryModel());
		modelandview.addObject( "categorylistmodelattribute",categorydao.allCategory());
		modelandview.addObject("check",true);
		return modelandview;
		
		
	}
	
	@RequestMapping(value={"/categoryregister"}, method=RequestMethod.POST)
	public String showMeCategoryRegister(@ModelAttribute("categorymodelattribute") CategoryModel categorymodel){
		if(categorydao.insertCategory(categorymodel))
		{
			String path = "D://ECLIPSE//JAVA PROGRAM//RoadLove//src//main//webapp//resources//categoryimages//"+String.valueOf(categorymodel.getCategoryID())+".jpg";
			MultipartFile category = categorymodel.getCategoryImage();
				try {
					FileOutputStream fileoutputstream = new FileOutputStream(new File(path));
					byte[] pimage = category.getBytes();
					fileoutputstream.write(pimage);
					fileoutputstream.close();
					Thread.sleep(100);
					
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				
			
			return "redirect:/addcategory";
		}
		else
		{
		return "errorcategory";
		}
	}
	
	@RequestMapping("/deletecategory")
	public String removeCategory(@RequestParam("catid") int categoryID) throws IOException
	{
		categorydao.deleteCategory(categoryID);
		Path path=FileSystems.getDefault().getPath("D://ECLIPSE//JAVA PROGRAM//RoadLove//src//main//webapp//resources//categoryimages//", String.valueOf(categoryID)+".jpg");
		Files.delete(path);
			return "redirect:/addcategory";
		
	}
	
	@RequestMapping("/editcategory")
	public ModelAndView displayCategoryEdit(@RequestParam("catid") int categoryID) throws Exception{
		
		ModelAndView modelandview= new ModelAndView("addcategory","categorymodelattributeedit",categorydao.displayCategoryEdit(categoryID));
		modelandview.addObject("check",false);
		
		try
		{
			Path path=FileSystems.getDefault().getPath("D://ECLIPSE//JAVA PROGRAM//RoadLove//src//main//webapp//resources//categoryimages//", String.valueOf(categoryID)+".jpg");
			Files.delete(path);
			return modelandview;
		}
		catch(Exception e)
		{
			System.out.println(e);
			return modelandview;
		}
		
	}
	
	
	
	@RequestMapping("/updatecategory")
	public String updateCategory(@ModelAttribute("categorymodelattribute") CategoryModel categorymodel){
		if(categorydao.updateCategory(categorymodel)){
			
			String path = "D://ECLIPSE//JAVA PROGRAM//RoadLove//src//main//webapp//resources//categoryimages//"+String.valueOf(categorymodel.getCategoryID())+".jpg";
			MultipartFile category = categorymodel.getCategoryImage();
			
				try {
					FileOutputStream fileoutputstream = new FileOutputStream(new File(path));
					byte[] pimage = category.getBytes();
					fileoutputstream.write(pimage);
					fileoutputstream.close();
					Thread.sleep(100);
					
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				
			
			
			return "redirect:/addcategory";
		}
		else{
			return "errorcategory";
		}
	}
	
	
	
	@RequestMapping("category")
	public ModelAndView showMeCategory()
	{	
		ModelAndView mv=new ModelAndView("category");
		mv.addObject("categoryListModelAttribute", categorydao.allCategory());
		return mv;
	}
}

