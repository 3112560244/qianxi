package com.qx.controller;/**
 * @Author: ZedQ
 * @Date: 2022/5/20 22:35
 * @Description:
 */

import com.qx.pojo.Dept;
import com.qx.pojo.Employee;
import com.qx.pojo.RespBean;
import com.qx.service.DeptService;
import com.qx.service.EmployeeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @author ZedQ
 * @date 2022年05月20日 22:35 
 * @Description:
 */
@Controller
@RequestMapping(value = "/employee")
public class EmployeeController {


    @Autowired
    private EmployeeService employeeService;

    @Autowired
    private DeptService deptService;


//    每次请求自动加载
    @ModelAttribute
    public void findAllDepts(Model model){
        Map<Integer,String> genderMap = new HashMap<>();
        genderMap.put(1,"男");
        genderMap.put(0,"女");
        model.addAttribute("genderMap",genderMap);


        List<Dept> allDepts = deptService.findAllDept();


        model.addAttribute("depts",allDepts);


    }


    /*
     * @author ZedQ
     * @date 2022/5/20 22:43
     * @return java.lang.String
     * @Description: 前往添加页面
    */
    @GetMapping(value = "/toAddEmployee")
    public String toSave(Model model){
        Employee employee = new Employee();
        model.addAttribute("emp",employee);
        return "addEmployee";
    }

    /*
     * @author ZedQ
     * @date 2022/5/20 23:03
     * @return java.lang.String
     * @Description:  前往修改页面
    */
    @GetMapping(value = "toUpdateEmployee")
    public String toUpdateEmployee(Model model,Integer id){
        System.out.println(id);
        RespBean respBean = employeeService.findById(id);
        if(respBean.getCode()==500){
            model.addAttribute("msg",respBean.getMessage());
            return "allEmployee";
        }
        Employee employee = (Employee) respBean.getObj();
        model.addAttribute("emp",employee);
        return "updateEmployee";
    }





    /*
     * @author ZedQ
     * @date 2022/5/20 23:07
     * @param id
     * @return java.lang.String
     * @Description: 删除用户 修改状态为0
    */
    @RequestMapping (value = "/delete/{id}")
    public String deleteEmployee(@PathVariable(value = "id")  Integer id){
        employeeService.delteById(id);
        return "redirect:/employee/allEmployee";
    }

    @PostMapping(value = "/update")
    public String updateEmployee(Model model,Employee employee){
        System.out.println(employee);
        employeeService.update(employee);
        return "redirect:/employee/allEmployee";
    }

    /*
     * @author ZedQ
     * @date 2022/5/20 22:43
     * @param model
     * @param employee
     * @return java.lang.String
     * @Description: 提交数据到数据库
    */
    @RequestMapping(value = "/add",method = RequestMethod.POST)
    public String save(Employee employee){
        System.out.println(employee);
        String str = String.valueOf(employee.getHire_date());

        employeeService.save(employee);
        return "redirect:/employee/allEmployee";
    }

    /*
     * @author ZedQ
     * @date 2022/5/20 22:50
     * @param model
     * @return java.lang.String
     * @Description: 显示所有数据
    */
    @GetMapping(value = "allEmployee")
    public String allEmployee(Model model){
        RespBean respBean = employeeService.findAll();
        if(respBean.getCode()==500){
            model.addAttribute("msg",respBean.getMessage());
            return "allEmployee";
        }

        List<Employee> list = (List<Employee>) respBean.getObj();
        System.out.println(list);
        model.addAttribute("list",list);
        return "allEmployee";
    }


    /*
     * @author ZedQ
     * @date 2022/5/21 19:01
     * @param model
     * @param id
     * @return java.lang.String
     * @Description: 根据用户id查询
    */
    @GetMapping(value = "findByIdEmployee")
    public String findByIdEmployee(Model model,Integer id){
        RespBean respBean = employeeService.findById(id);
        if(respBean.getCode()==500){
            model.addAttribute("msg",respBean.getMessage());
            return "allEmployee";
        }

        List<Employee> list = new ArrayList<>();
        list.add((Employee) respBean.getObj());
        model.addAttribute("list",list);
        return "allEmployee";
    }






}
