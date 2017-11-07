package com.rl.roadlove.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import com.rl.roadlovebackend.dao.SupplierDao;
import com.rl.roadlovebackend.model.CategoryModel;
import com.rl.roadlovebackend.model.SupplierModel;

@Controller
public class SupplierController {
	
	@Autowired
	SupplierDao supplierdao;
	
	@RequestMapping("addsupplier")
	public ModelAndView showMeAddSupplier(){
		ModelAndView modelandview= new ModelAndView("addsupplier");
		modelandview.addObject("suppliermodelattribute",new SupplierModel());
		modelandview.addObject("supplierlistmodelattribute",supplierdao.allSupplier());
		modelandview.addObject("check",true);
		return modelandview;
	}

	
@RequestMapping(value={"/supplierregister"},method=RequestMethod.POST)
	public String showMeSupplierRegister(@ModelAttribute("suppliermodelattribute") SupplierModel suppliermodel){
		
	System.out.println(suppliermodel.getSupplierName());
		if(supplierdao.insertSupplier(suppliermodel))
		{	
			return "redirect:/addsupplier";
		}
		else
		{
		return "errorcategory";
		}
	}
@RequestMapping("/deletesupplier")
public String removeSupplier(@RequestParam("supid") String supplierID)
{
	supplierdao.deleteSupplier(supplierID);
		return "redirect:/addsupplier";
	
}

@RequestMapping("/editsupplier")
public ModelAndView displaySupplierEdit(@RequestParam("supid")String supplierID) {
	
	ModelAndView modelandview= new ModelAndView("addsupplier","suppliermodelattributeedit",supplierdao.displaySupplierEdit(supplierID));
	modelandview.addObject("check",false);
	return modelandview;
}

@RequestMapping("/updatesupplier")
public String updateSupplier(@ModelAttribute("suppliermodelattribute") SupplierModel suppliermodel){
	if(supplierdao.updateSupplier(suppliermodel)){
		return "redirect:/addsupplier";
	}
	else{
		return "errorcategory";
	}
}


}
