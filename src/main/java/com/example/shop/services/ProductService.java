package com.example.shop.services;

import com.example.shop.models.Product;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class ProductService {

    private final List<Product> products = new ArrayList<>();
    private long id = 0;

    public ProductService() {
        this.products.add(new Product(++id, "Laptop", "some about", 200, "Moscow", "Andre"));
        this.products.add(new Product(++id, "TV", "about", 100, "Malaga", "Olga"));
        this.products.add(new Product(++id, "Phone", "some description", 500, "Benalmadena", "Elen"));
    }

    public List<Product> getAll() {
        return products;
    }

    public void save(Product product) {
        product.setId(++id);
        products.add(product);
    }

    public void delete(Long id) {
        products.removeIf(product -> product.getId().equals(id));
    }

    public Product getById(Long id) {
        for (Product product : products) {
            if (product.getId().equals(id)) {
                return product;
            }
        }
        return null;
    }
}
