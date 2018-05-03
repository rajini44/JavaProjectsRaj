package com.webapp.productcontroller;

import java.util.List;

public class Product {

	private int productId;
	
	private String productName;
	
	private String productDescription;
	
	private String productsList;
	
//	private List<ProductDetails> productdetails;
	
	public Product(int productId, String productName, String productDescription, List<ProductDetails> productdetails) {
		super();
		this.productId = productId;
		this.productName = productName;
		this.productDescription = productDescription;
//		this.productdetails = productdetails;
	}



	public Product() {
	super();
}



	public int getProductId() {
		return productId;
	}





	public void setProductId(int productId) {
		this.productId = productId;
	}





	public String getProductName() {
		return productName;
	}



	public void setProductName(String productName) {
		this.productName = productName;
	}



	public String getProductDescription() {
		return productDescription;
	}



	public void setProductDescription(String productDescription) {
		this.productDescription = productDescription;
	}



	public String getProductsList() {
		return productsList;
	}



	public void setProductsList(String productsList) {
		this.productsList = productsList;
	}



//	public List<ProductDetails> getProductdetails() {
//		return productdetails;
//	}
//
//
//
//	public void setProductdetails(List<ProductDetails> productdetails) {
//		this.productdetails = productdetails;
//	}
	
	
	
}
