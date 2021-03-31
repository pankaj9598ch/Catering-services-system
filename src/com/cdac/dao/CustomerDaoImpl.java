package com.cdac.dao;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate4.HibernateCallback;
import org.springframework.orm.hibernate4.HibernateTemplate;
import org.springframework.stereotype.Repository;

import com.cdac.dto.Customer;



@Repository
public class CustomerDaoImpl implements CustomerDao {
	
	@Autowired
	private HibernateTemplate hibernateTemplate;

	@Override
	public void insertCustomer(Customer customer) {
		hibernateTemplate.execute(new HibernateCallback<Void>() {

			@Override
			public Void doInHibernate(Session session) throws HibernateException {
				Transaction tr = session.beginTransaction();
				session.save(customer);
				tr.commit();
				session.flush();
				session.close();
				return null;
			}
			
		});
	}

	@Override
	public boolean checkCustomer(Customer customer) {
		boolean b = hibernateTemplate.execute(new HibernateCallback<Boolean>() {

			@Override
			public Boolean doInHibernate(Session session) throws HibernateException {
				Transaction tr = session.beginTransaction();
				Query q = session.createQuery("from Customer where custEmail = ? and custPassword = ?");
				q.setString(0, customer.getCustEmail());
				q.setString(1, customer.getCustPassword());
				List<Customer> li = q.list();
				boolean flag = !li.isEmpty();
				 
				customer.setCustId(li.get(0).getCustId());
				tr.commit();
				session.flush();
				session.close();
				return flag;
			}
			
		});
		return b;
	}

	@Override
	public String forgotPassword(String custEmail) {
		String password = hibernateTemplate.execute(new HibernateCallback<String>() {

			@Override
			public String doInHibernate(Session session) throws HibernateException {
				Transaction tr = session.beginTransaction();
				Query q = session.createQuery("from Customer where custEmail = ?");
				q.setString(0, custEmail);
				List<Customer> li = q.list();
				String pass = null;
				if(!li.isEmpty())
					pass = li.get(0).getCustPassword();
				tr.commit();
				session.flush();
				session.close();
				return pass;
			}
			
		});
		return password;
	}

	
}
