package com.mj.bill.controller;

import com.mj.bill.vo.UserVo;
import org.apache.commons.lang.StringUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * 用户登录页面
 * Created by gaocy15 on 2016/12/2.
 */
@Controller
@RequestMapping("/user")
public class UserController {

    /**
     * 登录操作
     * @param request
     * @param response
     * @param model
     * @param user
     * @return
     * @throws Exception
     */
    @RequestMapping("/login")
    public String   login(HttpServletRequest request,HttpServletResponse response,Model model,UserVo user)throws Exception{
        String file =  "/demo/demo1" ;
        if (user != null) {
            String userName = user.getUserName();

            String password = user.getPassword();

            if (StringUtils.isNotEmpty(userName) && StringUtils.isNotEmpty(password)) {
                if (userName.equals("admin") && password.equals("admin")) {
                    response.sendRedirect(request.getContextPath() + "/car/demo1.do");
                    return null ;
                }else{
                    return file ;
                }
            }else{
                return file ;
            }

        }else{
            return file ;
        }
    }

}
