package com.example.service;


import com.example.model.LoanProduct;
import com.example.dao.LoanProductRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class LoanProductService {

    @Autowired
    private LoanProductRepository loanProductRepository;

    public LoanProduct addLoanProduct(LoanProduct loanProduct) {
        return loanProductRepository.save(loanProduct);
    }

    public LoanProduct updateLoanProduct(LoanProduct loanProduct) {
        return loanProductRepository.save(loanProduct);
    }

    public LoanProduct getLoanProductDetails(Long id) {
        Optional<LoanProduct> product = loanProductRepository.findById(id);
        return product.orElse(null);
    }

    public List<LoanProduct> getAllLoanProducts() {
        return loanProductRepository.findAll();
    }

    public void deleteLoanProduct(Long id) {
        loanProductRepository.deleteById(id);
    }
}

