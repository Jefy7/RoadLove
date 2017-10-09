package com.rl.roadlovebackend.daoimpl;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.rl.roadlovebackend.dao.UserDao;
import com.rl.roadlovebackend.model.UserCredentials;

@Repository
public class UserDaoImpl implements UserDao {

	@Autowired
	SessionFactory sessionFactory;
	
	public boolean insertUser(UserCredentials usercredentials) {
	
		try{
		Session session =sessionFactory.openSession();
		Transaction transaction =session.beginTransaction();
		session.save(usercredentials);
		transaction.commit();
		session.close();
		return true;
		}
		catch(Exception e){
		return false;
	}

}
}
