package com.language.learn.config;

import com.language.learn.domain.SecurityUser;
import com.language.learn.service.UcenterMemberService;
import com.language.learn.utils.ResponseUtil;
import com.language.learn.utils.Result;
import jakarta.servlet.FilterChain;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.web.authentication.UsernamePasswordAuthenticationFilter;
import org.springframework.security.web.util.matcher.AntPathRequestMatcher;

/**
 * 登录过滤，对用户名密码进行登录校验
 */
public class TokenLoginFilter extends UsernamePasswordAuthenticationFilter {
    private final UcenterMemberService ucenterMemberService;

    public TokenLoginFilter(AuthenticationManager authenticationManager, UcenterMemberService ucenterMemberService) {
        super(authenticationManager);
        this.ucenterMemberService = ucenterMemberService;
        this.setRequiresAuthenticationRequestMatcher(new AntPathRequestMatcher("/eduservice/member/login", "POST"));
    }

    @Override
    protected void successfulAuthentication(HttpServletRequest req, HttpServletResponse res, FilterChain chain, Authentication auth) {
        SecurityUser user = (SecurityUser) auth.getPrincipal();
        String token = ucenterMemberService.login(user.getCurrentUserInfo());
        ResponseUtil.out(res, Result.success().data("token", token));
    }

    @Override
    protected void unsuccessfulAuthentication(HttpServletRequest req, HttpServletResponse response, AuthenticationException e) {
        ResponseUtil.out(response, Result.error().message("登录失败"));
    }
}
