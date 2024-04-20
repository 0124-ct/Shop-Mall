package com.tmy.service.impl;

import com.tmy.dal.Mapper.UserMapperImpl;
import com.tmy.dal.UserMapper;
import com.tmy.entity.UserInfo;
import com.tmy.service.UserService;

/**
 * user:tmy
 */

public class UserServiceImpl implements UserService {

    UserMapper userMapper = new UserMapperImpl();

    /**
     * 注册
     * @param userInfo
     * @return
     */
    @Override
    public boolean register(UserInfo userInfo) {
        try {
            boolean register = userMapper.register(userInfo);
            return register;
        }catch (Exception e){
            return false;
        }

    }

    /**
     * 登录
     * @param userInfo
     * @return
     */
    @Override
    public UserInfo login(UserInfo userInfo) {
        try {
            UserInfo userInfo1 = userMapper.login(userInfo);
            if (userInfo1 != null){
                return userInfo1;
            }else {
                return null;
            }
        }catch (Exception e){
            return null;
        }
    }

}
