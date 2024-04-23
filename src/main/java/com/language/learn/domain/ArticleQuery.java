package com.language.learn.domain;

import lombok.Data;

/**
 * @Project: online_education
 * @Package: com.language.learn.domain.vo
 * @Description:
 */
@Data
public class ArticleQuery {
    //标题
    private String title;
    //状态（0已发布，1草稿）
    private String status;
}
