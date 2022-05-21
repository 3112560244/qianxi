package com.qx.controller;/**
 * @Author: ZedQ
 * @Date: 2022/5/21 21:04
 * @Description:
 */

import com.qx.pojo.Account;
import com.qx.pojo.RespBean;
import com.qx.service.EmployeeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;

/**
 * @author ZedQ
 * @date 2022年05月21日 21:04 
 * @Description: 登录
 */
@RequestMapping(value = "/")
@Controller
public class AccountController {

    @Autowired
    private EmployeeService employeeService;

    @GetMapping("login")
    public String toLogin(Model model){
        Account account = new Account();
        model.addAttribute("account",account);
        return "login";
    }

    @PostMapping(value = "login")
    public String login(Model model,HttpSession session, Account account){
        RespBean respBean = employeeService.login(account);
        if(respBean.getCode()==500){
            model.addAttribute("msg",respBean.getMessage());
            return "login";
        }
        Account account1 = (Account) respBean.getObj();

        session.setAttribute("account",account1);
        return "redirect:/employee/allEmployee";
    }
}
