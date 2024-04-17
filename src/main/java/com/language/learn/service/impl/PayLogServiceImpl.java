package com.language.learn.service.impl;

import com.alibaba.fastjson.JSONObject;
import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.language.learn.domain.Order;
import com.language.learn.domain.PayLog;
import com.language.learn.mapper.PayLogMapper;
import com.language.learn.service.OrderService;
import com.language.learn.service.PayLogService;
import com.language.learn.servicebase.exception.MyException;
import com.language.learn.utils.HttpClient;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.math.BigDecimal;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

/**
 * @author Lenovo
 * @description 针对表【t_pay_log(支付日志表)】的数据库操作Service实现
 */
@Service
public class PayLogServiceImpl extends ServiceImpl<PayLogMapper, PayLog>
        implements PayLogService {

    @Autowired
    private OrderService orderService;

    @Override
    public Map<String, Object> createNative(String orderNo) {
        try {
            //根据订单id获取订单信息
            LambdaQueryWrapper<Order> lambdaQueryWrapper = new LambdaQueryWrapper<>();
            lambdaQueryWrapper.eq(Order::getOrderNo, orderNo);
            Order order = orderService.getOne(lambdaQueryWrapper);

            Map m = new HashMap();
            //1、设置支付参数
            m.put("body", order.getCourseTitle());
            m.put("out_trade_no", orderNo);
            m.put("total_fee", order.getTotalFee().multiply(new BigDecimal("100")).longValue() + "");
            m.put("spbill_create_ip", "127.0.0.1");
            m.put("trade_type", "NATIVE");

            //2、HTTPClient来根据URL访问第三方接口并且传递参数
            HttpClient client = new HttpClient("https://api.mch.weixin.qq.com/pay/unifiedorder");

            //client设置参数
            client.setHttps(true);
            client.post();
            //3、返回第三方的数据
            String xml = client.getContent();
            Map<String, String> resultMap = HashMap.newHashMap(10);
            //4、封装返回结果集

            Map map = new HashMap<>();
            map.put("out_trade_no", orderNo);
            map.put("course_id", order.getCourseId());
            map.put("total_fee", order.getTotalFee());
            map.put("result_code", resultMap.get("result_code"));
            map.put("code_url", resultMap.get("code_url"));

            //微信支付二维码2小时过期，可采取2小时未支付取消订单
            //redisTemplate.opsForValue().set(orderNo, map, 120, TimeUnit.MINUTES);
            return map;
        } catch (Exception e) {
            throw new MyException(20001, " 生成二维码失败 ");
        }
    }

    @Override
    public Map<String, String> getPayStatus(String orderNo) {
        try {

            //1、封装参数
            Map m = new HashMap<>();
            m.put("out_trade_no", orderNo);

            //2、设置请求
            HttpClient client = new HttpClient("https://api.mch.weixin.qq.com/pay/orderquery");
            client.setHttps(true);
            client.post();

            //3、返回第三方的数据
            String xml = client.getContent();

            //6、转成Map
            Map<String, String> resultMap = HashMap.newHashMap(10);

            //7、返回
            return resultMap;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
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
        payLog.setAttr(JSONObject.toJSONString(map));
        baseMapper.insert(payLog);//插入到支付日志表
    }
}




