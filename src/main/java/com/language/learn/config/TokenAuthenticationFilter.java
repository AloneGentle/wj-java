package com.language.learn.config;

import com.language.learn.utils.JwtUtils;
import com.language.learn.utils.ResponseUtil;
import com.language.learn.utils.Result;
import jakarta.servlet.FilterChain;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.www.BasicAuthenticationFilter;
import org.springframework.util.StringUtils;

import java.util.Arrays;
import java.util.Collections;

/**
 * 访问过滤器
 */
public class TokenAuthenticationFilter extends BasicAuthenticationFilter {
    public TokenAuthenticationFilter(AuthenticationManager authManager) {
        super(authManager);
    }

    @Override
    protected void doFilterInternal(HttpServletRequest req, HttpServletResponse res, FilterChain chain) {
        logger.info("doFilterInternal: " + req.getRequestURI());
        try {
            String token = req.getHeader("token");
            if (!StringUtils.hasText(token)) {
                var tokenPair = Arrays.stream(req.getCookies()).filter(c -> c.getName().equals("token")).findFirst();
                if (tokenPair.isPresent()) {
                    token = tokenPair.get().getValue();
                }
            }
            var authentication = getAuthentication(token);
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
        return new UsernamePasswordAuthenticationToken(userName, token, Collections.emptyList());
    }
}