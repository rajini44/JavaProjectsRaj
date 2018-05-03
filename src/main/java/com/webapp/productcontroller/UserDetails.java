package com.webapp.productcontroller;

import java.util.List;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;
import org.springframework.context.support.PropertySourcesPlaceholderConfigurer;

@Configuration
@PropertySource("classpath:login.properties")
public class UserDetails {

	@Value("#{'${userslist}'.split(',')}")
	private List<String> userName;
	
	@Value("#{'${passwordlist}'.split(',')}")
	private List<String> password;
	

	@Bean
	public static PropertySourcesPlaceholderConfigurer propertySourcesPlaceholderConfigurer(){
		return new PropertySourcesPlaceholderConfigurer();
	}


	public List<String> getUserName() {
		return userName;
	}


	public void setUserName(List<String> userName) {
		this.userName = userName;
	}


	public List<String> getPassword() {
		return password;
	}


	public void setPassword(List<String> password) {
		this.password = password;
	}


	
	
	
	
}
