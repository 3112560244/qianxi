package com.qx.dao;

import com.qx.pojo.Dept;

import java.util.List;

public interface DeptMapper {


    void save(Dept dept);

    void update(Dept dept);

//    void delteById(Integer id);

    Dept findById(Integer id);

    List<Dept> findAll();


//    public void save(Employee user);
//
//    public Employee findById(int id);
//
//    public List<Employee> findByName(String name);
//
//    public List<Employee> findByNameAndGender(@PathVariable (value = "name") String name, @PathVariable (value = "gender") String gender);
//
//    public List<Employee> findAll();
//
//    public void update(Employee user);
//
//    public void delteById(int id);

}
