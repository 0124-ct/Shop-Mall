package com.tmy.controller;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.lang.reflect.Method;

public class BaseServlet extends javax.servlet.http.HttpServlet{
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        getMethod(req, resp);
    }


    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //中文乱码 获取参数前加上
        req.setCharacterEncoding("UTF-8");
        //响应乱码
        resp.setCharacterEncoding("UTF-8");
        //获取请求参数
        getMethod(req, resp);
    }

    private void getMethod(HttpServletRequest req, HttpServletResponse resp) {
        //获取请求参数
        String action = req.getParameter("action");
        //获取action字符串 响应业务 方法反射对象
        try {
            //当前类的方法
            Method method = this.getClass().getDeclaredMethod(action,HttpServletRequest.class,HttpServletResponse.class);
            //调用目标业务
            method.invoke(this, req, resp);
        }catch (Exception e){
            throw new RuntimeException(e);
        }
    }
}
