//package com.ssdam.hrm.employeeService;
//
//import javax.persistence.EntityManager;
//import javax.persistence.EntityManagerFactory;
//import javax.persistence.EntityTransaction;
//import javax.persistence.Persistence;
//
//import com.ssdam.hrm.employeeDto.Employee;
//
//
//public class test {
//	public static void main(String[] args) {
//		EntityManagerFactory factory = Persistence.createEntityManagerFactory("hrm");
//		
//		EntityManager em = factory.createEntityManager();
////		Transaction t = em.getTransaction();
//		EntityTransaction et = em.getTransaction();
//		
//		try {
//			et.begin();
////			em.getTransaction().begin();
//			Employee em1 = new Employee("12345678", "kim", "12341234", 1, 1, "010-1234-5678", "역삼", "1998-08-15", "0000", 1, 1, null);
//			em.persist(em1);
//			et.commit();
////			em.getTransaction().commit();
//			
//		} catch (Exception e) {
////			em.getTransaction().rollback();;
//			et.rollback();
//		}finally {
//			factory.close();
//		}
//		
//	}
//}
