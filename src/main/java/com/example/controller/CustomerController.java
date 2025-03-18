 package com.example.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.example.exception.CustomerException;
import com.example.model.Customer;
import com.example.service.CustomerService;

import jakarta.validation.Valid;

@Controller
@RequestMapping("/")
@SessionAttributes("operation")
public class CustomerController {

	@GetMapping("Home")
	public String i() {
		return "index";
	}
	
	@GetMapping("Home page")
	public String index() {
		return "Customerindex";
	}
	
	

	@GetMapping("/customerForm")
	public String customerForm(ModelMap map) {
	    Customer customer = new Customer();
		/*
		 * customer.setCustomerId(0); customer.setName(" "); customer.setEmail(" ");
		 * customer.setPhone(" "); customer.setAddress(" ");
		 * customer.setKycStatus(Customer.KycStatus.PENDING); // Setting default KYC
		 * status
		 */
	    map.addAttribute("customer", customer);
	    return "customerform";
	}


	@GetMapping("/updateCustomerForm")
	public String showUpdateForm(ModelMap model) {
	    Customer customer = new Customer();
	    customer.setCustomerId(0);
	    customer.setName(" ");
	    customer.setEmail(" ");
	    customer.setPhone(" ");
	    customer.setAddress(" ");
	    customer.setKycStatus(Customer.KycStatus.PENDING); // Setting default KYC status
	    model.addAttribute("customer", customer);
	    return "updateCustomer"; 
	}


	@GetMapping("/customerProfile")
	public String customerView(ModelMap map) {

		List<Customer> allCustomers = customerService.getAllCustomers();

		map.addAttribute("showall", allCustomers);

		return "viewCustomer";
	}

	@GetMapping("/customersearch")
	public String customersearch(ModelMap map) {
             map.addAttribute("hi", "welcome");
             System.out.println(map.get("hi")+"  value  ats starr   previous");

			return "customersearch";
	}
	
	@PostMapping("/customersearch")
	public String customersearch(ModelMap map, @RequestParam("id") Integer id) {
		
		Customer search = customerService.searchProduct(id);
		if(search==null)
			System.out.println("customer is null.............");

		map.addAttribute("customer", search);
	    System.out.println(map.get("hi1")+"  value of hi1  previous");

	    map.addAttribute("hi1", "greeting");
	    System.out.println(map.get("hi1")+"  value of hi1");
	    System.out.println(map.get("customer")+"  value of customer....");

		return "customersearch";
	}



	@Autowired
	CustomerService customerService;

	@PostMapping("/customerPost")
	public String customerPost(@Valid @ModelAttribute("customer")  Customer customer, BindingResult result,
			@RequestParam("operation") String operation, ModelMap map) {

		System.out.println("customer post called  operation is " + operation);

		if (result.hasErrors()) {
			System.out.println("has error");
			return "customerform";

		} else {

			System.out.println("has no  error");
			map.addAttribute("operation", operation);

			System.out.println("add operation in controllerr" + customer);

			if (operation.equals("Submit")) {
				System.out.println("add customer called after submit");
				Customer cs = customerService.addCustomer(customer);
				System.out.println("customer added in database at coi " + cs);
			} else if (operation.equals("update")) {
				Customer updateCustomer = customerService.updateCustomer(customer);
				map.addAttribute("updateCustomer", updateCustomer);
			} else if (operation.equals("show all customers")) {

				List<Customer> allCustomers = customerService.getAllCustomers();
				map.addAttribute("showall", allCustomers);

			}



			return "customerresult";
		}

	}
	


@GetMapping("/deleteCustomer")
public String deleteCustomer(@RequestParam("id") int id, ModelMap map) {
    customerService.deleteCustomer(id);
    map.addAttribute("message", "Customer deleted successfully");
    return "Customerindex"; // Redirect to the customer profile view after deletion

	}




	@ExceptionHandler(exception = { CustomerException.class, Exception.class })
	public String getError1() {
		return "error1";
	}

}
