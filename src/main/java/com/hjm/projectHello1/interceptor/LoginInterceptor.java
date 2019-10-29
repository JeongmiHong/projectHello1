package com.hjm.projectHello1.interceptor;

import org.mariadb.jdbc.internal.logging.Logger;
import org.mariadb.jdbc.internal.logging.LoggerFactory;
import org.springframework.ui.ModelMap;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LoginInterceptor extends HandlerInterceptorAdapter {

    private static final String LOGIN = "login";
    private static final Logger logger = LoggerFactory.getLogger(LoginInterceptor.class);

    @Override
    public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView) throws Exception {

        HttpSession session = request.getSession();
        ModelMap modelMap = modelAndView.getModelMap();
        Object userVO = modelMap.get("userVO");

        if(userVO != null){
            System.out.println("LoginInterceptor.postHandle");
            logger.info("new login success!!!");
            session.setAttribute(LOGIN, userVO);
            response.sendRedirect("/user/home");
        } else {
            response.sendRedirect("/");
        }
    }

    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception{

        HttpSession session = request.getSession();

        if(session.getAttribute(LOGIN) != null){
            System.out.println("LoginInterceptor.preHandle");
            logger.info("clear login data before");
            session.removeAttribute(LOGIN);
        }
        return true;
    }
}
