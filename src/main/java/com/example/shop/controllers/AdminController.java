package com.example.shop.controllers;

import com.example.shop.models.User;
import com.example.shop.models.enums.Role;
import com.example.shop.services.UserService;
import lombok.RequiredArgsConstructor;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.Map;

@Controller
@RequiredArgsConstructor
@PreAuthorize("hasAuthority('ROLE_ADMIN')")
public class AdminController {

    private final UserService userService;

    @GetMapping("/admin/users")
    public String allUsers(Model model) {
        model.addAttribute("users", userService.getAll());
        return "admin";
    }

    @PostMapping("/admin/user/ban/{id}")
    public String userBan(@PathVariable Long id) {
        userService.banUser(id);
        return "redirect:/admin/users";
    }

    @GetMapping("/admin/user/edit/{user}")
    public String editUser(@PathVariable User user, Model model) {
        model.addAttribute("user", user);
        model.addAttribute("roles", Role.values());
        return "user-edit";
    }

    @PostMapping("/admin/user/edit")
    public String saveEditedUser(@RequestParam Long userId, @RequestParam Map<String, String> form) {
        userService.editRoles(userService.getById(userId), form);
        return "redirect:admin/users";
    }
}