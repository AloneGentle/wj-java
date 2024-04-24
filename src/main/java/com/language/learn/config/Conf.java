package com.language.learn.config;

import com.baomidou.mybatisplus.annotation.DbType;
import com.baomidou.mybatisplus.extension.plugins.MybatisPlusInterceptor;
import com.baomidou.mybatisplus.extension.plugins.inner.PaginationInnerInterceptor;
import com.fasterxml.jackson.core.json.JsonReadFeature;
import com.fasterxml.jackson.databind.DeserializationFeature;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.json.JsonMapper;
import com.language.learn.client.OrderClient;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.reactive.function.client.WebClient;
import org.springframework.web.reactive.function.client.support.WebClientAdapter;
import org.springframework.web.service.invoker.HttpServiceProxyFactory;

import java.text.DateFormat;
import java.util.TimeZone;

/**
 *
 */
@Configuration
public class Conf {
    @Value("${server.port}")
    private Integer port;

    @Bean
    public ObjectMapper objectMapper() {
        return JsonMapper.builder()
                .defaultTimeZone(TimeZone.getTimeZone("GMT+8"))
                .defaultDateFormat(DateFormat.getDateInstance())
                .enable(JsonReadFeature.ALLOW_NON_NUMERIC_NUMBERS)
                .disable(DeserializationFeature.FAIL_ON_UNKNOWN_PROPERTIES)
                .build();
    }

    @Bean
    public HttpServiceProxyFactory getHttpFactory() {
        return HttpServiceProxyFactory.builderFor(WebClientAdapter.create(
                WebClient.builder().baseUrl("http://localhost:" + port).build())).build();
    }

    @Bean
    public OrderClient orderClient(HttpServiceProxyFactory factory) {
        return factory.createClient(OrderClient.class);
    }

    /*
     * 分页插件
     **/
    @Bean
    public MybatisPlusInterceptor mybatisPlusInterceptor() {
        MybatisPlusInterceptor interceptor = new MybatisPlusInterceptor();
        interceptor.addInnerInterceptor(new PaginationInnerInterceptor(DbType.MYSQL));
        return interceptor;
    }
}
