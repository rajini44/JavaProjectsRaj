package com.webapp.productcontroller;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;



@RestController
public class ProductController {
	
	@Autowired
	private UserDetails detls;
	
	@Autowired
	private ProductService productService;
	
	@RequestMapping(value="/login",method=RequestMethod.GET)
	public ModelAndView getAdmissionForm(){
		
		ModelAndView model = new ModelAndView("LoginPage");
		return model;
		
	}
	
	@RequestMapping(value="/submitLoginForm.html",method=RequestMethod.POST)
	public ModelAndView submitLoginForm(@RequestParam("userName") String user, @RequestParam("password") String pwd){
		
		System.out.println("User--" +detls.getUserName() +"::" +user);
		if(detls.getUserName().contains(user)&& detls.getPassword().contains(pwd)){
			ModelAndView model1 = new ModelAndView("HomePage");
			return model1;
		}	
		ModelAndView model = new ModelAndView("ErrorPage");
		return model;
		
	}
	

	@RequestMapping("/products")
	public List<Product> getAllProducts() {
		return productService.getProducts();
	}
	
	
	@RequestMapping(value="/OnlineStore/products/add", method= RequestMethod.POST)
	public ModelAndView addProduct(@RequestBody Product product) {
		System.out.println("Hit :::"+product.toString());
		return productService.addProduct(product);
		
	}
	
	@RequestMapping(value="add.html", method= RequestMethod.POST)
	public ModelAndView addProductView() {
		ModelAndView model = new ModelAndView("AddProductPage");
		return model;
		
	}
	
	@RequestMapping(value="/products/{id}",method = RequestMethod.PUT )
	public void updateProduct(@PathVariable int id, @RequestBody Product product) {
		productService.updateProduct(id, product);
	}
	
	@RequestMapping( value="/products/{id}",method = RequestMethod.DELETE)
	public void deleteProduct(@PathVariable int id) {
		productService.removeProduct(id);
	}
	
	
}
