package com.language.learn.service.impl;

import com.language.learn.dao.UcenterMember;
import com.language.learn.domain.SecurityUser;
import com.language.learn.service.UcenterMemberService;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

/**
 * 自定义userDetailsService - 认证用户详情
 */
@Service
public class UserDetailsServiceImpl implements UserDetailsService {

    @Autowired
    private UcenterMemberService memberService;

    /***
     * 根据账号获取用户信息
     */
    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        // 从数据库中取出用户信息
        UcenterMember user = memberService.selectByUsername(username);

        // 判断用户是否存在
        if (null == user) {
            throw new UsernameNotFoundException("用户名不存在！");
        }
        // 返回UserDetails实现类
        UcenterMember curUser = new UcenterMember();
        BeanUtils.copyProperties(user, curUser);

        return new SecurityUser(curUser);
    }
}
