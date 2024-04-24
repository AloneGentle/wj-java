package com.language.learn.controller;

import com.language.learn.dao.Member;
import com.language.learn.dao.UcenterMember;
import com.language.learn.service.UcenterMemberService;
import com.language.learn.utils.JwtUtils;
import com.language.learn.utils.Result;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/eduservice/member")
public class UcenterMemberController {
    @Autowired
    private UcenterMemberService ucenterMemberService;


    @GetMapping({"findUserInfo"})
    public Result findUserInfo(@RequestHeader String token) {
        String memberId = JwtUtils.getMemberIdByJwtToken(token);
        UcenterMember member = ucenterMemberService.getById(memberId);
        return Result.success().data("userInfo", member);
    }

    //根据用户ID获取用户信息
    @GetMapping("getInfoById/{id}")
    public Member getInfoById(@PathVariable String id) {
        return ucenterMemberService.getUserInfoById(id);
    }

    //统计某天注册人数
    @GetMapping("countRegister/{day}")
    public Integer countRegister(@PathVariable String day) {
        Integer count = ucenterMemberService.countRegister(day);
        return count;
    }
}
