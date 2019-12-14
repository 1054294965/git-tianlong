package com.example.accessingdatamysql.controller;

import ch.qos.logback.core.net.SyslogOutputStream;
import com.example.accessingdatamysql.entity.Level;
import com.example.accessingdatamysql.entity.LevelRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
public class LevelController {
    @Autowired
    private LevelRepository levelRepository;
    @RequestMapping("/level/list")
    public String list(Model model){
        List<Level> levelList =levelRepository.findAll();

        model.addAttribute("levelList",levelList);

        return "level/list";
    }
}
