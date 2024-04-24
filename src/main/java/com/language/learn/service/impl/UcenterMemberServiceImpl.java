package com.language.learn.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.toolkit.StringUtils;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.language.learn.utils.JwtUtils;
import com.language.learn.utils.MD5;
import com.language.learn.dao.Member;
import com.language.learn.dao.UcenterMember;
import com.language.learn.domain.RegisterVo;
import com.language.learn.MyException;
import com.language.learn.mapper.UcenterMemberMapper;
import com.language.learn.service.UcenterMemberService;
import org.springframework.beans.BeanUtils;
import org.springframework.stereotype.Service;

@Service
public class UcenterMemberServiceImpl extends ServiceImpl<UcenterMemberMapper, UcenterMember> implements UcenterMemberService {

    public String login(UcenterMember ucenterMember) {
        String mobile = ucenterMember.getMobile();
        String password = ucenterMember.getPassword();
        if (!StringUtils.isBlank(mobile) && !StringUtils.isBlank(password)) {
            LambdaQueryWrapper<UcenterMember> lambdaQueryWrapper = new LambdaQueryWrapper<>();
            lambdaQueryWrapper.eq(UcenterMember::getMobile, mobile);
            UcenterMember member = baseMapper.selectOne(lambdaQueryWrapper);
            if (member == null) {
                throw new MyException(20001, " 该手机号码输入有误或未注册，请重新输入！");
            } else if (!password.equals(member.getPassword())) {
                throw new MyException(20001, " 密码有误，请重新输入！");
            } else {
                String token = JwtUtils.getJwtToken(member.getId(), member.getNickname());
                return token;
            }
        } else {
            throw new MyException(20001, " 手机号码密码不能为空！");
        }
    }

    public void registerUser(RegisterVo registerVo) {
        String code = registerVo.getCode();
        String nickname = registerVo.getNickname();
        String mobile = registerVo.getMobile();
        String password = registerVo.getPassword();
        if (!StringUtils.isBlank(code) && !StringUtils.isBlank(nickname) && !StringUtils.isBlank(mobile) && !StringUtils.isBlank(password)) {
            LambdaQueryWrapper<UcenterMember> lambdaQueryWrapper = new LambdaQueryWrapper<>();
            lambdaQueryWrapper.eq(UcenterMember::getMobile, mobile);
            Long count = baseMapper.selectCount(lambdaQueryWrapper);
            if (count > 0L) {
                throw new MyException(20001, " 该手机号码已注册！");
            } else {
                UcenterMember ucenterMember = new UcenterMember();
                ucenterMember.setMobile(mobile);
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
