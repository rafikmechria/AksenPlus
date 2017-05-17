package com.aksenplus.controller;

import com.aksenplus.model.Product;
import com.aksenplus.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by FUJITSU on 16/05/2017.
 */
@Controller

public class ShopController {
    @Autowired
    private ProductService productService;


}
