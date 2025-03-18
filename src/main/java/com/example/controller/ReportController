package com.example.controller;

import com.example.model.Customer;
import com.example.model.LoanApplication;
import com.example.model.LoanProduct;
import com.example.model.Repayment;
import com.example.service.ReportService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

@Controller
@RequestMapping("/reports")
public class ReportController {

    @Autowired
    private ReportService reportService;

    @GetMapping("/customer")
    public String getCustomerForm() {
        return "reportCusform";
    }

    @PostMapping("/customer")
    public String getCustomerById(@RequestParam("customerId") int customerId, Model model) {
        Optional<Customer> customer = reportService.getCustomerById(customerId);
        if (customer.isPresent()) {
            model.addAttribute("customer", customer.get());
            model.addAttribute("loanApplications", customer.get().getLoanApplications());

            // Assuming each LoanApplication has a reference to LoanProduct
            List<LoanProduct> loanProducts = customer.get().getLoanApplications().stream()
                                                     .map(LoanApplication::getLoanProduct)
                                                     .collect(Collectors.toList());
            model.addAttribute("loanProducts", loanProducts);
            return "reportCusResult";
        } else {
            return "customerNotFound";
        }
    }


    @GetMapping("/repayment")
    public String getRepaymentForm() {
        return "repaymentForm";
    }

    @PostMapping("/repayment")
    public String getRepaymentsByApplicationId(@RequestParam("applicationId") int applicationId, Model model) {
        List<Repayment> repayments = reportService.getRepaymentsByApplicationId(applicationId);
        model.addAttribute("repayments", repayments);
        return repayments.isEmpty() ? "repaymentsNotFound" : "repaymentResult";
    }


}
