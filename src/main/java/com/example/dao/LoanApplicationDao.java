
package com.example.dao;

import com.example.model.LoanApplication;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;

@Repository
public interface LoanApplicationDao extends JpaRepository<LoanApplication, Long> {
    List<LoanApplication> findByApprovalStatus(LoanApplication.ApprovalStatus approvalStatus);
    Optional<LoanApplication> findByCustomer_CustomerId(Long customerId);
}
