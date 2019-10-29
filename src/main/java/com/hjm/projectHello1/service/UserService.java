package com.hjm.projectHello1.service;

import com.hjm.projectHello1.dto.LoginDTO;
import com.hjm.projectHello1.vo.UserVO;


public interface UserService {
    /*@Autowired*/
    public UserVO login(LoginDTO dto) throws Exception;

}
