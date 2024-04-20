package com.tmy.listener;

import com.tmy.dal.Mapper.ProductMapperImpl;
import com.tmy.dal.ProductMapper;
import com.tmy.entity.ProductInfo;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import java.util.List;

public class IndexListener implements ServletContextListener {
    //监听器，在项目启动时，把商品信息存到ServletContext中
    @Override
    public void contextInitialized(ServletContextEvent servletContextEvent) {
        ProductMapper productMapper = new ProductMapperImpl();
        //使用ProductService中的selectAll方法，把product数据库中的所有数据存到ProductInfo中
        List<ProductInfo> productInfoList = productMapper.selectAll();
        servletContextEvent.getServletContext().setAttribute("productInfoList", productInfoList);
    }

    public void contextDestroyed(javax.servlet.ServletContextEvent servletContextEvent) {
    }


}
