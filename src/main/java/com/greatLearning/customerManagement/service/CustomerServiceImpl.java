package com.greatLearning.customerManagement.service;

import java.util.List;
import javax.transaction.Transactional;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.greatLearning.customerManagement.entity.Customer;

@Repository
public class CustomerServiceImpl implements CustomerService {
	private SessionFactory sessionFactory;
	//create session
		private Session session;
		
		@Autowired
		public CustomerServiceImpl(SessionFactory sessionFactory) {
			this.sessionFactory = sessionFactory;
			try {session = sessionFactory.getCurrentSession();
		}catch(HibernateException e) {
			session = sessionFactory.openSession();
		}
	}
		
	@Transactional
	public List<Customer>findAll(){
		Transaction tx = session.beginTransaction();
		
		//find all records in db customer
		List<Customer> customer = session.createQuery("from Customer").list();
		tx.commit();
		return customer;
	}
	
	@Transactional
	public void save(Customer customer) {
		Transaction tx = session.beginTransaction();
		//save transaction
				session.saveOrUpdate(customer);
				tx.commit();
	}
	
	@Transactional
	public void deleteById(int id) {
		Transaction tx = session.beginTransaction();
		
		//get transaction
		Customer customer = session.get(Customer.class, id);
		
		//delete record
		session.delete(customer);
		
		tx.commit();
	}
	
	@Transactional
	public Customer findById(int id) {
		Customer customer = new Customer();
		
		Transaction tx = session.beginTransaction();
		
		//find record with id from Student Table
		customer = session.get(Customer.class, id);
		tx.commit();
		return customer;
	}
	
		
}
