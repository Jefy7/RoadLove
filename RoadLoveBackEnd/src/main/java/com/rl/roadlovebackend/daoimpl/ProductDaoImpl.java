package com.rl.roadlovebackend.daoimpl;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.rl.roadlovebackend.dao.ProductDao;
import com.rl.roadlovebackend.model.ProductModel;


@Repository
public class ProductDaoImpl implements ProductDao {


	@Autowired
	SessionFactory sessionFactory;
	public boolean insertProduct(ProductModel productmodel) {
	
		try{
			Session session =sessionFactory.openSession();
			Transaction transaction =session.beginTransaction();
			session.save(productmodel);
			transaction.commit();
			session.close();
			return true;
			}
			catch(Exception e){
			return false;
		}
	}

}
