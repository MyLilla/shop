package com.example.shop.services;

import com.example.shop.models.Product;
import com.example.shop.repositories.ProductRepository;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@Slf4j
public class ProductService {

    private final ProductRepository productRepository;

    public ProductService(ProductRepository productRepository) {
        this.productRepository = productRepository;
    }

    public List<Product> getByTitle(String title) {
        if (title != null) {
            return productRepository.findByTitle(title);
        }
        return productRepository.findAll();
    }

    public void save(Product product) {
        log.debug("Saving new product: {}", product);
        productRepository.save(product);
    }

    public void delete(Long id) {
        log.debug("Deleting new product with id: {}", id);
        productRepository.deleteById(id);
    }

    public Product getById(Long id) {
        return productRepository.findById(id).orElse(null);
    }
}
