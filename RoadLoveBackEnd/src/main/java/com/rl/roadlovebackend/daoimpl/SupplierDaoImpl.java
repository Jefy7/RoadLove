package com.rl.roadlovebackend.daoimpl;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.rl.roadlovebackend.dao.SupplierDao;
import com.rl.roadlovebackend.model.SupplierModel;
@Repository
public class SupplierDaoImpl implements SupplierDao {
	@Autowired
	SessionFactory sessionFactory;
	
	public boolean insertSupplier(SupplierModel suppliermodel) {
		
		try{
			Session session =sessionFactory.openSession();
			Transaction transaction =session.beginTransaction();
			session.save(suppliermodel);
			transaction.commit();
			session.close();
			return true;
			}
			catch(Exception e){
			return false;
		}
}
}
