package com.aksenplus.service;

import com.aksenplus.model.Product;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by Power on 20/04/2017.
 */
@Service
public interface ProductService {

    List<Product> getAllProducts();

    Product getProductByID(Integer id);
    void addProduct(Product product);

    void deleteProduct(Integer id);
    void updateProduct(Product product);
}
