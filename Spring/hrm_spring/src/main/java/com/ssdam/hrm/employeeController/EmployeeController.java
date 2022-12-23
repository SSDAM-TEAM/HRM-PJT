package com.ssdam.hrm.employeeController;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.ssdam.hrm.employeeService.EmployeeService;


@RestController
@RequestMapping("/employee")
public class EmployeeController {
//	하이버네이트 persistence의 show_sql이 true이므로 로거 설정을 하지 않는다.
	private static final String SUCCESS = "success";
	private static final String FAIL = "fail";
	
//	employeeService singletone?
	@Autowired
	private EmployeeService employeeService;
	@Autowired
	public EmployeeController(EmployeeService employeeService) {
		this.employeeService = employeeService;
	}
	
	@GetMapping("/test")
	public ResponseEntity<?> test(String str){
		System.out.println("Test 진입");
		return new ResponseEntity<Void>(HttpStatus.OK);
	}
	
	
}