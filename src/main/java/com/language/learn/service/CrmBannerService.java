package com.language.learn.service;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.IService;
import com.language.learn.domain.BannerQuery;
import com.language.learn.domain.CrmBanner;

import java.util.List;
import java.util.Map;

/**
 * 针对表【crm_banner(首页banner表)】的数据库操作Service
 */
public interface CrmBannerService extends IService<CrmBanner> {

    //1.查询所有幻灯片
    List<CrmBanner> findAllBanner();

    //2.后台分页查询所有幻灯片
    Map<String, Object> pageBanner(Page<CrmBanner> pageArticle, BannerQuery bannerQuery);

    //3.添加幻灯片
    void saveBanner(CrmBanner crmBanner);

    //4.更新幻灯片
    void updateBanner(CrmBanner crmBanner);
}
