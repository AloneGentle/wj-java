package com.language.learn.security;

import com.language.learn.commonutils.JwtUtils;
import com.language.learn.commonutils.ResponseUtil;
import com.language.learn.commonutils.Result;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.security.core.Authentication;
import org.springframework.security.web.authentication.logout.LogoutHandler;

/**
 * 登出业务逻辑类
 */
public class TokenLogoutHandler implements LogoutHandler {
    private final RedisTemplate<String, Object> redisTemplate;

    public TokenLogoutHandler(RedisTemplate<String, Object> redisTemplate) {
        this.redisTemplate = redisTemplate;
    }

    @Override
    public void logout(HttpServletRequest request, HttpServletResponse response, Authentication authentication) {
        String token = request.getHeader("token");
        if (token != null) {
            //清空当前用户缓存中的权限数据
            String userName = JwtUtils.getUserFromToken(token);
            redisTemplate.delete(userName);
        }
        ResponseUtil.out(response, Result.success());
    }

}