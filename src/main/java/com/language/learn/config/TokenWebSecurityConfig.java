package com.language.learn.config;

import com.language.learn.service.UcenterMemberService;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.ProviderManager;
import org.springframework.security.authentication.dao.DaoAuthenticationProvider;
import org.springframework.security.config.Customizer;
import org.springframework.security.config.annotation.method.configuration.EnableMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configurers.AbstractHttpConfigurer;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.web.SecurityFilterChain;

/**
 * Security配置类
 */
@Configuration
@EnableWebSecurity
@EnableMethodSecurity
public class TokenWebSecurityConfig {

    @Bean
    protected SecurityFilterChain securityFilterChain(HttpSecurity http, RedisTemplate<String, Object> redisTemplate,
                                                      UcenterMemberService ucenterMemberService,
                                                      AuthenticationManager authenticationManager) throws Exception {
        http.exceptionHandling(t -> t.authenticationEntryPoint(new UnauthorizedEntryPoint()))
                .csrf(AbstractHttpConfigurer::disable)
                .securityMatcher("/eduservice/**")
                .authorizeHttpRequests(r -> r.anyRequest().authenticated())
                .logout(l -> l.logoutUrl("/admin/acl/index/logout").addLogoutHandler(new TokenLogoutHandler(redisTemplate)))
                .addFilter(new TokenLoginFilter(redisTemplate, authenticationManager, ucenterMemberService))
                .addFilter(new TokenAuthenticationFilter(authenticationManager, redisTemplate))
                .httpBasic(Customizer.withDefaults());
        return http.build();
    }

    /**
     * 密码处理
     */
    @Bean
    public AuthenticationManager authenticationManager(UserDetailsService userDetailsService,
                                                       DefaultPasswordEncoder passwordEncoder) {
        DaoAuthenticationProvider authenticationProvider = new DaoAuthenticationProvider();
        authenticationProvider.setUserDetailsService(userDetailsService);
        authenticationProvider.setPasswordEncoder(passwordEncoder);

        return new ProviderManager(authenticationProvider);
    }
}