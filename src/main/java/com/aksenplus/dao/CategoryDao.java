package com.aksenplus.dao;

import com.aksenplus.model.Category;
import com.aksenplus.model.Product;
import org.springframework.stereotype.Component;

import java.util.List;

/**
 * Created by Power on 03/05/2017.
 */

@Component
public interface CategoryDao {

    void addCategory(Category category);
    void removeCategory(String category);
    Category getCategoryByName(String categoryName);
    List<Product> getProductsByCategoryName(String categoryName);
}
