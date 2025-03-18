package com.example.controller;

import com.example.model.Repayment;
import com.example.service.RepaymentService;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

@Controller
public class RepaymentController {

    @Autowired
    private RepaymentService repaymentService;

    @GetMapping("/repayment/index")
    public String i1() {
        return "repaymentindex";
    }

    @GetMapping("/repayment/form")
    public String showApplicationForm() {
        return "applicationForm";
    }

    @PostMapping("/repayment/schedule")
    public String getRepaymentSchedule(@RequestParam("applicationId") Long applicationId, ModelMap model) {
        Object result = repaymentService.getRepaymentSchedule(applicationId);
        if (result instanceof String) {
            // If result is a String, it means the status is "pending" or "rejected"
            model.addAttribute("approvalStatus", result);
            return "approvalStatus";
        } else {
            // If result is a List, it means the status is "approved"
            model.addAttribute("repaymentSchedule", result);
            return "repaymentSchedule";
        }
    }

    @GetMapping("/repayment/makePayment")
    public String showPaymentForm() {
        return "paymentForm";
    }

    @PostMapping("/repayment/pay")
    public String makePayment(@RequestParam("repaymentId") int repaymentId, @RequestParam("paymentDate") String paymentDate, @RequestParam("payAmount") double payAmount, ModelMap model) {
        String result = repaymentService.makePayment(repaymentId, paymentDate, payAmount);
        model.addAttribute("paymentResult", result);
        return "paymentResult";
    }
    


@GetMapping("/repayment/list")
public String listRepayments(ModelMap model) {
    List<Repayment> repaymentList = repaymentService.getAllRepayments();
    model.addAttribute("repaymentList", repaymentList);
    return "repaymentList";
}
}
