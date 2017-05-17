package com.aksenplus.dao;

import com.aksenplus.model.Product;
import org.springframework.stereotype.Component;

import java.util.List;

/**
 * Created by Power on 08/04/2017.
 */
@Component
public interface ProductDao {

    void addProduct(Product product);
    Product getProductByID(Integer id);
    List<Product> getAllProducts();
    void deleteProduct(Integer id);
    void updateProduct(Product product);
}
