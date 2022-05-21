package com.qx.aspect;

public class BookAspect {
    public void startTransaction(){
        System.out.println("--开始事务--");
    }

    public void commitTransaction(){
        System.out.println("--提交事务--");
    }

    public void roolbackTransaction(){
        System.out.println("--回滚事务--");
    }

    public void check(){
        System.out.println("--权限效验--");
    }

    public void log(){
        System.out.println("--日志--");
    }
}
