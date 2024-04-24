package com.language.learn.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.language.learn.dao.UcenterMember;
import org.apache.ibatis.annotations.Param;

public interface UcenterMemberMapper extends BaseMapper<UcenterMember> {
    Integer countRegister(@Param("day") String day);
}




