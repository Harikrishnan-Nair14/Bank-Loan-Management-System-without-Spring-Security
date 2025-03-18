package com.example.service;

import com.example.model.Customer;
import com.example.model.LoanApplication;
import com.example.model.Repayment;
import com.example.dao.CustomerDao;
import com.example.dao.LoanApplicationDao;
import com.example.dao.RepaymentRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class ReportService {

    @Autowired
    private CustomerDao customerRepository;

    @Autowired
    private RepaymentRepository repaymentRepository;

    @Autowired
    private LoanApplicationDao loanApplicationRepository;

    public Optional<Customer> getCustomerById(int customerId) {
        return customerRepository.findById(customerId);
    }
    
    public List<Repayment> getRepaymentsByApplicationId(int applicationId) {
        return repaymentRepository.findByLoanApplication_ApplicationId(applicationId);
    }



    public Optional<LoanApplication> getLoanApplicationById(Long applicationId) {
        return loanApplicationRepository.findById(applicationId);
    }
    
    public Optional<LoanApplication> getLoanProductById(Long loanProductId) {
        return loanApplicationRepository.findById(loanProductId);
    }
    
    
    
    
}
