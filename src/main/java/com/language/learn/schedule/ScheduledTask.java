package com.language.learn.schedule;

import com.language.learn.service.StatisticsDailyService;
import com.language.learn.utils.DateUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

import java.util.Date;

/**
 * @Project: online_education
 * @Package: com.language.learn.schedule
 * @Description:
 */
@Component
public class ScheduledTask {

    @Autowired
    private StatisticsDailyService statisticsDailyService;

    //在每天凌晨一点，把前一天的数据查询添加
    @Scheduled(cron = "0 0 1 * * ? ")
    public void task() {
        statisticsDailyService.saveRegister(DateUtil.formatDate(DateUtil.addDays(new Date(), -1)));
    }
}
