package com.example.accessingdatamysql.entity;


import ch.qos.logback.core.net.SyslogOutputStream;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.annotation.Rollback;
import org.springframework.test.context.junit4.SpringRunner;
import org.springframework.transaction.annotation.Transactional;

import javax.persistence.EntityManager;
import java.util.List;
import java.util.Optional;


@RunWith(SpringRunner.class)
@SpringBootTest
public class LevelRepositoryTest {
    @Autowired
    private LevelRepository levelRepository;
    @Autowired
    private RoleRepository roleRepository;
    @Autowired
    private EntityManager entityManager;
    @Test
    public void query(){


        List<Level> all =levelRepository.findAll();
        for (Level level : all) {
            System.out.println(level);
        }


//        Role role = entityManager.find(Role.class, 2);
//        System.out.println(role);

//        Level level = entityManager.find(Level.class, 14);
//        System.out.println(level);
//        List<Role> roleList = level.getRoleList();
//        for (Role role: roleList) {
//            System.out.println(role);
//        }

    }

}