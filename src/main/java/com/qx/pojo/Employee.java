package com.qx.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.sql.Date;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Employee {

    private Integer id;
    private String name;
    private Integer gender;
    private Date hire_date;
    private Integer salary;
    private Integer dept_id;
    private Integer status;
    private Date create_date;
    private Date update_date;


}
