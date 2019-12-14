package com.example.accessingdatamysql.controller;

import ch.qos.logback.core.net.SyslogOutputStream;
import com.example.accessingdatamysql.entity.Level;
import com.example.accessingdatamysql.entity.LevelRepository;
import com.example.accessingdatamysql.entity.Role;
import com.example.accessingdatamysql.entity.RoleRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;
import java.util.Optional;

@Controller
public class RoleController {
    @Autowired
    private RoleRepository roleRepository;
    @Autowired
    private LevelRepository levelRepository;
    @RequestMapping("/role/list")
    public String list(Model model){
        List<Role> roleList = roleRepository.findAll();

        model.addAttribute("roleList",roleList);

        return "role/list";
    }
    @RequestMapping("/role/edit")
    public String edit(Model model,Integer id){
        Role role=null;
        if(null!=id){
            Optional<Role> optional = roleRepository.findById(id);
            if(optional.isPresent()){
                role=optional.get();
            }
        }
        List<Level> levelList = levelRepository.findAll();
        System.out.println(levelList);
        model.addAttribute("levelList",levelList);
        model.addAttribute("role",role);

        return "role/edit";
    }

    @RequestMapping("/role/add")
    public String add(Model model){
        List<Level> levelList = levelRepository.findAll();
        System.out.println(levelList);
        model.addAttribute("levelList",levelList);
        return "role/add";
    }
    @ResponseBody
    @RequestMapping("/role/update")
    public String update(Role role,@ModelAttribute("level") Level level){
        role.setLevel(level);
        System.out.println("-----------------"+role.getLevel());
        Role role1 = roleRepository.save(role);

        return "success";
    }

    @ResponseBody
    @RequestMapping("/role/del")
    public String del(Integer id){



        roleRepository.deleteById(id);


        return "success";
    }
}
