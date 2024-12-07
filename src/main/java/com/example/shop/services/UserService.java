package com.example.shop.services;

import com.example.shop.models.User;

import com.example.shop.models.enums.Role;
import com.example.shop.repositories.UserRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import java.util.List;


@Service
@RequiredArgsConstructor
@Slf4j
public class UserService {

    private final UserRepository userRepository;
    private final PasswordEncoder passwordEncoder;

    public User getById(Long id) {
        return userRepository.findById(id).orElse(null);
    }

    public boolean create(User user) {
        log.debug("Saving new user name: {}, email: {}", user.getName(), user.getEmail());
        if (userRepository.findByEmail(user.getEmail()) != null) return false;
        user.setActive(true);
        user.getRoles().add(Role.ROLE_USER);
        user.setPassword(passwordEncoder.encode(user.getPassword()));
        userRepository.save(user);
        return true;
    }

    public List<User> getAll(){
        return userRepository.findAll();
    }

    public void delete(Long id) {
        log.debug("Deleting user id: {}", id);
        userRepository.deleteById(id);
    }
}
