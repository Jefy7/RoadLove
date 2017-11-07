package com.rl.roadlovebackend.daoimpl;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;
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
	
	public List<ProductModel> allProduct() {
		try{
			Session session =sessionFactory.openSession();
			Transaction transaction =session.beginTransaction();
			List<ProductModel> allproduct=session.createQuery("FROM ProductModel").list();
			transaction.commit();
			session.close();
		return 	allproduct;
	}
		catch(Exception e){
			
			return null;
			}
		}
	public boolean deleteProduct(int productId) {
		try{
			Session session =sessionFactory.openSession();
			Transaction transaction =session.beginTransaction();
			ProductModel pro=session.get(ProductModel.class, productId);
			session.delete(pro);
			transaction.commit();
			session.close();
			return true;
			}
			catch(Exception e){
			return false;
		}
}

	public ProductModel displayProductEdit(int productId) {
	
		try{
			Session session =sessionFactory.openSession();
			Transaction transaction =session.beginTransaction();
			ProductModel pro = session.get(ProductModel.class, productId);
			transaction.commit();
			session.close();
			return pro;
			}
			catch(Exception e){
			return null;

			}
		}

	public boolean updateProduct(ProductModel productmodel) {
	
		
		try{
			
			Session session =sessionFactory.openSession();
			Transaction transaction =session.beginTransaction();
			session.saveOrUpdate(productmodel);
			transaction.commit();
			session.close();
			return true;
			}
			catch(Exception e){
			return false;
		}
	}

	public List<ProductModel> categorisedProductList(String categoryName) {
		// TODO Auto-generated method stub
		try {
			
			Session session =sessionFactory.openSession();
			Transaction transaction =session.beginTransaction();
			Criteria c=session.createCriteria(ProductModel.class);
			c.add(Restrictions.eq("productCategory",categoryName ));
			List<ProductModel> catproduct=c.list();
			transaction.commit();
			session.close();
			return catproduct;
		} catch (Exception e) {
			// TODO: handle exception
			return null;
		}
	}

}