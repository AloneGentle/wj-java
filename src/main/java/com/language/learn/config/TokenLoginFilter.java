package com.language.learn.config;

import com.language.learn.dao.UcenterMember;
import com.language.learn.domain.SecurityUser;
import com.language.learn.service.UcenterMemberService;
import com.language.learn.utils.ResponseUtil;
import com.language.learn.utils.Result;
import jakarta.servlet.FilterChain;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.web.authentication.UsernamePasswordAuthenticationFilter;
import org.springframework.security.web.util.matcher.AntPathRequestMatcher;

/**
 * 登录过滤器，继承UsernamePasswordAuthenticationFilter，对用户名密码进行登录校验
 */
public class TokenLoginFilter extends UsernamePasswordAuthenticationFilter {
    private final RedisTemplate<String, Object> redisTemplate;
    private final UcenterMemberService ucenterMemberService;

    public TokenLoginFilter(RedisTemplate<String, Object> redisTemplate,
                            AuthenticationManager authenticationManager, UcenterMemberService ucenterMemberService) {
        super(authenticationManager);
        this.redisTemplate = redisTemplate;
        this.ucenterMemberService = ucenterMemberService;
        this.setRequiresAuthenticationRequestMatcher(new AntPathRequestMatcher("/eduservice/member/login", "POST"));
    }

    /**
     * 登录成功
     */
    @Override
    protected void successfulAuthentication(HttpServletRequest req, HttpServletResponse res, FilterChain chain, Authentication auth) {
        SecurityUser user = (SecurityUser) auth.getPrincipal();
        var m = new UcenterMember();
        m.setPassword(user.getPassword());
        m.setMobile(user.getUsername());
        String token = ucenterMemberService.login(m);
        ResponseUtil.out(res, Result.success().data("token", token));
    }

    /**
     * 登录失败
     */
    @Override
    protected void unsuccessfulAuthentication(HttpServletRequest req, HttpServletResponse response, AuthenticationException e) {
        ResponseUtil.out(response, Result.error().message("登录失败"));
    }
}
