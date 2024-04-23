package com.language.learn.domain;

import com.baomidou.mybatisplus.annotation.FieldFill;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

import java.io.Serializable;
import java.util.Date;

/**
 * 课程
 *
 * @TableName edu_chapter
 */
@TableName(value = "edu_chapter")
@Data
public class EduChapter implements Serializable {
    /**
     * 章节ID
     */
    @TableId
    private String id;
    /**
     * 课程ID
     */
    private String courseId;
    /**
     * 章节名称
     */
    private String title;
    /**
     * 显示排序
     */
    private Object sort;
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