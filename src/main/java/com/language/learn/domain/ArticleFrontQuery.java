package com.language.learn.domain;

import lombok.Data;

/**
 * @Project: online_education
 * @Package: com.language.learn.domain.vo
 * @Description:
 */
@Data
public class ArticleFrontQuery {
    //标题
    private String title;
    //所属分类名称
    private String categoryName;
}
