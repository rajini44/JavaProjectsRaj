package com.webapp.productcontroller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

@Service
public class ProductService {

	private List<Product> products = new ArrayList();
	public List<Product> getProducts() {
		return products;
	}

	public ModelAndView addProduct(Product product) {
		products.add(product);
		ModelAndView model = new ModelAndView("HomePage");
		return model;
	}

	public void updateProduct(int id, Product product) {
		// TODO Auto-generated method stub
		
	}

	public void removeProduct(int id) {
		// TODO Auto-generated method stub
		
	}

}
