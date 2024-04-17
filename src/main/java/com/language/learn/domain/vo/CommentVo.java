package com.language.learn.domain.vo;

import com.baomidou.mybatisplus.annotation.FieldFill;
import com.baomidou.mybatisplus.annotation.TableField;
import lombok.Data;

import java.util.Date;

/**
 * @Project: online_education
 * @Package: com.language.learn.domain.vo
 * @Description:
 */
@Data
public class CommentVo {

    private String id;

    private String courseTitle;

    private String nickname;

    private String content;

    @TableField(fill = FieldFill.INSERT)
    private Date gmtCreate;

}
