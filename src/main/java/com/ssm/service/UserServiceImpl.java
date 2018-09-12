package com.ssm.service;

import com.ssm.dao.UserDao;
import com.ssm.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("userService")
public class UserServiceImpl implements UserService {

    @Autowired
    private UserDao userDao;

    public User findById(Long id) {
        return userDao.findById(id);
    }
}
