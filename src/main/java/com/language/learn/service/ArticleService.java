package com.language.learn.service;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.IService;
import com.language.learn.domain.Article;
import com.language.learn.domain.ArticleFrontQuery;
import com.language.learn.domain.ArticleQuery;

import java.util.Map;

/**
 * @Project: online_education
 * @Package: com.language.learn.service
 * @Description:
 */
public interface ArticleService extends IService<Article> {
    //前台分页查询文章
    Map<String, Object> pageArticleFront(Page<Article> pageArticle, ArticleFrontQuery articleQuery);

    //后台分页查询文章
    Map<String, Object> pageArticle(Page<Article> pageArticle, ArticleQuery articleQuery);
}
