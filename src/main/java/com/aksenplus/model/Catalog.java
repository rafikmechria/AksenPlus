package com.aksenplus.model;

import com.aksenplus.dao.CatalogDao;
import com.fasterxml.jackson.annotation.JsonIgnore;

import javax.persistence.*;
import java.util.List;

/**
 * Created by Power on 01/05/2017.
 */
@Entity
public class Catalog {


        // primary key for the db
        @Id    // primary key for the db
        @GeneratedValue(strategy = GenerationType.TABLE)
    private int catalogId;
    private String catalogName;



    @OneToMany(mappedBy = "catalog" ,cascade= CascadeType.ALL ,fetch = FetchType.EAGER)
    @JsonIgnore
    List<Category> SubCategories;


    public Catalog() {
        this.catalogName = "";
    }

    public int getCatalogId() {
        return catalogId;
    }

    public String getCatalogName() {
        return catalogName;
    }

    public void setCatalogName(String catalogName) {
        this.catalogName = catalogName;
    }

    public void setCatalogId(int catalogId) {
        this.catalogId = catalogId;
    }

    public List<Category> getSubCategories() {

        return null;
    }

    public void setSubCategories(List<Category> subCategories) {
        SubCategories = subCategories;
    }
}
