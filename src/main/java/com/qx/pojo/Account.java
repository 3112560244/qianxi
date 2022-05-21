package com.qx.pojo;/**
 * @Author: ZedQ
 * @Date: 2022/5/21 21:02
 * @Description:
 */

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * @author ZedQ
 * @date 2022年05月21日 21:02 
 * @Description:
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Account {

    private String name;
    private String pwd;
}
