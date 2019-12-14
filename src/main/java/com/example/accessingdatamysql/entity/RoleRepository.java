package com.example.accessingdatamysql.entity;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import javax.persistence.Id;
@Repository
@Transactional
public interface RoleRepository extends JpaRepository<Role, Integer> {

}
