package com.language.learn.controller;


import com.language.learn.service.StatisticsDailyService;
import com.language.learn.utils.Result;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.Map;

@RestController
@RequestMapping("/edusta/sta")
public class StatisticsDailyController {
    /**
     * 服务对象
     */
    @Autowired
    private StatisticsDailyService statisticsDailyService;

    //1.统计某天的注册人数并加入到数据库中
    @GetMapping("saveRegister/{day}")
    public Result saveRegister(@PathVariable String day) {
        statisticsDailyService.saveRegister(day);
        return Result.success();
    }

    //2.生成图表
    @GetMapping("showChart/{type}/{begin}/{end}")
    public Result showChart(@PathVariable String type, @PathVariable String begin, @PathVariable String end) {
        Map<String, Object> map = statisticsDailyService.showChart(type, begin, end);
        return Result.success().data(map);
    }
}

