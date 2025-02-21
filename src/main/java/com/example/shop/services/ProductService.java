package com.example.shop.services;

import com.example.shop.models.Image;
import com.example.shop.models.Product;
import com.example.shop.models.User;
import com.example.shop.repositories.ImageRepository;
import com.example.shop.repositories.ProductRepository;
import com.example.shop.repositories.UserRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.security.Principal;
import java.util.List;

@Service
@Slf4j
@RequiredArgsConstructor
public class ProductService {

    private final ProductRepository productRepository;
    private final UserRepository userRepository;


    public List<Product> getByTitle(String title) {
        if (title != null) {
            return productRepository.findByTitle(title);
        }
        return productRepository.findAll();
    }

    public void save(Principal principal, Product product,
                     MultipartFile file1, MultipartFile file2, MultipartFile file3) throws IOException {
        product.setUser(getByPrincipal(principal));
        Image image1;
        Image image2;
        Image image3;

        if (file1.getSize() != 0) {
            image1 = toImageEntity(file1);
            image1.setPreviewImage(true);
            product.addImage(image1);
        }
        if (file2.getSize() != 0) {
            image2 = toImageEntity(file2);
            product.addImage(image2);
        }
        if (file3.getSize() != 0) {
            image3 = toImageEntity(file3);
            product.addImage(image3);
        }

        log.debug("Saving new product title: {}, author email: {}", product.getTitle(), product.getUser().getEmail());
        Product productFromDb = productRepository.save(product);
        productFromDb.setPreviewImageId(product.getImages().get(0).getId());
        productRepository.save(product);
    }

    public User getByPrincipal(Principal principal) {
        if (principal == null) {
            return new User();
        }
        return userRepository.findByEmail(principal.getName());
    }

    private Image toImageEntity(MultipartFile file) throws IOException {
        Image image = new Image();
        image.setName(file.getName());
        image.setOriginalName(file.getOriginalFilename());
        image.setSize(file.getSize());
        image.setContentType(file.getContentType());
        image.setBytes(file.getBytes());
        return image;
    }

    public void delete(Long id) {
        log.debug("Deleting new product with id: {}", id);
        productRepository.deleteById(id);
    }

    public Product getById(Long id) {
        return productRepository.findById(id).orElse(null);
    }
}
