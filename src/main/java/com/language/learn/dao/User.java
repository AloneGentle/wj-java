package com.language.learn.dao;

import com.baomidou.mybatisplus.annotation.*;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.experimental.Accessors;

import java.io.Serializable;
import java.util.Date;

/**
 * <p>
 * 用户表
 * </p>
 */
@Data
@EqualsAndHashCode(callSuper = false)
@Accessors(chain = true)
@TableName("acl_user")
public class User implements Serializable {

    @TableId(value = "id")
    private String id;

    private String username;

    private String password;

    private String nickName;

    private String salt;

    private String token;

    @TableLogic
    private Integer isDeleted;

    @TableField(fill = FieldFill.INSERT)

    private Date gmtCreate;

    @TableField(fill = FieldFill.INSERT_UPDATE)

    private Date gmtModified;

}
