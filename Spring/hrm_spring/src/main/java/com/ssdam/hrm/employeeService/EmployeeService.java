package com.ssdam.hrm.employeeService;


import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;

import com.ssdam.hrm.employeeDto.Employee;


public class EmployeeService {
	public static void main(String[] args) {
		EntityManagerFactory factory =  Persistence.createEntityManagerFactory("my-persistence");
		
		EntityManager em = factory.createEntityManager();
//		Transaction t = em.getTransaction();
		
		try {
			Employee em1 = new Employee("12345678", "12341234", 11, 3, "010-1234-5678", "역삼", "1998-08-15", "0000", 1, 1, null);
			em.getTransaction().begin();
			em.persist(em1);
			em.getTransaction().commit();
			
		} catch (Exception e) {
			// TODO: handle exception
			em.getTransaction().rollback();;
		}finally {
			factory.close();
		}
		
	}
}
