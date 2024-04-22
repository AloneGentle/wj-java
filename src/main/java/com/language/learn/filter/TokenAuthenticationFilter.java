package com.language.learn.filter;

import com.language.learn.commonutils.JwtUtils;
import com.language.learn.commonutils.ResponseUtil;
import com.language.learn.commonutils.Result;
import jakarta.servlet.FilterChain;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.www.BasicAuthenticationFilter;
import org.springframework.util.StringUtils;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

/**
 * 访问过滤器
 */
public class TokenAuthenticationFilter extends BasicAuthenticationFilter {
    private final RedisTemplate<String, Object> redisTemplate;

    public TokenAuthenticationFilter(AuthenticationManager authManager, RedisTemplate<String, Object> redisTemplate) {
        super(authManager);
        this.redisTemplate = redisTemplate;
    }

    @Override
    protected void doFilterInternal(HttpServletRequest req, HttpServletResponse res, FilterChain chain)
            throws IOException, ServletException {
        logger.info("doFilterInternal: " + req.getRequestURI());
//        if (!req.getRequestURI().contains("admin")) {
//            chain.doFilter(req, res);
//            return;
//        }
        try {
            var authentication = getAuthentication(req.getHeader("token"));
            SecurityContextHolder.getContext().setAuthentication(authentication);
            chain.doFilter(req, res);
        } catch (Exception e) {
            logger.warn(e);
            ResponseUtil.out(res, Result.error());
        }
    }

    private UsernamePasswordAuthenticationToken getAuthentication(String token) {
        if (!StringUtils.hasText(token)) {
            throw new IllegalArgumentException("token mempty");
        }
        String userName = JwtUtils.getUserFromToken(token);

        List<String> permissionValueList = (List<String>) redisTemplate.opsForValue().get(userName);
        Collection<GrantedAuthority> authorities = new ArrayList<>();
        for (String permissionValue : permissionValueList) {
            if (!StringUtils.hasLength(permissionValue))
                continue;
            authorities.add(new SimpleGrantedAuthority(permissionValue));
        }
        return new UsernamePasswordAuthenticationToken(userName, token, authorities);
    }
}