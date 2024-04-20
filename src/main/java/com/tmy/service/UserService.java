package com.tmy.service;

import com.tmy.entity.UserInfo;

/**
 * user:tmy
 */

public interface UserService {

    /**
     * 注册
     * @param userInfo
     * @return
     */
    public boolean register(UserInfo userInfo);

    /**
     * 登录
     * @param userInfo
     * @return
     */
    UserInfo login(UserInfo userInfo);
}
