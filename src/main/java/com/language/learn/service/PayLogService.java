package com.language.learn.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.language.learn.domain.PayLog;

import java.util.Map;

/**
 * 针对表【t_pay_log(支付日志表)】的数据库操作Service
 */
public interface PayLogService extends IService<PayLog> {
    //1.生成二维码
    Map<String, Object> createNative(String orderNo);

    //2.获取订单支付状态
    Map<String, String> getPayStatus(String orderNo);

    //2.查看订单支付状态
    void updataPayStatus(Map<String, String> map);
}
