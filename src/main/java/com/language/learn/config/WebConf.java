package com.language.learn.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.CorsRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
public class WebConf implements WebMvcConfigurer {
    @Override
    public void addCorsMappings(CorsRegistry registry) {
        registry.addMapping("/**")
                .allowedOriginPatterns("*")
                .allowedHeaders("*")
                .allowedMethods("*")
                // allowCredentials(true): 表示附带身份凭证
                // 一旦使用 allowCredentials(true) 方法，则 allowedOrigins("*") 需要指明特定的域，而不能是 *
                .allowCredentials(true)
                .maxAge(86400);
    }
}
