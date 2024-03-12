package com.customer.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import com.customer.dao.CustomerDao;
import com.customer.model.Customer;


@Component
@Service
public class CustomerService {
	
	@Autowired
	CustomerDao customerDao;
	
	//add customer
	public void addCust(Customer cust)
	{
		customerDao.addCustomer(cust);
	}
	
	//get all customer
	public List<Customer> getAllCust()
	{
		return customerDao.getAllCust();
	}
	
	
	//get cust by id
	public Customer getById(Long id)
	{
		return customerDao.getCustById(id);
	}
	
	
	// update customer
	public void updateCust(Customer cust)
	{
		customerDao.updateCust(cust);
	}
	
	
	//delete customer
	public void deleteCustomer(Long id)
	{
		customerDao.deleteCust(id);
	}

}
