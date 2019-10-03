package com.myproject.springdemo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.myproject.springdemo.dao.CustomerDAO;
import com.myproject.springdemo.dao.CustomerDAOImpl;
import com.myproject.springdemo.entity.Customer;

@Service
public class CustomerServiceImpl implements CustomerService {
	
	@Autowired
	CustomerDAO customerDao;
	
	@Override
	@Transactional
	public List<Customer> getCustomers() {
		
		List<Customer> customers = customerDao.getCustomers();
		
		return customers;
	}
	
	

	@Override
	@Transactional
	public void saveCustomer(Customer customer) {
		
		customerDao.saveCustomer(customer);
	}


	@Override
	@Transactional
	public Customer getCustomer(int customerId) {
		
		Customer customer = customerDao.getCustomer(customerId);
		
		return customer;
	}

	
	@Override
	@Transactional
	public void deleteCustomer(int customerId) {
		customerDao.deleteCustomer(customerId);
		
	}

	
}
