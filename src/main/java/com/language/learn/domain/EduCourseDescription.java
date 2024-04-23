package com.language.learn.domain;

import com.baomidou.mybatisplus.annotation.FieldFill;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

import java.io.Serializable;
import java.util.Date;

/**
 * 课程简介
 *
 * @TableName edu_course_description
 */
@TableName(value = "edu_course_description")
@Data
public class EduCourseDescription implements Serializable {
    /**
     * 课程ID
     */
    @TableId
    private String id;
    /**
     * 课程简介
     */
    private String description;
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