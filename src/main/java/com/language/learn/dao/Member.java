package com.language.learn.dao;

import com.baomidou.mybatisplus.annotation.FieldFill;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

import java.io.Serializable;
import java.util.Date;

/**
 * 会员表
 */
@TableName(value = "ucenter_member")
@Data
public class Member implements Serializable {
    @TableField(exist = false)
    private static final long serialVersionUID = 1L;
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
    private Integer isDeleted;
    /**
     * 创建时间
     */
    @TableField(fill = FieldFill.INSERT)
    private Date gmtCreate;
    /**
     * 更新时间
     */
    @TableField(fill = FieldFill.INSERT_UPDATE)
    private Date gmtModified;
}