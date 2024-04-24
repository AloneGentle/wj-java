package com.language.learn.controller;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.language.learn.domain.Article;
import com.language.learn.domain.ArticleQuery;
import com.language.learn.service.ArticleService;
import com.language.learn.utils.Result;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.Map;

@RestController
@RequestMapping("/eduservice/article")
public class ArticleController {
    @Autowired
    private ArticleService articleService;

    //分页查询后台文章列表
    @PostMapping("pageArticle/{page}/{limit}")
    public Result pageArticle(@PathVariable long page, @PathVariable long limit,
                              @RequestBody(required = false) ArticleQuery articleQuery) {
        Page<Article> pageArticle = new Page<>(page, limit);
        Map<String, Object> articleList = articleService.pageArticle(pageArticle, articleQuery);
        return Result.success().data(articleList);
    }

    //根据文章ID获取文章信息
    @GetMapping("findArticleById/{aid}")
    public Result findArticleById(@PathVariable String aid) {
        Article article = articleService.getById(aid);
        return Result.success().data("article", article);
    }

}
