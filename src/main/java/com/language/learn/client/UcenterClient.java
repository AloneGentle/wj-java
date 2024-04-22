package com.language.learn.client;

import com.language.learn.dao.Member;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.service.annotation.GetExchange;
import org.springframework.web.service.annotation.HttpExchange;

@HttpExchange(url = "/educenter/member/", accept = MediaType.APPLICATION_JSON_VALUE)
public interface UcenterClient {
    //根据用户ID获取用户信息
    @GetExchange("/getInfoById/{id}")
    Member getInfoById(@PathVariable("id") String id);

    @GetExchange("/countRegister/{day}")
    Integer countRegister(@PathVariable("day") String day);
}
