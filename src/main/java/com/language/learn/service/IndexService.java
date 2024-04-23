package com.language.learn.service;

import java.util.Map;

public interface IndexService {

    /**
     * 根据用户名获取用户登录信息
     */
    Map<String, Object> getUserInfo(String username);
}
