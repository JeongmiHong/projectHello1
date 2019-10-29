package com.hjm.projectHello1.interceptor;

import org.mariadb.jdbc.internal.logging.Logger;
import org.mariadb.jdbc.internal.logging.LoggerFactory;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class AuthInterceptor extends HandlerInterceptorAdapter {
    private static final Logger logger = LoggerFactory.getLogger(AuthInterceptor.class);


    @Override
    public boolean preHandle(HttpServletRequest request,
                             HttpServletResponse response, Object handler) throws Exception {
        System.out.println("AuthInterceptor : sdfwsef");
        HttpSession session = request.getSession();


        if(session.getAttribute("login") == null){

            logger.info("current user is not logined");


            response.sendRedirect("/user/login");
            return false;
        }
        return true;
    }
}
