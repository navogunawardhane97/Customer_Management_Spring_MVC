package com.customer.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.customer.model.Customer;
import com.customer.service.CustomerService;




@Controller
@RequestMapping
public class CustomerController {

	@Autowired
	CustomerService customerServices;
	
	//load add customer form
	@GetMapping("addCustomer")
	public String  addCust()
	{
		return "AddCustomer";
		
	}
	
	//save customer form
	@PostMapping("/insertCustomer")
	public String insertCustomer(@ModelAttribute("insertCustomer") Customer cust)
	{
		
		customerServices.addCust(cust);
		return "redirect:/customerReport";
	}
	
	//load customer data
	@GetMapping("customerReport")
	public String loadCustomer(Model m)
	{
		m.addAttribute("customer", customerServices.getAllCust());
		m.addAttribute("title", "customer Report");
		
		return "CustomerReport";
	}
	
	//load edit form 
	@GetMapping("/editCustomer/{id}")
	public String loadEditForm(@PathVariable(value="id") Long id, Model m)
	{
		Customer cust= customerServices.getById(id);
		
		System.out.println(cust);
		m.addAttribute("customer", cust);
		m.addAttribute("title", "Edit customer");
		
		return "EditCustomer";
		
	}
	
	@PostMapping("/editCustomer/updateCustomer")
	public String updateCust(@ModelAttribute("updateCustomer") Customer cust)
	{
		customerServices.updateCust(cust);
		
		return "redirect:/customerReport";
		
	}
	
	@GetMapping("/deleteCustomer/{id}")
	public String deleteCustomer(@PathVariable Long id)
	{
		customerServices.deleteCustomer(id);
		
		
		return "redirect:/customerReport";
	}
	
}
