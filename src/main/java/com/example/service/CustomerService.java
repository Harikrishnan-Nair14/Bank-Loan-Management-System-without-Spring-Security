package com.example.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.dao.CustomerDao;
import com.example.exception.CustomerException;

import com.example.model.Customer;

@Service
public class CustomerService {

    @Autowired
    private CustomerDao dao;
   
    public Customer addCustomer(Customer customer) { 
        Optional<Customer> byId = dao.findById(customer.getCustomerId());
        if (byId.isEmpty()) {
            return dao.save(customer);}
        if (byId.isPresent()) {
           throw new CustomerException("Customer with this id is already present");}
       return null;
    }
    
    public Customer updateCustomer(Customer customer) {
        Optional<Customer> byId = dao.findById(customer.getCustomerId());
        if (byId.isEmpty()) {
            throw new CustomerException("Customer with this id is not present");
        } else if (byId.isPresent()) {
            return dao.save(customer);
        }
        return null;
    }
    
    public List<Customer> getAllCustomers() {
        if (dao.findAll().isEmpty()) {
            throw new CustomerException("Customer list is empty");
        } else {
            return dao.findAll();
        }
    }

    public Customer searchProduct(int id) {
	    if (!dao.findById(id).isPresent()) {
	    	return null;
	       // throw new CustomerException("Product id is not present");
	    } else {
	        return dao.findById(id).orElse(null);
	    }
	}
    
    public void deleteCustomer(int id) {
        Optional<Customer> byId = dao.findById(id);
        if (byId.isPresent()) {
            dao.delete(byId.get());
        } else {
            throw new CustomerException("Customer with this id is not present");
        }
    }
    



public Customer updateKycStatus(int customerId, Customer.KycStatus kycStatus) {
    Optional<Customer> customerOpt = dao.findById(customerId);
    if (customerOpt.isPresent()) {
        Customer customer = customerOpt.get();
        customer.setKycStatus(kycStatus);
        return dao.save(customer);
    }
    return null;
}
   
}



  


