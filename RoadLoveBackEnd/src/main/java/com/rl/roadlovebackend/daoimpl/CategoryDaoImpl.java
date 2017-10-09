package com.rl.roadlovebackend.daoimpl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.rl.roadlovebackend.dao.CategoryDao;
import com.rl.roadlovebackend.model.CategoryModel;
@Repository
public class CategoryDaoImpl implements CategoryDao {
	@Autowired
	SessionFactory sessionFactory;
	public boolean insertCategory(CategoryModel categorymodel) {
		
		
		try{
			Session session =sessionFactory.openSession();
			Transaction transaction =session.beginTransaction();
			session.save(categorymodel);
			transaction.commit();
			session.close();
			return true;
			}
			catch(Exception e){
			return false;
		}
	}

	public List<CategoryModel> allCategory(){
		
		try{
			Session session =sessionFactory.openSession();
			Transaction transaction =session.beginTransaction();
			List<CategoryModel> allcategory= session.createQuery("FROM CategoryModel").list();
			transaction.commit();
			session.close();
			return allcategory;
			}
			catch(Exception e){
			return null;

			}
		}}
