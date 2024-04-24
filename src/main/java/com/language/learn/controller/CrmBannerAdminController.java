package com.language.learn.controller;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.language.learn.utils.Result;
import com.language.learn.domain.CrmBanner;
import com.language.learn.domain.BannerQuery;
import com.language.learn.service.CrmBannerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Map;

/**
 * @Project: online_education
 * @Package: com.language.learn.controller
 * @Description: 后台幻灯片接口
 */
@RestController
@RequestMapping("/educms/adminbanner")
public class CrmBannerAdminController {

    @Autowired
    private CrmBannerService crmBannerService;

    //1.添加幻灯片
    @PostMapping("saveBanner")
    public Result saveBanner(@RequestBody CrmBanner crmBanner) {
        crmBannerService.saveBanner(crmBanner);
        return Result.success();
    }

    //2.根据ID查询幻灯片
    @GetMapping("findBanner/{bannerId}")
    public Result findBanner(@PathVariable String bannerId) {
        CrmBanner crmBanner = crmBannerService.getById(bannerId);
        return Result.success().data("crmBanner", crmBanner);
    }

    //3.更新幻灯片
    @PostMapping("updateBanner")
    public Result updateBanner(@RequestBody CrmBanner CrmBanner) {
        crmBannerService.updateBanner(CrmBanner);
        return Result.success();
    }

    //分页查询后台文章列表
    @PostMapping("pageBanner/{page}/{limit}")
    public Result pageArticle(@PathVariable long page, @PathVariable long limit,
                              @RequestBody(required = false) BannerQuery bannerQuery) {
        Page<CrmBanner> pageArticle = new Page<>(page, limit);
        Map<String, Object> bannerList = crmBannerService.pageBanner(pageArticle, bannerQuery);
        return Result.success().data(bannerList);
    }

    //5.根据ID删除幻灯片
    @DeleteMapping("removeBanner/{bannerId}")
    public Result removeBanner(@PathVariable String bannerId) {
        crmBannerService.removeById(bannerId);
        return Result.success();
    }
}
