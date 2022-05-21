package com.qx.service;

import com.qx.pojo.Account;
import com.qx.pojo.Employee;
import com.qx.pojo.RespBean;

/**
 * @Author: ZedQ
 * @Date: 2022/5/19 21:54
 * @Description:
 */
public interface EmployeeService {

    /*
     * @author jitwxs
     * @date 2022/5/20 22:27
     * @param employee
     * @Description: 添加用户
     */
    void save(Employee employee);

    /*
     * @author ZedQ
     * @date 2022/5/20 22:28
     * @param employee
     * @Description: 修改用户
     */
    void update(Employee employee);

    /*
     * @author ZedQ
     * @date 2022/5/20 22:28
     * @param id
     * @Description: 删除用户 修改状态为0 不删除记录
     */
    void delteById(Integer id);

    /*
     * @author ZedQ
     * @date 2022/5/20 22:28
     * @param id
     * @return com.qx.pojo.Employee
     * @Description: 根据id查询用户
     */
    RespBean findById(Integer id);

    /*
     * @author ZedQ
     * @date 2022/5/20 22:29
     * @return java.util.List<com.qx.pojo.Employee>
     * @Description: 查找所有用户
     */
    RespBean findAll();

    /*
     * @author ZedQ
     * @date 2022/5/21 21:09
     * @param account
     * @return com.qx.pojo.RespBean
     * @Description: 登录
    */
    RespBean login(Account account);


}
