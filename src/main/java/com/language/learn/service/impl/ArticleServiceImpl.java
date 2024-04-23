package com.language.learn.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.toolkit.StringUtils;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.language.learn.domain.Article;
import com.language.learn.domain.ArticleFrontQuery;
import com.language.learn.domain.ArticleQuery;
import com.language.learn.mapper.ArticleMapper;
import com.language.learn.service.ArticleService;
import com.language.learn.service.RedisCache;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 *
 */
@Service
public class ArticleServiceImpl extends ServiceImpl<ArticleMapper, Article> implements ArticleService {

    @Autowired
    private RedisCache redisCache;

    @Override
    public Map<String, Object> pageArticleFront(Page<Article> pageArticle, ArticleFrontQuery articleQuery) {
        //根据分页条件查询
        LambdaQueryWrapper<Article> lambdaQueryWrapper = new LambdaQueryWrapper<>();
        lambdaQueryWrapper.like(StringUtils.isNotBlank(articleQuery.getTitle()), Article::getTitle, articleQuery.getTitle())
                .like(StringUtils.isNotBlank(articleQuery.getCategoryName()), Article::getCategoryName, articleQuery.getCategoryName())
                .orderByAsc(Article::getIsTop).orderByDesc(Article::getGmtCreate);
        ;
        baseMapper.selectPage(pageArticle, lambdaQueryWrapper);
        List<Article> articleList = pageArticle.getRecords();
        for (Article article : articleList) {
            //从redis获得viewCount
            Integer viewCount = redisCache.getCacheMapValue("article:viewCount", article.getId());
            if (viewCount == null) {
                viewCount = 0;
            }
            article.setViewCount(viewCount.longValue());
        }
        //将查询结果封装到map中
        long current = pageArticle.getCurrent();
        long pages = pageArticle.getPages();
        long size = pageArticle.getSize();
        long total = pageArticle.getTotal();
        boolean hasNext = pageArticle.hasNext();
        boolean hasPrevious = pageArticle.hasPrevious();
        Map<String, Object> map = new HashMap<>();
        map.put("records", articleList);
        map.put("current", current);
        map.put("pages", pages);
        map.put("size", size);
        map.put("total", total);
        map.put("hasNext", hasNext);
        map.put("hasPrevious", hasPrevious);
        return map;
    }

    @Override
    public Map<String, Object> pageArticle(Page<Article> pageArticle, ArticleQuery articleQuery) {
        //根据分页条件查询
        LambdaQueryWrapper<Article> lambdaQueryWrapper = new LambdaQueryWrapper<>();
        lambdaQueryWrapper.like(StringUtils.isNotBlank(articleQuery.getTitle()), Article::getTitle, articleQuery.getTitle())
                .eq(StringUtils.isNotBlank(articleQuery.getStatus()), Article::getStatus, articleQuery.getStatus())
                .orderByDesc(Article::getIsTop);
        baseMapper.selectPage(pageArticle, lambdaQueryWrapper);
        //将查询结果封装到map中
        List<Article> articleList = pageArticle.getRecords();
        long current = pageArticle.getCurrent();
        long pages = pageArticle.getPages();
        long size = pageArticle.getSize();
        long total = pageArticle.getTotal();
        boolean hasNext = pageArticle.hasNext();
        boolean hasPrevious = pageArticle.hasPrevious();
        Map<String, Object> map = new HashMap<>();
        map.put("records", articleList);
        map.put("current", current);
        map.put("pages", pages);
        map.put("size", size);
        map.put("total", total);
        map.put("hasNext", hasNext);
        map.put("hasPrevious", hasPrevious);
        return map;
    }
}
