package com.example.shop.services;

import com.example.shop.models.User;

import com.example.shop.models.enums.Role;
import com.example.shop.repositories.UserRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import java.security.Principal;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.stream.Collectors;


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

    public List<User> getAll() {
        return userRepository.findAll();
    }

    public void delete(Long id) {
        log.debug("Deleting user id: {}", id);
        userRepository.deleteById(id);
    }

    public void banUser(Long id) {
        User user = userRepository.findById(id).orElse(null);
        if (user != null) {
            if (!user.isActive()) {
                user.setActive(true);
                log.info("Unban user name: {}, email: {}", user.getName(), user.getEmail());
            } else {
                user.setActive(false);
                log.info("Ban user name: {}, email: {}", user.getName(), user.getEmail());
            }
        }
        userRepository.save(user);
    }

    public void editRoles(User user, Map<String, String> form) {
        Set<String> roles = Arrays.stream(Role.values())
                .map(Role::name)
                .collect(Collectors.toSet());
        user.getRoles().clear();
        for (String key : form.keySet()) {
            if (roles.contains(key)) {
                user.getRoles().add(Role.valueOf(key));
            }
        }
        userRepository.save(user);
    }

    public User getUserByPrincipal(Principal principal) {
        return principal == null ? new User() : userRepository.findByEmail(principal.getName());
    }
}
