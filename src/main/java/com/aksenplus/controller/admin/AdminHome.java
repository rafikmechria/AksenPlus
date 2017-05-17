package com.aksenplus.controller.admin;

import com.aksenplus.dao.AdBannerDao;
import com.aksenplus.dao.CatalogDao;
import com.aksenplus.dao.CategoryDao;
import com.aksenplus.model.*;
import com.aksenplus.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;

/**
 * Created by Power on 20/04/2017.
 */

@Controller
@RequestMapping("/admin")
public class AdminHome {

    private Path path;


    @Autowired
    private ProductService productService;

    @Autowired
    private AdBannerDao adBannerDao;
    @Autowired
    private CatalogDao catalogDao;
    @Autowired
    private CategoryDao categoryDao;



    @RequestMapping("/home")
    public String admin_home()
    {
        return "/admin/home";
    }

    @RequestMapping("/orders")
    public String admin_orders()
    {
        return "/admin/orders";
    }
    @RequestMapping("/customers")
    public String admin_customers(Model model)
    {

        return "/admin/customers";
    }
    @RequestMapping("/sales")
    public String admin_sales()
    {
        return "/admin/sales";
    }

    @RequestMapping("/users")
    public String admin_users()
    {
        return "/admin/users";
    }
    @RequestMapping("/settings")
    public String admin_settings()
    {
        return "/admin/settings";
    }








    @RequestMapping(value = "/products/add", method = RequestMethod.POST)
    public String productSubmit(@ModelAttribute("shit") Product product , HttpServletRequest request) {

        productService.addProduct(product);

        MultipartFile productImage=product.getProductImage();
        String rootDirectory=request.getSession().getServletContext().getRealPath("/");

        File file = new File(rootDirectory+"\\WEB-INF\\resources\\imgs\\products\\"+product.getProductId()+"");
        if (!file.exists()) {
           file.mkdir();
        }

        path= Paths.get(rootDirectory+"\\WEB-INF\\resources\\imgs\\products\\"+product.getProductId()+"\\"+product.getProductId()+".png");

        Path path2= Paths.get(rootDirectory+"\\WEB-INF\\resources\\imgs\\products\\"+product.getProductId()+"\\"+product.getProductId()+"a.png");
        Path path3= Paths.get(rootDirectory+"\\WEB-INF\\resources\\imgs\\products\\"+product.getProductId()+"\\"+product.getProductId()+"b.png");
        Path path4= Paths.get(rootDirectory+"\\WEB-INF\\resources\\imgs\\products\\"+product.getProductId()+"\\"+product.getProductId()+"c.png");
        Path path5= Paths.get(rootDirectory+"\\WEB-INF\\resources\\imgs\\products\\"+product.getProductId()+"\\"+product.getProductId()+"d.png");

        List<MultipartFile> files=product.getFiles();
        if(null != files && files.size() > 0) {

           if(! files.get(0).isEmpty())
           {
               try {
                   files.get(0).transferTo(new File(path2.toString()));
               } catch (Exception e) {
                   throw new RuntimeException(e.getMessage());
               }
           }

            if(! files.get(1).isEmpty())
            {
                try {
                    files.get(1).transferTo(new File(path3.toString()));
                } catch (Exception e) {
                    throw new RuntimeException(e.getMessage());
                }
            }

            if(! files.get(2).isEmpty())
            {
                try {
                    files.get(2).transferTo(new File(path4.toString()));
                } catch (Exception e) {
                    throw new RuntimeException(e.getMessage());
                }
            }


            if(! files.get(3).isEmpty())
            {
                try {
                    files.get(3).transferTo(new File(path5.toString()));
                } catch (Exception e) {
                    throw new RuntimeException(e.getMessage());
                }
            }
        }







        if ( (productImage!=null) && (!productImage.isEmpty()) )
        {
            try {
                productImage.transferTo(new File(path.toString()));
            } catch (Exception e) {
                throw new RuntimeException(e.getMessage());
            }

        }





            return "redirect:/admin/products";

    }




    @RequestMapping("/products")
    public String admin_products(Model model)
    {

        List<AdBanner> adbanners = adBannerDao.getAllAdBanners();
       // List<Catalog> catalogs=catalogDao.GetAllCataloges();


        List<Catalog> listOfCatalogues = catalogDao.GetAllCataloges();
        List<Product> products = productService.getAllProducts();

        List<Category> listOfCatgs=catalogDao.GetAllCategories();
       // model.addAttribute("catalogues",catalogs);
        model.addAttribute("listOfCatgs",listOfCatgs);
        model.addAttribute("adbannerslist",adbanners);
//attaching the product data directly to the view
        model.addAttribute("listofcatalogues",listOfCatalogues);
        model.addAttribute("products", products);

        return "/admin/products";
    }




    @ModelAttribute("shit")
    public Product constructUser() {
        return new Product();
    }

    @ModelAttribute("adbanner")
    public AdBanner constructadbanner() {
        return new AdBanner();
    }

    @ModelAttribute("catalogue")
    public Catalog constructcatalogue() {
        return new Catalog();
    }
    @RequestMapping(value = "/products/catalogues", method = RequestMethod.POST)
    public String catalogueSubmit(@ModelAttribute("catalogue") Catalog catalog) {


catalogDao.AddCatalog(catalog);

        return "redirect:/admin/products";

    }

/*
    @RequestMapping(value = "/products/catalogues")
    public String catalogueSubmit() {

        Catalog catalog=new Catalog();
        catalog.setCatalogName("Computers");

        Category cc = new Category();
        cc.setCategoryNameEn("Laptops");

        List<Category> categories =new ArrayList<Category>(); ;
        categories.add(cc);
        catalog.setSubCategories(categories);
        catalogDao.AddCatalog(catalog);

        return "redirect:/admin/products";

    }
    */

    @RequestMapping(value = "/adbanner/add", method = RequestMethod.POST)
    public String constructBanner(@ModelAttribute("adbanner") AdBanner adBanner , HttpServletRequest request) {

        adBannerDao.addNewAdBanner(adBanner);
      /*  Path adbannerpath;
        MultipartFile adbannerImage=adBanner.getAdbannerImage();
        String rootDirectory=request.getSession().getServletContext().getRealPath("/");


        adbannerpath= Paths.get(rootDirectory+"\\WEB-INF\\resources\\imgs\\adbanner\\"+adBanner.getBannerId()+".png");

        if ( (adbannerImage!=null) && (!adbannerImage.isEmpty()) )
        {
            try {
                adbannerImage.transferTo(new File(adbannerpath.toString()));
            } catch (Exception e) {
                throw new RuntimeException(e.getMessage());
            }

        }


*/

        return "redirect:/admin/home";
    }
    //@PostMapping("/admin/products")





    @RequestMapping(value = "/productedit/{productId}",method =RequestMethod.GET )
    public String editProduct(@PathVariable Integer productId , Model model)
    {
        Product product =productService.getProductByID(productId);
        model.addAttribute(product);

        return "/admin/productedit";
    }






    @ModelAttribute("edit")
    public Product editProduct() {
        return new Product();
    }
    @RequestMapping(value = "/productedit",method = RequestMethod.POST)
    public String updateProduct(@ModelAttribute("edit") Product product , Model model , HttpServletRequest request)
    {
        productService.updateProduct(product);

        return "redirect:/admin/products";
    }

}
