package com.aksenplus.service.impl;

import com.aksenplus.dao.ProductDao;
import com.aksenplus.model.Product;
import com.aksenplus.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by Power on 20/04/2017.
 */
@Service
public class ProductServiceImpl implements ProductService {


    @Autowired
    private ProductDao productDao;



    public List<Product> getAllProducts() {
        return  productDao.getAllProducts();
    }

    public Product getProductByID(Integer id) {
        return  productDao.getProductByID(id);
    }


    public void addProduct(Product product) {
        productDao.addProduct(product);
    }

    public void deleteProduct(Integer id) {
productDao.deleteProduct(id);
    }

    public void updateProduct(Product product) {
productDao.updateProduct(product);
    }




}
