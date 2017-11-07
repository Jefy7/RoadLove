package com.rl.roadlove.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.rl.roadlovebackend.dao.CartDAO;
import com.rl.roadlovebackend.dao.ProductDao;
import com.rl.roadlovebackend.model.CartModel;
import com.rl.roadlovebackend.model.ProductModel;

@Controller
public class CartController extends Thread {
	
	@Autowired
	CartDAO cartDAO;
	@Autowired
	ProductDao productdao;
	
	@RequestMapping("/addtocart")
	public String addProductTocart(@RequestParam("id") int productId,HttpSession session)
	{ 

try {
	CartModel cartmodel=cartDAO.ifProductExistsForUser(session.getAttribute("userEmail").toString(), productId);
	if(cartmodel==null)
	{
	ProductModel prod=productdao.displayProductEdit(productId);
	CartModel cart=new CartModel();
	cart.setProductID(prod.getProductID());
	cart.setProductname(prod.getProductName());
	cart.setProductprize(prod.getPrize());
	cart.setTotal(prod.getPrize());
	cart.setCartID(session.getAttribute("userEmail").toString());
	if(cartDAO.addProductTocart(cart))
		
	{
		return "redirect:/mycart";
	}
	else
	{
		return "redirect:/mycart";
	}
	}
	else
	{
		cartmodel.setItems(cartmodel.getItems()+1);
		cartmodel.setTotal(cartmodel.getItems()*cartmodel.getProductprize());
		if(cartDAO.updateCart(cartmodel))
		{
			return "redirect:/mycart";
		}
	
		else
		{
			return "redirect:/mycart";
		}
	}
	
} catch (Exception e) {
	// TODO: handle exception
	return "redirect:signup";
}
	
	
	}
	
	
	@RequestMapping("/mycart")
	public ModelAndView categorisedProducts(HttpSession session)
	{
		ModelAndView mv=new ModelAndView("cart");
		mv.addObject("cartproducts",cartDAO.userCart(session.getAttribute("userEmail").toString()));
		mv.addObject("grandtotal",cartDAO.cartGrandTotal(session.getAttribute("userEmail").toString()) );
		return mv;
	}
	
	@RequestMapping("/updcart/{id}/{quantity}/")
	public String updateCart(@PathVariable("id") int productId,@PathVariable("quantity") int quantity,HttpSession session) throws Exception
	{
		CartModel cartmodel=cartDAO.ifProductExistsForUser(session.getAttribute("userEmail").toString(), productId);
		cartmodel.setItems(quantity);
		cartmodel.setTotal(cartmodel.getItems()*cartmodel.getProductprize());
		cartDAO.updateCart(cartmodel);
		Thread.sleep(1000);
		return "redirect:/mycart";
	}

	@RequestMapping("/checkout")
	public String checkOut(){
		
		return "checkout";
	}
	
}
