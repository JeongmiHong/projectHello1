package com.hjm.projectHello1.Impl;

import com.hjm.projectHello1.dao.UserDAO;
import com.hjm.projectHello1.dto.LoginDTO;
import com.hjm.projectHello1.service.UserService;
import com.hjm.projectHello1.vo.UserVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.inject.Inject;

@Service
public class UserServiceImpl implements UserService {

    @Inject
    private UserDAO userDAO;

    @Override
    public UserVO login(LoginDTO dto) throws Exception {

        System.out.println("service");
        UserVO u = userDAO.login(dto);
        System.out.println("service2");
        return u;
    }
}
