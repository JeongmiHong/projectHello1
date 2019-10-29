package com.hjm.projectHello1.Impl;

import com.hjm.projectHello1.dao.UserDAO;
import com.hjm.projectHello1.dto.LoginDTO;
import com.hjm.projectHello1.vo.UserVO;
import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import javax.inject.Inject;

@Repository
public class UserDAOImpl implements UserDAO {

       /* @Autowired
        private SqlSessionImpl session;
*/
       @Autowired
       private SqlSession sqlSessionTemplate;


        private static String namespace ="com.hjm.projectHello1.dao.UserDAO";

        @Override
        public UserVO login(LoginDTO dto) throws Exception{
            System.out.println("hreDao");
            UserVO uservo = null;
            System.out.println("dao : " + dto.getUser_id());

            uservo =  sqlSessionTemplate.selectOne(namespace +".login", dto);

            return uservo;
        }
}
