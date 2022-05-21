package com.qx.service.Impl;

import com.qx.dao.DeptMapper;
import com.qx.pojo.Dept;
import com.qx.service.DeptService;

import java.util.List;

/**
 * @Author: ZedQ
 * @Date: 2022/5/19 21:55
 * @Description:
 */
public class DeptServiceImpl implements DeptService {

    private DeptMapper deptMapper;
    public void setDeptMapper(DeptMapper deptMapper) {
        this.deptMapper =  deptMapper;
    }

    @Override
    public List<Dept> findAllDept() {
        return deptMapper.findAll();
    }
}
