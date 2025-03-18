package com.example.controller;

import com.example.model.LoanApplication;
import com.example.service.LoanApplicationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/loanApplications")
public class LoanApplicationController {

    @Autowired
    private LoanApplicationService loanApplicationService;

    @GetMapping("/index")
    public String home() {
    	return "LoanApplicationIndex";
    }
    // Apply for a loan
    @GetMapping("/applyForLoan")
    public String showApplicationForm(ModelMap model) {
        model.addAttribute("loanApplication", new LoanApplication());
        return "applyForLoan";
    }

    @PostMapping("/applyForLoan")
    public String applyForLoan(@ModelAttribute LoanApplication loanApplication) {
        loanApplicationService.applyForLoan(loanApplication);
        return "applicationSuccess";
    }

    // Get application status
    @GetMapping("/getApplicationStatus")
    public String showStatusForm() {
        return "getApplicationStatus";
    }

    @PostMapping("/getApplicationStatus")
    public String getApplicationStatus(@RequestParam("applicationId") Long applicationId, ModelMap model) {
        LoanApplication loanApplication = loanApplicationService.getApplicationStatus(applicationId);
        model.addAttribute("loanApplication", loanApplication);
        return "applicationStatus";
    }

    // View all loan applications
    @GetMapping("/viewAllLoans")
    public String viewAllLoans(ModelMap model) {
        List<LoanApplication> loanApplications = loanApplicationService.getAllLoanApplications();
        model.addAttribute("loanApplications", loanApplications);
        return "viewAllLoans";
    }
}
