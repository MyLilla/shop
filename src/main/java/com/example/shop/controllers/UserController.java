package com.example.shop.controllers;

import com.example.shop.models.User;
import com.example.shop.services.UserService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
@RequiredArgsConstructor
public class UserController {

    private final UserService userService;

    @GetMapping("/login")
    public String login() {
        return "login";
    }

    @GetMapping("/registration")
    public String registration() {
        return "registration";
    }

    @PostMapping("/registration")
    public String createUser(User user, Model model) {
        if (!userService.create(user)) {
            model.addAttribute("errorMessage",
                    "User with e-mail: " + user.getEmail() + "already exist");
        }
        return "redirect:/login";
    }

    @GetMapping("/user-info/{user}")
    public String getUser(@PathVariable User user, Model model) {
        model.addAttribute("user", user);
        return "user-info";
    }
}
