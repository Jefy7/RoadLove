package com.rl.roadlove.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.nio.file.FileSystems;
import java.nio.file.Files;
import java.nio.file.Path;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.rl.roadlovebackend.dao.CategoryDao;
import com.rl.roadlovebackend.dao.ProductDao;
import com.rl.roadlovebackend.dao.SupplierDao;
import com.rl.roadlovebackend.model.CategoryModel;
import com.rl.roadlovebackend.model.ProductModel;
import com.rl.roadlovebackend.model.SupplierModel;

@Controller
public class ProductController extends Thread {
	@Autowired
	ProductDao productdao;
	
	@Autowired
	SupplierDao supplierdao;
	
	@Autowired
	CategoryDao categorydao;
	
	@RequestMapping("addproduct")
	public ModelAndView showMeAddProduct(){
		ModelAndView modelandview= new ModelAndView("addproduct","productmodelattribute",new ProductModel());
		modelandview.addObject( "productlistmodelattribute",productdao.allProduct());
		modelandview.addObject( "supplierlistmodelattribute",(List<SupplierModel>)supplierdao.allSupplier());
		modelandview.addObject("categorylistmodelattribute", (List<CategoryModel>)categorydao.allCategory());
		modelandview.addObject("check",true);
		return modelandview;
	}
	
@RequestMapping(value={"/productregister"},method=RequestMethod.POST)
	
	public String showMeProductRegister(@ModelAttribute("productmodelattribute") ProductModel productmodel){
	
		if(productdao.insertProduct(productmodel))
		{
			String path = "D://ECLIPSE//JAVA PROGRAM//RoadLove//src//main//webapp//resources//productimages//"+String.valueOf(productmodel.getProductID())+".jpg";
			MultipartFile product = productmodel.getProductImage();
			
				try {
					FileOutputStream fileoutputstream = new FileOutputStream(new File(path));
					byte[] pimage = product.getBytes();
					fileoutputstream.write(pimage);
					fileoutputstream.close();
					Thread.sleep(100);
					
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				
			
			return "redirect:/addproduct";
		}
		else
		{
		return "errorcategory";
		}
	}
	
@RequestMapping("/deleteproduct")
public String removeProduct(@RequestParam("proid") int productId) throws Exception
{
	productdao.deleteProduct(productId);
	Path path=FileSystems.getDefault().getPath("D://ECLIPSE//JAVA PROGRAM//RoadLove//src//main//webapp//resources//productimages//", String.valueOf(productId)+".jpg");
	Files.delete(path);
		return "redirect:/addproduct";
	
}


@RequestMapping("/editproduct")
public ModelAndView displayProductEdit(@RequestParam("proid") int productId) throws Exception{
	
	ModelAndView modelandview= new ModelAndView("addproduct","productmodelattributeedit",productdao.displayProductEdit(productId));
	modelandview.addObject("check",false);
	
	Path path=FileSystems.getDefault().getPath("D://ECLIPSE//JAVA PROGRAM//RoadLove//src//main//webapp//resources//productimages//", String.valueOf(productId)+".jpg");
	Files.delete(path);
	return modelandview;
}

@RequestMapping("/updateproduct")
public String updateCategory(@ModelAttribute("productmodelattribute") ProductModel productmodel){
	if(productdao.updateProduct(productmodel)){
		
		String path = "D://ECLIPSE//JAVA PROGRAM//RoadLove//src//main//webapp//resources//productimages//"+String.valueOf(productmodel.getProductID())+".jpg";
		MultipartFile product = productmodel.getProductImage();
		
			try {
				FileOutputStream fileoutputstream = new FileOutputStream(new File(path));
				byte[] pimage = product.getBytes();
				fileoutputstream.write(pimage);
				fileoutputstream.close();
				Thread.sleep(100);
				
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		
		return "redirect:/addproduct";
	}
	else{
		return "errorcategory";
	}
} 


@RequestMapping("/{catname}")
public ModelAndView categorisedProducts(@PathVariable("catname") String categoryName )
{
	ModelAndView mv=new ModelAndView("Product");
	mv.addObject("catproducts",(List<ProductModel>)productdao.categorisedProductList(categoryName));
	return mv;
}



}
