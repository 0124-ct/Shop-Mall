package com.tmy.dal.Mapper;

import com.tmy.dal.BaseDao;
import com.tmy.dal.UserMapper;
import com.tmy.entity.UserInfo;

/**
 * user:tmy
 */
public class UserMapperImpl extends BaseDao implements UserMapper {

    /**
     * 注册
     * @param userInfo
     * @return
     */
    @Override
    public boolean register(UserInfo userInfo) {
        if (userInfo != null) {
            String sql = "insert into users(username,password,email,gender,hobby) values(?,?,?,?,?)";
            Object[] params = {userInfo.getUsername(), userInfo.getPassword(), userInfo.getEmail(), userInfo.getGender(), userInfo.getHobby()};
            return  update(sql, params) > 0;
        }
        return false;
    }

    /**
     * 登录
     * @param userInfo
     * @return
     */
    @Override
    public UserInfo login(UserInfo userInfo) {
        if (userInfo != null) {
            String sql = "select * from users where username = ? and password = ?";
            Object[] params = {userInfo.getUsername(), userInfo.getPassword()};
            return queryByOne(UserInfo.class, sql, params);
        }
        return null;
    }
}
