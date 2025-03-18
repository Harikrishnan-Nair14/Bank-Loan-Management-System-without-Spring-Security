package com.example.service;

import com.example.model.LoanApplication;
import com.example.model.LoanProduct;
import com.example.dao.LoanApplicationDao;
import com.example.dao.LoanProductRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class LoanApplicationService {

    @Autowired
    private LoanApplicationDao loanApplicationRepository;

    @Autowired
    private LoanProductRepository loanProductRepository;

    public LoanApplication applyForLoan(LoanApplication loanApplication) {
        Long loanProductId = loanApplication.getLoanProduct().getLoanProductId();
        Optional<LoanProduct> optionalLoanProduct = loanProductRepository.findById(loanProductId);

        if (optionalLoanProduct.isPresent()) {
            LoanProduct loanProduct = optionalLoanProduct.get();
            double loanAmount = loanApplication.getLoanAmount();

            if (loanAmount < loanProduct.getMinAmount()) {
                loanApplication.setApprovalStatus(LoanApplication.ApprovalStatus.PENDING);
            } else if (loanAmount > loanProduct.getMaxAmount()) {
                loanApplication.setApprovalStatus(LoanApplication.ApprovalStatus.REJECTED);
            } else {
                loanApplication.setApprovalStatus(LoanApplication.ApprovalStatus.APPROVED);
            }

            loanApplication.setApplicationDate(new java.util.Date());
            return loanApplicationRepository.save(loanApplication);
        } else {
            throw new RuntimeException("Loan product with ID " + loanProductId + " not found");
        }
    }

   
    public LoanApplication getApplicationStatus(Long applicationId) {
        Optional<LoanApplication> application = loanApplicationRepository.findById(applicationId);
        return application.orElse(null);
    }

    public List<LoanApplication> getAllLoanApplications() {
        return loanApplicationRepository.findAll();
    }
    
}
