package com.language.learn.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.language.learn.domain.StatisticsDaily;

import java.util.Map;

/**
 * 针对表【statistics_daily(网站统计日数据)】的数据库操作Service
 */
public interface StatisticsDailyService extends IService<StatisticsDaily> {

    //1.统计某天的注册人数并加入到数据库中
    void saveRegister(String day);

    //2.生成图表
    Map<String, Object> showChart(String type, String begin, String end);
}
