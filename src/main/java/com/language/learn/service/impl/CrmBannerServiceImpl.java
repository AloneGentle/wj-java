package com.language.learn.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.toolkit.StringUtils;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.language.learn.MyException;
import com.language.learn.domain.BannerQuery;
import com.language.learn.domain.CrmBanner;
import com.language.learn.mapper.CrmBannerMapper;
import com.language.learn.service.CrmBannerService;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * 针对表【crm_banner(首页banner表)】的数据库操作Service实现
 */
@Service
public class CrmBannerServiceImpl extends ServiceImpl<CrmBannerMapper, CrmBanner>
        implements CrmBannerService {

    @Override
    public List<CrmBanner> findAllBanner() {
        List<CrmBanner> bannerList = baseMapper.selectList(null);
        return bannerList;
    }

    @Override
    public Map<String, Object> pageBanner(Page<CrmBanner> pageArticle, BannerQuery bannerQuery) {
        //根据分页条件查询
        LambdaQueryWrapper<CrmBanner> lambdaQueryWrapper = new LambdaQueryWrapper<>();
        lambdaQueryWrapper.like(StringUtils.isNotBlank(bannerQuery.getTitle()), CrmBanner::getTitle, bannerQuery.getTitle())
                .orderByAsc(CrmBanner::getSort);
        baseMapper.selectPage(pageArticle, lambdaQueryWrapper);
        //将查询结果封装到map中
        List<CrmBanner> bannerList = pageArticle.getRecords();
        long current = pageArticle.getCurrent();
        long pages = pageArticle.getPages();
        long size = pageArticle.getSize();
        long total = bannerList.size();
        boolean hasNext = pageArticle.hasNext();
        boolean hasPrevious = pageArticle.hasPrevious();
        Map<String, Object> map = new HashMap();
        map.put("records", bannerList);
        map.put("current", current);
        map.put("pages", pages);
        map.put("size", size);
        map.put("total", total);
        map.put("hasNext", hasNext);
        map.put("hasPrevious", hasPrevious);
        return map;
    }

    @Override
    public void saveBanner(CrmBanner crmBanner) {
        //查询该页幻灯片是否存在
        LambdaQueryWrapper<CrmBanner> lambdaQueryWrapper = new LambdaQueryWrapper<>();
        lambdaQueryWrapper.eq(CrmBanner::getSort, crmBanner.getSort());
        CrmBanner banner = baseMapper.selectOne(lambdaQueryWrapper);
        //如果不存在，则直接添加
        if (banner == null) {
            baseMapper.insert(crmBanner);
        } else {
            if (banner.getSort() == 0) {
                throw new MyException(20001, " 第一页幻灯片已存在，请重新选择 ! ");
            } else if (banner.getSort() == 1) {
                throw new MyException(20001, " 第二页幻灯片已存在，请重新选择 ! ");
            } else {
                throw new MyException(20001, " 第三页幻灯片已存在，请重新选择 ! ");
            }
        }
    }

    @Override
    public void updateBanner(CrmBanner crmBanner) {
        //查询该页幻灯片是否存在
        LambdaQueryWrapper<CrmBanner> lambdaQueryWrapper = new LambdaQueryWrapper<>();
        lambdaQueryWrapper.eq(CrmBanner::getSort, crmBanner.getSort());
        CrmBanner banner = baseMapper.selectOne(lambdaQueryWrapper);
        //如果不存在，则直接添加
        if (banner == null) {
            baseMapper.updateById(crmBanner);
        } else if (banner.getSort() == crmBanner.getSort()) {
            baseMapper.updateById(crmBanner);
        } else {
            if (banner.getSort() == 0) {
                throw new MyException(20001, " 第一页幻灯片已存在，请重新选择 ! ");
            } else if (banner.getSort() == 1) {
                throw new MyException(20001, " 第二页幻灯片已存在，请重新选择 ! ");
            } else {
                throw new MyException(20001, " 第三页幻灯片已存在，请重新选择 ! ");
            }
        }
    }
}




