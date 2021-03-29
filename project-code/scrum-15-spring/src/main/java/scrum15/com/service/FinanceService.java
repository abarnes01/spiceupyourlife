package scrum15.com.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import scrum15.com.model.Payment;
import scrum15.com.repo.PaymentRepo;

@Service
@Transactional
public class FinanceService {
	
	@Autowired
	private PaymentRepo repo;
	
	public List<Payment> listAll() {
		return (List<Payment>) repo.findAll();
	}
}
