package com.rl.roadlovebackend.daoimpl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.rl.roadlovebackend.dao.SupplierDao;
import com.rl.roadlovebackend.model.CategoryModel;
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

	public List<SupplierModel> allSupplier() {
		try{
			Session session =sessionFactory.openSession();
			Transaction transaction =session.beginTransaction();
			List<SupplierModel> allsupplier=session.createQuery("FROM SupplierModel").list();
			transaction.commit();
			session.close();
			return allsupplier;
		}
		catch(Exception e){
		
		return null;
		}
	}

	public boolean deleteSupplier(String supplierID) {
		try{
			Session session=sessionFactory.openSession();
			Transaction transaction=session.beginTransaction();
			SupplierModel sup=session.get(SupplierModel.class, supplierID);
			session.delete(sup);
			transaction.commit();
			session.close();
			return true;
		}
		catch(Exception e){
			return false;
		}
	}

	public SupplierModel displaySupplierEdit(String supplierID) {
	
		try{
			Session session =sessionFactory.openSession();
			Transaction transaction =session.beginTransaction();
			SupplierModel sup = session.get(SupplierModel.class, supplierID);
			transaction.commit();
			session.close();
			return sup;
			}
			catch(Exception e){
			return null;

			}
	}

	public boolean updateSupplier(SupplierModel suppliermodel) {
		try{
			Session session =sessionFactory.openSession();
			Transaction transaction =session.beginTransaction();
			session.saveOrUpdate(suppliermodel);
			transaction.commit();
			session.close();
			return true;
			}
			catch(Exception e){
			return false;
		}
}
}