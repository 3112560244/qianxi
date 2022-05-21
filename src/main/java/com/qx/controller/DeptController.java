package com.qx.controller;

import com.qx.pojo.Dept;
import com.qx.service.DeptService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

/**
 * @Author: ZedQ
 * @Date: 2022/5/19 21:35
 * @Description:
 */

@Controller
@RequestMapping("/dept")
public class DeptController {

    @Autowired
    @Qualifier("DeptServiceImpl")
    private DeptService deptService;

    @RequestMapping(value = "/allDept")
    public String allDept(Model model){
        List<Dept> depts = deptService.findAllDept();
        model.addAttribute("list", depts);
        return "allDept";
    }



}
