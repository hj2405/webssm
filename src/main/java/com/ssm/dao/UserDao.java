package com.ssm.dao;

import com.ssm.model.User;
import org.springframework.stereotype.Repository;

@Repository
public interface UserDao {

    User findById(Long id);
}
