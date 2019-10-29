package com.hjm.projectHello1.dao;

import com.hjm.projectHello1.dto.LoginDTO;
import com.hjm.projectHello1.vo.UserVO;

public interface UserDAO {
    /*@Autowired*/
    UserVO login(LoginDTO dto) throws Exception;
}
