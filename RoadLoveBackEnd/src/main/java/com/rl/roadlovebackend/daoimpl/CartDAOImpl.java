package com.rl.roadlovebackend.daoimpl;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.rl.roadlovebackend.dao.CartDAO;
import com.rl.roadlovebackend.model.CartModel;

@Repository
public class CartDAOImpl implements CartDAO {
	
	@Autowired
	SessionFactory sessionFactory;

	public boolean addProductTocart(CartModel cartModel) {
		// TODO Auto-generated method stub
		try
		{
			Session session=sessionFactory.openSession();
			Transaction transaction=session.beginTransaction();
			session.save(cartModel);
			transaction.commit();
			session.close();
			return true;
		}
		catch(Exception e)
		{
			return false;
		}
	}

	public CartModel ifProductExistsForUser(String emailId, int productId) {
		// TODO Auto-generated method stub
		try
		{
			Session session=sessionFactory.openSession();
			Transaction transaction=session.beginTransaction();
			Criteria c=session.createCriteria(CartModel.class);
			c.add(Restrictions.eq("cartID", emailId));
			c.add(Restrictions.eq("productID", productId));
			CartModel cart=(CartModel) c.list().get(0);
			transaction.commit();
			session.close();
			return cart;
		}
		catch(Exception e)
		{
			return null;
		}
	}

	public boolean updateCart(CartModel cartModel) {
		// TODO Auto-generated method stub
try{
			
			Session session =sessionFactory.openSession();
			Transaction transaction =session.beginTransaction();
			session.saveOrUpdate(cartModel);
			transaction.commit();
			session.close();
			return true;
			}
			catch(Exception e){
			return false;
		}
	}

	public List<CartModel> userCart(String userId) {
		// TODO Auto-generated method stub
		try
		{
			Session session=sessionFactory.openSession();
			Transaction transaction=session.beginTransaction();
			Criteria c=session.createCriteria(CartModel.class);
			c.add(Restrictions.eq("cartID", userId));
			c.add(Restrictions.eq("status", false));
			List<CartModel> cart=c.list();
			transaction.commit();
			session.close();
			return cart;
		}
		catch(Exception e)
		{
			return null;
		}
	}

	public double cartGrandTotal(String userId) {
		// 
		double grandtotal=0;
		try
		{
			
			List<CartModel> mycart=this.userCart(userId);
			for(CartModel c:mycart)
			{
				grandtotal=c.getTotal()+grandtotal;
			}
			return grandtotal;
			}
		catch(Exception e)
		{
			return grandtotal;
		}
	}
	
	
}
