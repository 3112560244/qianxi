package com.qx.service.Impl;/**
 * @Author: ZedQ
 * @Date: 2022/5/20 22:31
 * @Description:
 */

import com.qx.dao.EmployeeMapper;
import com.qx.pojo.Account;
import com.qx.pojo.Employee;
import com.qx.pojo.RespBean;
import com.qx.service.EmployeeService;

import java.util.List;

/**
 * @author ZedQ
 * @date 2022年05月20日 22:31 
 * @Description:
 */
public class EmployeeServiceImpl implements EmployeeService {

    private EmployeeMapper employeeMapper;
    public void setEmployeeMapper(EmployeeMapper employeeMapper) {
        this.employeeMapper = employeeMapper;
    }
    /*
     * @author jitwxs
     * @date 2022/5/20 22:27
     * @param employee
     * @Description: 添加用户
     */
    @Override
    public void save(Employee employee) {
        employeeMapper.save(employee);
    }
    /*
     * @author ZedQ
     * @date 2022/5/20 22:28
     * @param employee
     * @Description: 修改用户
     */
    @Override
    public void update(Employee employee) {
        employeeMapper.update(employee);
    }

    /*
     * @author ZedQ
     * @date 2022/5/20 22:28
     * @param id
     * @Description: 删除用户 修改状态为0 不删除记录
     */
    @Override
    public void delteById(Integer id) {
        employeeMapper.delteById(id);
    }

    /*
     * @author ZedQ
     * @date 2022/5/20 22:28
     * @param id
     * @return com.qx.pojo.Employee
     * @Description: 根据id查询用户
     */
    @Override
    public RespBean findById(Integer id) {
        Employee employee = employeeMapper.findById(id);
        if(employee==null){
            return RespBean.error("查询失败");
        }

        return RespBean.success("查询成功",employeeMapper.findById(id));
    }

    /*
     * @author ZedQ
     * @date 2022/5/20 22:29
     * @return java.util.List<com.qx.pojo.Employee>
     * @Description: 查找所有用户
     */
    @Override
    public RespBean findAll() {
        List<Employee> list = employeeMapper.findAll();
        if(list==null||list.size()==0){
            return  RespBean.error("查询失败");
        }

        return RespBean.success("查询成功",list);
    }

    /*
     * @author ZedQ
     * @date 2022/5/21 21:09
     * @param account
     * @return com.qx.pojo.RespBean
     * @Description: 登录
     */
    @Override
    public RespBean login(Account account) {
        Account login = employeeMapper.login(account);
        if(login==null){
            return RespBean.error("登陆失败，账号或密码不正确");
        }

        return RespBean.success("登陆成功",account);

    }


}
