package com.qx.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.sql.Date;
import java.sql.Timestamp;

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
    private Timestamp create_date;
    private Timestamp update_date;


}
