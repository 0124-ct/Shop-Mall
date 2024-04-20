package com.tmy.controller;

import com.tmy.entity.BuyInfo;
import com.tmy.entity.ProductInfo;
import com.tmy.entity.ShoppingCartInfo;
import com.tmy.entity.UserInfo;
import com.tmy.service.ProductService;
import com.tmy.service.impl.ProductServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;


/**
 * author: 唐明月
 */
public class ProductController extends BaseServlet{

    ProductService productService = new ProductServiceImpl();

    /**
     * author: 唐明月
     * 展示商品列表
     * @param req  请求
     * @param resp 响应
     * @throws ServletException
     * @throws IOException
     */
    public void showProduct(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String category = req.getParameter("category");
        List<ProductInfo> productInfoList = productService.getProductByCategory(category);
        req.setAttribute("productInfoList",productInfoList);
        req.getRequestDispatcher("/catlist.jsp").forward(req,resp);
    }

    /**
     *  author: tmy
     *  展示商品详情
     * @param req
     * @param resp
     * @throws ServletException
     * @throws IOException
     */
    public void showInfo(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Integer id = Integer.parseInt(req.getParameter("id"));
        ProductInfo productInfo = productService.getProductById(id);
        req.setAttribute("productInfo",productInfo);
        req.getRequestDispatcher("/info.jsp").forward(req,resp);
    }

    /**
     *  author: tmy
     *  展示购物车
     * @param req
     * @param resp
     * @throws ServletException
     * @throws IOException
     */
    public void showCart(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        UserInfo userInfo = (UserInfo) req.getSession().getAttribute("user");
        if(userInfo == null){
            req.getRequestDispatcher("/access_fail.jsp").forward(req,resp);
        }else{
            List<ProductInfo> productInfoList = productService.getCartByuserId(userInfo.getId());
            List<ShoppingCartInfo> shoppingCartInfoList = productService.getCart2ByuserId(userInfo.getId());
            req.setAttribute("shoppingCartInfoList",shoppingCartInfoList);
            req.setAttribute("productInfoList",productInfoList);
           req.getRequestDispatcher("/buy.jsp").forward(req,resp);
       }
}

/**
     *  author: tmy
     *  添加购物车
     * @param req
     * @param resp
     * @throws ServletException
     * @throws IOException
     */
    public void addShoppingCart(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        UserInfo userInfo = (UserInfo) req.getSession().getAttribute("user");
        Integer id = Integer.parseInt(req.getParameter("id"));
        productService.addShoppingCartById(id,userInfo.getId());
        List<ProductInfo> productInfoList = productService.getCartByuserId(userInfo.getId());
        List<ShoppingCartInfo> shoppingCartInfoList = productService.getCart2ByuserId(userInfo.getId());
        req.setAttribute("shoppingCartInfoList",shoppingCartInfoList);
        req.setAttribute("productInfoList",productInfoList);
        req.getRequestDispatcher("/buy.jsp").forward(req,resp);
    }

    /**
     *  author: tmy
     *  购物车删除物品
     * @param req
     * @param resp
     * @throws ServletException
     * @throws IOException
     */
    public void clearCart(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Integer id = Integer.parseInt(req.getParameter("id"));
        Integer userId = Integer.parseInt(req.getParameter("userId"));
        productService.clearCart(id);
        List<ProductInfo> productInfoList = productService.getCartByuserId(userId);
        List<ShoppingCartInfo> shoppingCartInfoList = productService.getCart2ByuserId(userId);
        req.setAttribute("shoppingCartInfoList",shoppingCartInfoList);
        req.setAttribute("productInfoList",productInfoList);
        req.getRequestDispatcher("/buy.jsp").forward(req,resp);
    }

    /**
     *  author: tmy
     *  购物
     * @param req
     * @param resp
     * @throws ServletException
     * @throws IOException
     */
    public void buy(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{
        try {
            UserInfo userInfo = (UserInfo) req.getSession().getAttribute("user");
            List<ShoppingCartInfo> shoppingCartInfoList = productService.getCart2ByuserId(userInfo.getId());
            BuyInfo buyInfo = new BuyInfo();
            buyInfo.setConsignee(req.getParameter("username"));
            buyInfo.setAddress(req.getParameter("address"));
            buyInfo.setPhone(req.getParameter("code")+req.getParameter("telnumber")+req.getParameter("branchnumber"));
            for (ShoppingCartInfo shoppingCartInfo : shoppingCartInfoList){
                BuyInfo buyInfo1 = new BuyInfo();
                buyInfo1.setConsignee(buyInfo.getConsignee());
                buyInfo1.setAddress(buyInfo.getAddress());
                buyInfo1.setPhone(buyInfo.getPhone());
                buyInfo1.setUserId(shoppingCartInfo.getUserId());
                buyInfo1.setProductId(shoppingCartInfo.getProductId());
                productService.buy(shoppingCartInfo,buyInfo1);
            }

            req.getRequestDispatcher("/buy_success.jsp").forward(req,resp);
        }catch (Exception e){
            req.getRequestDispatcher("/buy_fail.jsp").forward(req,resp);
        }
    }

    /**
     *  author: tmy
     *  搜索商品
     * @param req
     * @param resp
     * @throws ServletException
     * @throws IOException
     */
    public void search (HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String keyword = req.getParameter("keyword");
        ProductInfo productInfo = productService.selectByKeyWord(keyword);
        req.setAttribute("productInfo",productInfo);
        req.getRequestDispatcher("/info.jsp").forward(req,resp);
    }
}
