package com.example.service;

import com.example.model.LoanApplication;
import com.example.model.Repayment;
import com.example.dao.LoanApplicationDao;
import com.example.dao.RepaymentRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Optional;
import java.util.List;
import java.util.ArrayList;
import java.util.Calendar;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

@Service
public class RepaymentService {

    @Autowired
    private LoanApplicationDao loanApplicationRepository;

    @Autowired
    private RepaymentRepository repaymentRepository;

    public Object getRepaymentSchedule(Long applicationId) {
        Optional<LoanApplication> loanApplicationOptional = loanApplicationRepository.findById(applicationId);
        if (!loanApplicationOptional.isPresent()) {
            return "Invalid application ID";
        }

        LoanApplication loanApplication = loanApplicationOptional.get();

        // Check approval status
        if (loanApplication.getApprovalStatus() != LoanApplication.ApprovalStatus.APPROVED) {
            return loanApplication.getApprovalStatus().toString();
        }

        // Check if repayment schedule already exists for this loan application
        List<Repayment> existingRepaymentSchedule = repaymentRepository.findByLoanApplication(loanApplication);
        if (!existingRepaymentSchedule.isEmpty()) {
            return existingRepaymentSchedule;
        }

        // Generate new repayment schedule
        List<Repayment> repaymentSchedule = generateRepaymentSchedule(loanApplication);

        repaymentRepository.saveAll(repaymentSchedule);
        return repaymentSchedule;
    }

    private List<Repayment> generateRepaymentSchedule(LoanApplication loanApplication) {
        List<Repayment> repaymentSchedule = new ArrayList<>();
        double loanAmount = loanApplication.getLoanAmount();
        double interestRate = loanApplication.getLoanProduct().getInterestRate();
        int tenure = loanApplication.getLoanProduct().getTenure();
        double interest = (loanAmount * interestRate * tenure / 12) / 100;
        double totalAmount = loanAmount + interest;
        double monthlyEMI = totalAmount / tenure;

        Calendar calendar = Calendar.getInstance();
        calendar.setTime(loanApplication.getApplicationDate());

        for (int i = 0; i < tenure; i++) {
            calendar.add(Calendar.MONTH, 1);
            Repayment repayment = new Repayment();
            repayment.setLoanApplication(loanApplication);
            repayment.setDueDate(calendar.getTime());
            repayment.setAmountDue(monthlyEMI);
            repayment.setPaymentStatus(Repayment.PaymentStatus.PENDING);
            repaymentSchedule.add(repayment);
        }

        return repaymentSchedule;
    }

    public String makePayment(int repaymentId, String paymentDateStr, double payAmount) {
        Optional<Repayment> repaymentOptional = repaymentRepository.findById(repaymentId);
        if (!repaymentOptional.isPresent()) {
            return "Invalid repayment ID";
        }

        Repayment repayment = repaymentOptional.get();
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
        Date paymentDate;

        try {
            paymentDate = dateFormat.parse(paymentDateStr);
        } catch (ParseException e) {
            return "Invalid payment date format";
        }

        // Check if the repayment is due in the same month and year
        Calendar dueCalendar = Calendar.getInstance();
        dueCalendar.setTime(repayment.getDueDate());
        Calendar paymentCalendar = Calendar.getInstance();
        paymentCalendar.setTime(paymentDate);

        if (dueCalendar.get(Calendar.MONTH) == paymentCalendar.get(Calendar.MONTH) && dueCalendar.get(Calendar.YEAR) == paymentCalendar.get(Calendar.YEAR)) {
            if (payAmount >= repayment.getAmountDue()) {
                repayment.setPaymentStatus(Repayment.PaymentStatus.COMPLETED);
                repayment.setPaymentDate(paymentDate);
                repaymentRepository.save(repayment);
                return "Payment successful and status updated to COMPLETED";
            } else {
                return "Insufficient amount to complete the payment";
            }
        } else {
            return "Payment date does not match the due date month";
        }
    }
    
    public List<Repayment> getAllRepayments() {
        return repaymentRepository.findAll();
    }
}
