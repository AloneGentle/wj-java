package com.language.learn.domain;

import com.baomidou.mybatisplus.annotation.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;
import java.util.Date;

/**
 *
 */
@TableName(value = "sg_article")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Article implements Serializable {

    @TableId
    private String id;
    //标题
    private String title;
    //文章内容
    private String content;
    //文章摘要
    private String summary;
    //所属分类名称
    private String categoryName;
    //缩略图
    private String thumbnail;
    //是否置顶（0否，1是）
    private String isTop;
    //状态（0已发布，1草稿）
    private String status;
    //访问量
    private Long viewCount;
    //是否允许评论 1是，0否
    private String isComment;
    //    @TableField(fill= FieldFill.INSERT)
    private Long createBy;
    @TableField(fill = FieldFill.INSERT)
    private Date gmtCreate;
    //    @TableField(fill = FieldFill.INSERT_UPDATE)
    private Long updateBy;
    @TableField(fill = FieldFill.INSERT_UPDATE)
    private Date gmtModified;
    //删除标志（0代表未删除，1代表已删除）
    @TableLogic
    private Integer delFlag;

    public Article(String id, Long viewCount) {
        this.id = id;
        this.viewCount = viewCount;
    }
}
