package com.language.learn.dao;

import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableLogic;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

import java.util.Date;

/**
 * 会员表
 */
@TableName(value = "ucenter_member")
@Data
public class UcenterMember {
    /**
     * 会员id
     */
    @TableId
    private String id;
    /**
     * 手机号
     */
    private String mobile;
    /**
     * 密码
     */
    private String password;
    /**
     * 昵称
     */
    private String nickname;
    /**
     * 性别 1 女，2 男
     */
    private Integer sex;
    /**
     * 年龄
     */
    private Integer age;
    /**
     * 用户头像
     */
    private String avatar;
    /**
     * 用户签名
     */
    private String sign;
    /**
     * 是否禁用 1（true）已禁用，  0（false）未禁用
     */
    private Integer isDisabled;
    /**
     * 逻辑删除 1（true）已删除， 0（false）未删除
     */
    @TableLogic
    private Integer isDeleted;

    private Date gmtCreate;
    private Date gmtModified;
}