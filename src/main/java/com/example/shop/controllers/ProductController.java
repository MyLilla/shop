package com.example.shop.controllers;

import com.example.shop.models.Product;
import com.example.shop.services.ProductService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.security.Principal;

@Controller
@RequiredArgsConstructor
public class ProductController {

    public final ProductService productService;

    @GetMapping("/")
    public String getProducts(@RequestParam(name = "title", required = false) String title,
                              Principal principal, Model model) {
        model.addAttribute("products", productService.getByTitle(title));
        model.addAttribute("user", productService.getByPrincipal(principal));
        return "products";
    }

    @PostMapping("/product/create")
    public String createProduct(@RequestParam("file1") MultipartFile file1, @RequestParam("file2") MultipartFile file2,
                                @RequestParam("file3") MultipartFile file3, Principal principal, Product product) throws IOException {
        productService.save(principal, product, file1, file2, file3);
        return "redirect:/";
    }

    @GetMapping("/product/delete/{id}")
    public String deleteProduct(@PathVariable Long id) {
        productService.delete(id);
        return "redirect:/";
    }

    @GetMapping("/product-info/{id}")
    public String getById(@PathVariable Long id, Model model) {
        model.addAttribute("product", productService.getById(id));
        return "product-info";
    }
}
