package com.language.learn.controller;

import com.language.learn.domain.CrmBanner;
import com.language.learn.service.CrmBannerService;
import com.language.learn.utils.Result;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * @Project: online_education
 * @Package: com.language.learn.controller
 * @Description: 前台幻灯片接口
 */
@RestController
@RequestMapping("/educms/frontbanner")
public class CrmBannerFrontController {
    @Autowired
    private CrmBannerService crmBannerService;

    @GetMapping("findAllBanner")
    public Result findAllBanner() {
        List<CrmBanner> bannerList = crmBannerService.findAllBanner();
        return Result.success().data("bannerList", bannerList);
    }
}
