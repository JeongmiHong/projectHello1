package com.hjm.projectHello1.Impl;

import com.hjm.projectHello1.dto.LoginDTO;
import com.hjm.projectHello1.vo.UserVO;
import org.springframework.stereotype.Repository;

@Repository
public class SqlSessionImpl {


    public UserVO  selectOne(String statement, LoginDTO dto) {
        String id = "9130006";
        String pwd  = "rhaxoddl97";
        System.out.println("SqlSessionImpl.selectOne id : " + dto.getUser_id());
        System.out.println("SqlSessionImpl.selectOne pwd : " + dto.getPasswd());

        UserVO uv = null;
        if(id.equals(dto.getUser_id()) && pwd.equals(dto.getPasswd())) {
            uv = new UserVO();
            uv.setUser_id(dto.getUser_id());
        }


        return uv;
    }

}
