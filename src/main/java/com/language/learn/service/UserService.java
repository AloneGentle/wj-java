package com.language.learn.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.language.learn.dao.User;

/**
 * 用户表 服务类
 */
public interface UserService extends IService<User> {
    // 从数据库中取出用户信息
    User selectByUsername(String username);
}
