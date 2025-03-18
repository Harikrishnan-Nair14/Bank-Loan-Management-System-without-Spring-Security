package com.example.controller;

import com.example.model.LoanProduct;
import com.example.service.LoanProductService;

import jakarta.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/loanProducts")
public class LoanProductController {
	

    @Autowired
    private LoanProductService loanProductService;

    @GetMapping("Home")
	public String i() {
		return "index";
	}
    
    @GetMapping("/index")
    public String showIndexPage() {
        return "Loanindex";
    }

    @GetMapping("/add")
    public String showAddLoanProductForm(Model model) {
        model.addAttribute("loanProduct", new LoanProduct());
        return "addLoanProduct";
    }

    @PostMapping("/add")
    public String addLoanProduct(@ModelAttribute LoanProduct loanProduct, Model model) {
        LoanProduct createdProduct = loanProductService.addLoanProduct(loanProduct);
        return "redirect:/loanProducts/all";
    }
    
 // GetMapping to show the update form
    @GetMapping("/updateLoanProduct")
    public String showUpdateForm(ModelMap model) {
        model.addAttribute("loanProduct", new LoanProduct());
        return "updateLoanProduct"; // view name for the update form
    }

    // PostMapping to handle the update form submission
    @PostMapping("/updateLoanProduct")
    public String updateLoanProduct(@RequestParam("loanProductId") Long loanProductId, @RequestParam("productName") String productName, @RequestParam("interestRate") double interestRate, @RequestParam("minAmount") double minAmount, @RequestParam("maxAmount") double maxAmount, @RequestParam("tenure") int tenure, ModelMap map) {
        LoanProduct loanProduct = loanProductService.getLoanProductDetails(loanProductId);
        if (loanProduct != null) {
            loanProduct.setProductName(productName);
            loanProduct.setInterestRate(interestRate);
            loanProduct.setMinAmount(minAmount);
            loanProduct.setMaxAmount(maxAmount);
            loanProduct.setTenure(tenure);

            loanProductService.updateLoanProduct(loanProduct);
            map.addAttribute("updatedLoanProduct", loanProduct);
            return "updateSuccess"; // view name for the update success page
        } else {
            map.addAttribute("errorMessage", "Loan product with ID " + loanProductId + " not found");
            return "updateLoanProduct"; // view name for the update form in case of errors
        }
    }

    @GetMapping("/all")
    public String getAllLoanProducts(Model model) {
        List<LoanProduct> loanProducts = loanProductService.getAllLoanProducts();
        model.addAttribute("loanProducts", loanProducts);
        return "loanProductList";
    }
    
}
