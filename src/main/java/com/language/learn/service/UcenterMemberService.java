package com.language.learn.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.language.learn.dao.Member;
import com.language.learn.dao.UcenterMember;
import com.language.learn.pojo.RegisterVo;

public interface UcenterMemberService extends IService<UcenterMember> {
    String login(UcenterMember ucenterMember);

    void registerUser(RegisterVo registerVo);

    Member getUserInfoById(String id);

    //统计某天注册人数
    Integer countRegister(String day);
}
