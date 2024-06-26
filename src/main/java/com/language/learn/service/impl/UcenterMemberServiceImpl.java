package com.language.learn.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.toolkit.StringUtils;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.language.learn.MyException;
import com.language.learn.dao.Member;
import com.language.learn.dao.UcenterMember;
import com.language.learn.domain.RegisterVo;
import com.language.learn.mapper.UcenterMemberMapper;
import com.language.learn.service.UcenterMemberService;
import com.language.learn.utils.JwtUtils;
import com.language.learn.utils.MD5;
import org.springframework.beans.BeanUtils;
import org.springframework.stereotype.Service;

@Service
public class UcenterMemberServiceImpl extends ServiceImpl<UcenterMemberMapper, UcenterMember> implements UcenterMemberService {

    @Override
    public UcenterMember selectByUsername(String nickname) {
        return baseMapper.selectOne(new QueryWrapper<UcenterMember>().eq("nickname", nickname));
    }

    public String login(UcenterMember ucenterMember) {
        String username = ucenterMember.getNickname();
        String password = ucenterMember.getPassword();
        if (!StringUtils.isBlank(username) && !StringUtils.isBlank(password)) {
            LambdaQueryWrapper<UcenterMember> lambdaQueryWrapper = new LambdaQueryWrapper<>();
            lambdaQueryWrapper.eq(UcenterMember::getNickname, username);
            UcenterMember member = baseMapper.selectOne(lambdaQueryWrapper);
            if (member == null) {
                throw new MyException(20001, " 用户名输入有误或未注册，请重新输入！");
            } else if (!password.equals(member.getPassword())) {
                throw new MyException(20001, " 密码有误，请重新输入！");
            } else {
                String token = JwtUtils.getJwtToken(member.getId(), member.getNickname());
                return token;
            }
        } else {
            throw new MyException(20001, " 用户名密码不能为空！");
        }
    }

    public void registerUser(RegisterVo registerVo) {
        String nickname = registerVo.getNickname();
        String password = registerVo.getPassword();
        if (!StringUtils.isBlank(nickname) && !StringUtils.isBlank(password)) {
            LambdaQueryWrapper<UcenterMember> lambdaQueryWrapper = new LambdaQueryWrapper<>();
            lambdaQueryWrapper.eq(UcenterMember::getNickname, nickname);
            Long count = baseMapper.selectCount(lambdaQueryWrapper);
            if (count > 0L) {
                throw new MyException(20001, " 该用户名已注册！");
            } else {
                UcenterMember ucenterMember = new UcenterMember();
                ucenterMember.setNickname(nickname);
                ucenterMember.setPassword(MD5.encrypt(password));
                ucenterMember.setIsDisabled(0);
                ucenterMember.setAvatar("fuzhou.aliyuncs.com/2023/03/14e63cd250e4044a36b5a47ba6a1a64f5afile.png");
                baseMapper.insert(ucenterMember);
            }
        } else {
            throw new MyException(20001, " 输入的值不能为空！");
        }
    }

    @Override
    public Member getUserInfoById(String id) {
        UcenterMember ucenterMember = baseMapper.selectById(id);
        Member member = new Member();
        BeanUtils.copyProperties(ucenterMember, member);
        return member;
    }

    @Override
    public Integer countRegister(String day) {
        Integer count = baseMapper.countRegister(day);
        return count;
    }
}
