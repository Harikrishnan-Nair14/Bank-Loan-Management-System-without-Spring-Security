package com.example.dao;

import com.example.model.LoanApplication;
import com.example.model.Repayment;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface RepaymentRepository extends JpaRepository<Repayment, Integer> {
    List<Repayment> findByLoanApplication(LoanApplication loanApplication);
    List<Repayment> findByLoanApplication_ApplicationId(int applicationId);
}



