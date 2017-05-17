package com.aksenplus.controller;

import com.aksenplus.dao.CatalogDao;
import com.aksenplus.dao.CategoryDao;
import com.aksenplus.model.Catalog;
import com.aksenplus.model.Category;
import com.aksenplus.model.Product;
import com.aksenplus.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by Power on 20/04/2017.
 */
@Controller
public class HomeController {

    @Autowired
    CatalogDao catalogDao;

    @Autowired
    CategoryDao categoryDao;

    @Autowired
    private ProductService productService;

    @RequestMapping("/shop")
    public String homeconttoller(Model model)
{
    List<Product> products = productService.getAllProducts();
    List<Product> pp=new ArrayList<Product>();


    for (int i = 0; i <9 ; i++) {

        pp.add(products.get(i));



    }

    model.addAttribute("products",pp);
    return "shop";
}



    @RequestMapping(value = "/category/computers",method = RequestMethod.GET)
    public String Category(Model model)
    {





        List<Category> subCategories= catalogDao.GetSubCategories("computers");
        List<Product> products=new ArrayList<Product>();
        for (Category category:subCategories) {
            List<Product> prs =categoryDao.getProductsByCategoryName(category.getCategoryNameEn());
            products.addAll(prs);
        }

        model.addAttribute("products",products);



      return "/allfromcatalogue";






    }



    @RequestMapping("/shop/category/{Catalog}/{CategoryName}")
    public String Category(@PathVariable("Catalog") String catalog ,@PathVariable("CategoryName") String categoryname,Model model)
    {
        Catalog cc;

        cc=catalogDao.GetCatalogByName(catalog);
        if(cc==null)
            return "403";

        else
        {

            //List<Category> categories =catalogDao.GetAllCategories();
            // for (int i = 0; i <categories.size() ; i++) {
            //     if( categories.get(i).getCategoryNameEn()==categoryname)
            //         return "/catergory";
            // }

            Category Cc;
            Cc=categoryDao.getCategoryByName(categoryname);
            if(Cc==null)
                return "403";
            else {


                //  List<Product> products=categoryDao.getProductsByCategoryName(categoryname);
                //  model.addAttribute("products", products);
                return "/category";

            }
        }





    }




}