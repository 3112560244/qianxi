package com.qx.service.Impl;/**
 * @Author: ZedQ
 * @Date: 2022/5/20 22:31
 * @Description:
 */

import com.qx.dao.EmployeeMapper;
import com.qx.pojo.Employee;
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
    public Employee findById(Integer id) {
        return employeeMapper.findById(id);
    }

    /*
     * @author ZedQ
     * @date 2022/5/20 22:29
     * @return java.util.List<com.qx.pojo.Employee>
     * @Description: 查找所有用户
     */
    @Override
    public List<Employee> findAll() {
        return employeeMapper.findAll();
    }


}
