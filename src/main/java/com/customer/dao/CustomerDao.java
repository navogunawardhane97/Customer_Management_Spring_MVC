package com.customer.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;

import com.customer.model.Customer;



@Component
public class CustomerDao {

	@Autowired
	HibernateTemplate hibernateTemplate;
	
	
	//add customer
	@Transactional
	public void addCustomer(Customer cust)
	{
		hibernateTemplate.save(cust);
	}
	
	
	//get all customer
	public List<Customer> getAllCust()
	{
		return hibernateTemplate.loadAll(Customer.class);
	}
	
	//get customer by id
	public Customer getCustById(Long id)
	{
		Customer cust= hibernateTemplate.get(Customer.class, id);
		return cust;
	}
	
	
	//update customer
	@Transactional
	public void updateCust(Customer cust)
	{
		hibernateTemplate.update(cust);
	}
	
	
	//delete customer
	@Transactional
	public void deleteCust(Long id)
	{
		hibernateTemplate.delete(hibernateTemplate.load(Customer.class, id));
	}
}
