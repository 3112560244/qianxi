package com.qx.proxy;

import com.qx.aspect.BookAspect;

import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;

/**
 * @author 31125
 */
public class JDKDyamicProxy implements InvocationHandler {


    private Object target;


    public Object createProxy(Object target){
        this.target = target;

        ClassLoader classLoader = JDKDyamicProxy.class.getClassLoader();

        Class[] interfaces = this.target.getClass().getInterfaces();

        return Proxy.newProxyInstance(classLoader,interfaces,this);
    }

    @Override
    public Object invoke(Object proxy, Method method, Object[] args) throws Throwable {
        Object obj = null;

        BookAspect myAspect = new BookAspect();

        myAspect.check();

        String methodname = method.getName();
        if(methodname.startsWith("query")){
            obj = method.invoke(this.target,args);
        }else {

            try {
                myAspect.startTransaction();
                obj = method.invoke(this.target,args);
                myAspect.commitTransaction();
            }catch (Exception t){
                myAspect.roolbackTransaction();
            }
        }

        myAspect.log();

        return obj;
    }
}
