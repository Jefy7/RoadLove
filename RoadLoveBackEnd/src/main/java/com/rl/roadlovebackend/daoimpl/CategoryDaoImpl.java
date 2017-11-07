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
		}

	public boolean deleteCategory(int categoryId) {
		// TODO Auto-generated method stub
		try{	
			Session session =sessionFactory.openSession();
			Transaction transaction =session.beginTransaction();
			CategoryModel cat=session.get(CategoryModel.class, categoryId);
			session.delete(cat);
			transaction.commit();
			session.close();
			return true;
			}
			catch(Exception e){
			return false;
		}
	}

	public CategoryModel displayCategoryEdit(int categoryID) {
		try{
			Session session =sessionFactory.openSession();
			Transaction transaction =session.beginTransaction();
			CategoryModel cat = session.get(CategoryModel.class, categoryID);
			transaction.commit();
			session.close();
			return cat;
			}
			catch(Exception e){
			return null;

			}
		}

	public boolean updateCategory(CategoryModel categorymodel) {
		
		try{
			
			Session session =sessionFactory.openSession();
			Transaction transaction =session.beginTransaction();
			session.saveOrUpdate(categorymodel);
			transaction.commit();
			session.close();
			return true;
			}
			catch(Exception e){
			return false;
		}
	}

	public CategoryModel singleCategory(int id) {
		// TODO Auto-generated method stub
		try{	
			Session session =sessionFactory.openSession();
			Transaction transaction =session.beginTransaction();
			CategoryModel cat=session.get(CategoryModel.class, id);
			transaction.commit();
			session.close();
			return cat;
			}
			catch(Exception e){
			return null;
		}
	}
	
}
	

