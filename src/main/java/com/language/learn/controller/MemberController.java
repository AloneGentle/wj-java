package com.language.learn.controller;

import com.language.learn.domain.RegisterVo;
import com.language.learn.service.UcenterMemberService;
import com.language.learn.utils.Result;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/member")
public class MemberController {
    @Autowired
    private UcenterMemberService ucenterMemberService;

    @PostMapping("register")
    public Result registerUser(@RequestBody RegisterVo registerVo) {
        ucenterMemberService.registerUser(registerVo);
        return Result.success();
    }
}
