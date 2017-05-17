package com.aksenplus.controller;

import com.aksenplus.model.Product;
import com.aksenplus.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Map;

/**
 * Created by Power on 20/04/2017.
 */

@Controller


public class ProductController {

    @Autowired
    private ProductService productService;

    Product product;

    @RequestMapping(value = "/product/{productId}", method = RequestMethod.GET)
    public String viewProduct(@PathVariable Integer productId , HttpServletRequest request,Model model )
    {



        product =productService.getProductByID(productId);



        List<String> images=new  ArrayList<String>();
        String rootDirectory=request.getSession().getServletContext().getRealPath("/");
        Path path= Paths.get(rootDirectory+"\\WEB-INF\\resources\\imgs\\products\\"+product.getProductId()+"\\"+product.getProductId()+"a.png");
        Path path2= Paths.get(rootDirectory+"\\WEB-INF\\resources\\imgs\\products\\"+product.getProductId()+"\\"+product.getProductId()+"b.png");
        Path path3= Paths.get(rootDirectory+"\\WEB-INF\\resources\\imgs\\products\\"+product.getProductId()+"\\"+product.getProductId()+"c.png");
        Path path4= Paths.get(rootDirectory+"\\WEB-INF\\resources\\imgs\\products\\"+product.getProductId()+"\\"+product.getProductId()+"d.png");

        File f = new File(path.toString());
        if(f.exists() && !f.isDirectory()) {images.add(product.getProductId()+"/"+product.getProductId()+"a.png");}
        File f2 = new File(path2.toString());
        if(f2.exists() && !f2.isDirectory()) {images.add(product.getProductId()+"/"+product.getProductId()+"b.png");}
        File f3 = new File(path3.toString());
        if(f3.exists() && !f3.isDirectory()) {images.add(product.getProductId()+"/"+product.getProductId()+"c.png");}
        File f4 = new File(path4.toString());
        if(f4.exists() && !f4.isDirectory()) {images.add(product.getProductId()+"/"+product.getProductId()+"d.png");}



        //ModelMap model = new ModelMap();

        model.addAttribute("images",images);
       // model.addAttribute("product",product);
        model.addAttribute("productNameEn",product.getProductNameEn());
        model.addAttribute("ProductPrice",product.getProductPrice());
        model.addAttribute("productDescriptionEn",product.getProductDescriptionEn());
        model.addAttribute("ProductId",product.getProductId());
        model.addAttribute("ProductManufacture",product.getProductManufacture());
        model.addAttribute("UnitInStock",product.getUnitInStock());

        return "/productinfo";


    }









}
