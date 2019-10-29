package com.hjm.projectHello1.controller;

import com.hjm.projectHello1.dto.LoginDTO;
import com.hjm.projectHello1.service.UserService;
import com.hjm.projectHello1.vo.UserVO;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/user") //클래스 선언의 기본적인 경로
public class UserController {

    @Inject
    private UserService service;

    @RequestMapping(value = "/login", method = RequestMethod.GET) // 로그인 화면에서 /user/login 결과 처리는 /user/loginPost로 설정된다.
    public void loginGET(@ModelAttribute("dto")LoginDTO dto, HttpServletResponse response) throws Exception{
        System.out.println("UserController loginGET");
        response.sendRedirect("/");
    }

    @RequestMapping(value = "/loginPost", method = RequestMethod.POST)
    public void loginPOST(LoginDTO dto, HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {

        HttpSession session = request.getSession();
        UserVO vo = service.login(dto);
        String url = "/";
        System.out.println("UserController loginPOST");
        if(vo != null) {
            session.setAttribute("login", vo);
            System.out.println("UserController loginPOST  session.setAttribute(\"login\", vo) : " +  session);
            url = "/user/home";
        }

        System.out.println("sesseion chek");
        response.sendRedirect(url);

    }

    @RequestMapping(value = "/home", method = RequestMethod.GET)
    public String getHome() {
        return "/home";
    }

}

