package com.greatLearning.customerManagement.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.greatLearning.customerManagement.entity.Customer;
import com.greatLearning.customerManagement.service.CustomerService;

@Controller
@RequestMapping("/customer")
public class CustomerController {
	
	@Autowired
	CustomerService customerService;
	
	//add mapping for "/list"
	@RequestMapping("/list")
	public String listCustomer(Model model) {
		System.out.println("request received");
		
		//get customers from db
		List<Customer> customer = customerService.findAll();
		
		model.addAttribute("Customer", customer);
		return "list-Customers";	
	}
	
	@RequestMapping("/showFormForAdd")
	public String showFormForAdd(Model model) {
		Customer customer = new Customer();
		model.addAttribute("Customer",customer);
		return "Customer-form";
	}
	
	@RequestMapping("/showFormForUpdate")
	public String showFormForUpdate(@RequestParam("id") int id, Model model) {
		Customer customer = customerService.findById(id);
		model.addAttribute("Customer",customer);
		return "Customer-form";   //send over to our form
	}
	@PostMapping("/save")
	public String saveCustomer(@RequestParam("id") int id, @RequestParam("firstName") String firstName, 
			@RequestParam("lastName") String lastName, @RequestParam("email") String email) {
		Customer customer;
		if(id!= 0) {
			customer = customerService.findById(id);
			customer.setFirstName(firstName);
			customer.setLastName(lastName);
			customer.setEmail(email);
			
		}else {
			customer = new Customer(firstName, lastName, email);
		}
		
		//save customer
		customerService.save(customer);
		//redirect to prevent duplicate submissions
		return "redirect:/customer/list";		
	}
	
	@RequestMapping("/delete")
	public String delete(@RequestParam("id") int id) {
		customerService.deleteById(id);
		
		return "redirect:/customer/list";
		
		
	}
	

}
