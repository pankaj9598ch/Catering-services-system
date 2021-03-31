package com.cdac.dao;

import java.util.Date;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate4.HibernateCallback;
import org.springframework.orm.hibernate4.HibernateTemplate;
import org.springframework.stereotype.Repository;

import com.cdac.dto.Order;
import com.cdac.dto.Product;

@Repository
public class OrderDaoImpl implements OrderDao {

	@Autowired
	private HibernateTemplate hibernateTemplate;

	@Override
	public void insertOrder(String productName, float productPrice , int custId) {
		
		hibernateTemplate.execute(new HibernateCallback<Void>() {

			@Override
			public Void doInHibernate(Session session) throws HibernateException {
				Transaction tr = session.beginTransaction();
				Order order = new Order() ;
				
				order.setProductName(productName);
				order.setProductPrice(productPrice);
				order.setOrderDate(new Date());
				order.setCustId(custId);
				session.save(order);
				tr.commit();
				session.flush();
				session.close();
				return null;
			}
			
		});
	}

	@Override
	public List<Order> selectAll(int custId) {
		List<Order> orderList = hibernateTemplate.execute(new HibernateCallback<List<Order>>() {

			@Override
			public List<Order> doInHibernate(Session session) throws HibernateException {
				Transaction tr = session.beginTransaction();
				Query q = session.createQuery("from Order where custId = ? ");
				q.setInteger(0, custId);
				List<Order> li = q.list();
				System.out.println(li); 
				tr.commit();
				session.flush();
				session.close();
				return li;
			}
			
		});
		return orderList;
	}
	
	
	
	
	
}
