package org.jsp.shoppingEcartApp.dao;

import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.Query;
import org.jsp.shoppingEcartApp.dto.Product;
import org.jsp.shoppingEcartApp.dto.User;

public class ProductDao {
	EntityManager manager = Persistence.createEntityManagerFactory("dev").createEntityManager();

	public Product saveProduct(Product product, int u_id) {
		User u = manager.find(User.class, u_id);
		if (u != null) {
			u.getProducts().add(product); // adding product to user
			product.setUser(u); // setting user to the product
			EntityTransaction transaction = manager.getTransaction();
			manager.persist(product);
			manager.persist(u);
			transaction.begin();
			transaction.commit();
			return product;
		}
		return null;
	}

	public Product updateProduct(Product product, int u_id) {
		User u = manager.find(User.class, u_id);
		if (u != null) {
			u.getProducts().add(product);
			product.setUser(u);
			EntityTransaction transaction = manager.getTransaction();
			manager.merge(product);
			transaction.begin();
			transaction.commit();
			return product;
		}
		return null;
	}

	public Product findProductById(int id) {
		return manager.find(Product.class, id);
	}

	public boolean deleteProduct(int id) {
		Product p = findProductById(id);
		if (p != null) {
			manager.remove(p);
			EntityTransaction transaction = manager.getTransaction();
			transaction.begin();
			transaction.commit();
			return true;
		}
		return false;
	}

	public List<Product> findProductByUserId(int u_id) {
		Query q = manager.createQuery("select u.products from User u where u.id=?1");
		q.setParameter(1, u_id);
		return q.getResultList();
	}
}