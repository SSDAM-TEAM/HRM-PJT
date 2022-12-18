package com.ssdam.hrm.employeeDto;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Table(name = "employee")
@Data
@NoArgsConstructor
public class Employee {
	@Id
	@Column(name = "employee_id")
	private String employeeId;
	
	@Column(name = "employee_name")
	private String employeeName;
	
	@Column(name = "employee_password")
	private String employeePassword;
	
	@Column(name = "employee_department_id")
	private int employeeDepartmentId;
	
	@Column(name = "employee_position_id")
	private int employeePositionId;
	
	@Column(name = "employee_phone_num")
	private String employeePhoneNum;
	
	@Column(name = "employee_address")
	private String employeeAddress;
	
	@Column(name = "employee_birth")
	private String employeeBirth;
	
	@Column(name = "employee_profile")
	private String employeeProfile;
	
	@Column(name = "employee_state")
	private int employeeState;
	
	@Column(name = "employee_access_level")
	private int employeeAccessLevel;
	
	@Column(name = "employee_refresh_token")
	private String employeeRefreshToken;
	
	public Employee(
			String employeeId,
			String employeeName,
			String employeePassword,
			int employeeDepartmentId,
			int employeePositionId,
			String employeePhoneNum,
			String employeeAddress,
			String employeeBirth,
			String employeeProfile,
			int employeeState,
			int employeeAccessLevel,
			String employeeRefreshToken) {
		super();
		this.employeeId = employeeId;
		this.employeeName = employeeName;
		this.employeePassword = employeePassword;
		this.employeeDepartmentId = employeeDepartmentId;
		this.employeePositionId =  employeePositionId;
		this.employeePhoneNum = employeePhoneNum;
		this.employeeAddress = employeeAddress;
		this.employeeBirth = employeeBirth;
		this.employeeProfile = employeeProfile;
		this.employeeState = employeeState;
		this.employeeAccessLevel = employeeAccessLevel;
		this.employeeRefreshToken = employeeRefreshToken;
	}
}
