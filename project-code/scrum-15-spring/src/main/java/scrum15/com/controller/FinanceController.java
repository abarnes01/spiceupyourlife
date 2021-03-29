package scrum15.com.controller;

import java.io.IOException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import scrum15.com.model.Payment;
import scrum15.com.service.FinanceService;
import org.supercsv.io.CsvBeanWriter;
import org.supercsv.io.ICsvBeanWriter;
import org.supercsv.prefs.CsvPreference;

@Controller
public class FinanceController {
	
	@Autowired FinanceService service;
	
	@RequestMapping("/excel")
	public String excel() {
		return "excel";
	}
	
	@GetMapping("/payment/export")
	public void exportToCSV(HttpServletResponse response) throws IOException {
		response.setContentType("text/csv");
		DateFormat dateFormatter = new SimpleDateFormat("yyyy-MM-dd_HH-mm-ss");
		String currentDateTime = dateFormatter.format(new Date());
		
		String headerKey = "Content-Disposition";
		String headerValue = "attachment; filename=finance_"+currentDateTime+".csv";
		response.setHeader(headerKey, headerValue);
		
		List<Payment> listPayment = service.listAll();
		
		ICsvBeanWriter csvWriter = new CsvBeanWriter(response.getWriter(),CsvPreference.STANDARD_PREFERENCE);
		String[] csvHeader = {"Payment ID","Amount"};
		String[] nameMapping = {"id", "amount"};
		
		csvWriter.writeHeader(csvHeader);
		
		for (Payment payment : listPayment) {
			csvWriter.write(payment, nameMapping);
		}
		
		csvWriter.close();
	}
}
