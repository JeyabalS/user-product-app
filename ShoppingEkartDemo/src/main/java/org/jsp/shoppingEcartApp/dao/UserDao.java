package org.jsp.shoppingEcartApp.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.NoResultException;
import javax.persistence.Persistence;
import javax.persistence.Query;

import org.jsp.shoppingEcartApp.dto.Product;
import org.jsp.shoppingEcartApp.dto.User;

public class UserDao {
	EntityManager manager = Persistence.createEntityManagerFactory("dev").createEntityManager();

	public User saveUser(User user) {
		EntityTransaction transaction = manager.getTransaction();
		manager.persist(user);
		transaction.begin();
		transaction.commit();
		return user;
	}

	public User updateUser(User user) {
		EntityTransaction transaction = manager.getTransaction();
		manager.merge(user);
		transaction.begin();
		transaction.commit();
		return user;
	}

	public User findUserById(int id) {
		return manager.find(User.class, id);
	}

	public User verifyUser(long phone, String password) {
		Query q = manager.createQuery("select u from User u where u.phone=?1 and u.password=?2");
		q.setParameter(1, phone);
		q.setParameter(2, password);
		try {
			return (User) q.getSingleResult();
		} catch (NoResultException e) {
			return null;
		}
	}

	public boolean deleteUser(int id) {
		User u = findUserById(id);
		if (u != null) {
			EntityTransaction transaction = manager.getTransaction();
			List<Product> ps = u.getProducts();
			for (Product p : ps) {
				manager.remove(p);
				transaction.begin();
				transaction.commit();
			}
			manager.remove(u);
			transaction.begin();
			transaction.commit();
			return true;
		}
		return false;
	}

	public User forgetPass(long phone) {
		Query q = manager.createQuery("select u from User u where u.phone=?1");
		q.setParameter(1, phone);
		try {
			return (User) q.getSingleResult();
		} catch (NoResultException e) {
			return null;
		}
	}

	public User resetPass(long phone, String oldPass, String newPass) {
		Query q = manager.createQuery("select u from User u where u.phone=?1 and u.password=?2");
		q.setParameter(1, phone);
		q.setParameter(2, oldPass);
		try {
			User u = (User) q.getSingleResult();
			u.setPassword(newPass);
			EntityTransaction transaction = manager.getTransaction();
			manager.merge(u);
			transaction.begin();
			transaction.commit();
			return u;
		} catch (NoResultException e) {
			return null;
		}
	}
}
