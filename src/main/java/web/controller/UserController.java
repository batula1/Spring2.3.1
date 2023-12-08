package web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import web.model.User;
import web.service.UserService;
import web.service.userServiceImp;

import java.util.ArrayList;
import java.util.List;

@Controller
public class UserController {

    private UserService serviceUser;
    @Autowired
    public UserController(UserService serviceUser) {
        this.serviceUser = serviceUser;
    }

    @GetMapping(value = "/")
    public String getUsers(Model model) {
        model.addAttribute("users", serviceUser.getUsers());
        return "listUsers";
    }
    @GetMapping(value = "/addUser")
    public String addUser(Model model){
        model.addAttribute("users", new User());
        return  "userInfo";

    }

    @PostMapping(value = "/saveUser")
    public String saveUser(@ModelAttribute("users") User users){
        serviceUser.saveUser(users);
        return "redirect:/";
    }

    @GetMapping("/updateInfo")
    public String updateUserForm(@RequestParam("userID") int id, Model model) {
        User user = serviceUser.getUser(id);
        if (user != null) {
            model.addAttribute("user", user);
            return "updateUser";
        } else {
            // Handle the case when the user is not found
            return "redirect:/";
        }
    }

    @PostMapping("/updateUser")
    public String updateUser(@ModelAttribute("user") User updatedUser, int id) {
        User user = serviceUser.getUser(id);
        if (user != null) {
            user.setName(updatedUser.getName());
            user.setLastname(updatedUser.getLastname());
            user.setAge(updatedUser.getAge());
            serviceUser.updateUser(id, user);
        }
        return "redirect:/";
    }


    @RequestMapping("/deleteUser")
    public String deleteUser(@RequestParam("userID") int id){
        serviceUser.deleteUser(id);
        return "redirect:/";
    }
}