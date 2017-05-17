package com.aksenplus.model;

import com.fasterxml.jackson.annotation.JsonIgnore;
import org.springframework.web.multipart.MultipartFile;

import javax.persistence.*;
import java.io.Serializable;
import java.util.List;

/**
 * Created by Power on 07/04/2017.
 */
// to tell spring this is and db object
@Entity
public class Product implements Serializable {


    private static final long serialVersionUID = -7492508226819587806L;

    @Id    // primary key for the db
    @GeneratedValue(strategy = GenerationType.TABLE)
    private Integer productId=0;
// this code for generation an auto product id in db


    private  String productNameRu;
    private String productNameEn;



    private String productCategory;


    private String productDescriptionRu;
    private String productDescriptionEn;
    private double productPrice;
    private String productStatus;
    private int unitInStock;
    private String productManufacture;

    @Transient
    MultipartFile productImage;

    @Transient
    List<MultipartFile> files;


    // this for hibernate to connect the product into cart items
    @OneToMany(mappedBy = "product" ,cascade = CascadeType.ALL,fetch = FetchType.LAZY) //we got one product can be in many cart items !
    @JsonIgnore
    private List<CartItem> cartItemList;


    public String getProductCategory() {
        return productCategory;
    }

    public List<MultipartFile> getFiles() {
        return files;
    }

    public void setFiles(List<MultipartFile> files) {
        this.files = files;
    }

    public void setProductCategory(String productCategory) {
        this.productCategory = productCategory;
    }

    public MultipartFile getProductImage() {
        return productImage;
    }

    public void setProductImage(MultipartFile productImage) {
        this.productImage = productImage;
    }

    public List<CartItem> getCartItemList() {
        return cartItemList;
    }

    public void setCartItemList(List<CartItem> cartItemList) {
        this.cartItemList = cartItemList;
    }

    public String getProductNameRu() {
        return productNameRu;
    }

    public void setProductNameRu(String productNameRu) {
        this.productNameRu = productNameRu;
    }

    public String getProductNameEn() {
        return productNameEn;
    }

    public void setProductNameEn(String productNameEn) {
        this.productNameEn = productNameEn;
    }


    public String getProductDescriptionRu() {
        return productDescriptionRu;
    }

    public void setProductDescriptionRu(String productDescriptionRu) {
        this.productDescriptionRu = productDescriptionRu;
    }

    public String getProductDescriptionEn() {
        return productDescriptionEn;
    }

    public void setProductDescriptionEn(String productDescriptionEn) {
        this.productDescriptionEn = productDescriptionEn;
    }

    public double getProductPrice() {
        return productPrice;
    }

    public void setProductPrice(double productPrice) {
        this.productPrice = productPrice;
    }

    public String getProductStatus() {
        return productStatus;
    }

    public void setProductStatus(String productStatus) {
        this.productStatus = productStatus;
    }

    public int getUnitInStock() {
        return unitInStock;
    }

    public void setUnitInStock(int unitInStock) {
        this.unitInStock = unitInStock;
    }

    public String getProductManufacture() {
        return productManufacture;
    }

    public void setProductManufacture(String productManufacture) {
        this.productManufacture = productManufacture;
    }
    public Integer getProductId() {
        return productId;
    }

    public void setProductId(Integer productId) {
        this.productId = productId;
    }

    public static long getSerialVersionUID() {
        return serialVersionUID;
    }


}
