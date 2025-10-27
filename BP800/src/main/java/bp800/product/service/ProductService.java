package bp800.product.service;

import java.util.List;

import bp800.product.dao.ProductDAO;
import bp800.product.dto.Product;

public class ProductService {
	
	ProductDAO productDAO;
	
	public ProductService() {
		super();
		productDAO = new ProductDAO();
	}
	
	public List<Product> findAll() {
		return productDAO.findAll();
	}
	
	public Product find(String id) {
		return productDAO.find(id);
	}
	
}
