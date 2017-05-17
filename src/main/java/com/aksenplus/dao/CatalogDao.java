package com.aksenplus.dao;

import com.aksenplus.model.Catalog;
import com.aksenplus.model.Category;
import org.springframework.stereotype.Component;

import java.util.List;

/**
 * Created by Power on 03/05/2017.
 */

@Component
public interface CatalogDao {

    void AddCatalog(Catalog catalog);
    List<Catalog> GetAllCataloges();
    Catalog GetCatalogByName(String catalogName);
    List<Category> GetAllCategories();
    List<Category> GetSubCategories(String catalogName);
    void removeCartItem(String catalogName);


}
