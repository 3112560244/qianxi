package com.qx.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Dept {

    private Integer id;
    private String name;
    private Integer status;
    private Date create_date;
    private Date update_data;



}
