package com.language.learn.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.language.learn.domain.Order;
import com.language.learn.domain.PayLog;
import com.language.learn.mapper.PayLogMapper;
import com.language.learn.service.OrderService;
import com.language.learn.service.PayLogService;
import com.language.learn.utils.JsonUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.Map;

/**
 * 针对表【t_pay_log(支付日志表)】的数据库操作Service实现
 */
@Service
public class PayLogServiceImpl extends ServiceImpl<PayLogMapper, PayLog>
        implements PayLogService {

    @Autowired
    private OrderService orderService;

    @Override
    public Map<String, Object> createNative(String orderNo) {
        //TODO
        return null;
    }

    @Override
    public Map<String, String> getPayStatus(String orderNo) {
        //TODO
        return null;
    }

    @Override
    public void updataPayStatus(Map<String, String> map) {
        //获取订单号
        String orderNo = map.get("out_trade_no");

        //根据订单id获取订单信息
        LambdaQueryWrapper<Order> lambdaQueryWrapper = new LambdaQueryWrapper<>();
        lambdaQueryWrapper.eq(Order::getOrderNo, orderNo);
        Order order = orderService.getOne(lambdaQueryWrapper);

        //修改支付状态
        order.setStatus(1);
        orderService.updateById(order);

        //记录支付日志
        PayLog payLog = new PayLog();
        payLog.setOrderNo(order.getOrderNo());//支付订单号
        payLog.setPayTime(new Date());
        payLog.setPayType(1);//支付类型
        payLog.setTotalFee(order.getTotalFee());//总金额(分)
        payLog.setTradeState(map.get("trade_state"));//支付状态
        payLog.setTransactionId(map.get("transaction_id"));
        payLog.setAttr(JsonUtil.toJson(map));
        baseMapper.insert(payLog);//插入到支付日志表
    }
}




