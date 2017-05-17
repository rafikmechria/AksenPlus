package com.aksenplus.model;

import com.fasterxml.jackson.annotation.JsonIgnore;

import javax.persistence.*;
import java.util.List;

/**
 * Created by Power on 01/05/2017.
 */

@Entity
public class Category {

    @Id    // primary key for the db
    @GeneratedValue(strategy = GenerationType.TABLE)
    private int categoryId;

    private String categoryNameEn;
    private String categoryNameRu;

    @ManyToOne(cascade = CascadeType.ALL,fetch = FetchType.EAGER) // we got many categories into a one catalog !
    @JoinColumn(name = "catalogId") // foregin key
    @JsonIgnore
    private Catalog catalog;


/*
   @OneToMany(mappedBy = "category" ,fetch = FetchType.EAGER)
    @JsonIgnore
    private List<Product> products;


    public List<Product> getProducts() {
        return products;
    }

    public void setProducts(List<Product> products) {
        this.products = products;
    }
*/


    public String getCategoryNameEn() {
        return categoryNameEn;
    }

    public void setCategoryNameEn(String categoryNameEn) {
        this.categoryNameEn = categoryNameEn;
    }

    public String getCategoryNameRu() {
        return categoryNameRu;
    }

    public void setCategoryNameRu(String categoryNameRu) {
        this.categoryNameRu = categoryNameRu;
    }

    public int getCategoryId() {
        return categoryId;
    }

    public void setCategoryId(int categoryId) {
        this.categoryId = categoryId;
    }

    public Catalog getCatalog() {
        return catalog;
    }

    public void setCatalog(Catalog catalog) {
        this.catalog = catalog;
    }
}
