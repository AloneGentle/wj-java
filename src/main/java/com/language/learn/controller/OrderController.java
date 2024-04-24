package com.language.learn.controller;

import com.language.learn.domain.Order;
import com.language.learn.service.OrderService;
import com.language.learn.utils.JwtUtils;
import com.language.learn.utils.Result;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

/**
 * 订单(Order)表控制层
 */
@RestController
@RequestMapping("/eduorder/order")
public class OrderController {
    /**
     * 服务对象
     */
    @Autowired
    private OrderService orderService;

    //1.根据课程ID和用户ID生成订单
    @GetMapping("saveOrderByCourseId/{courseId}")
    public Result saveOrderByCourseId(@PathVariable String courseId, @RequestHeader String token) {
        String memberId = JwtUtils.getMemberIdByJwtToken(token);
        String orderNo = orderService.saveOrderByCourseId(courseId, memberId);
        return Result.success().data("orderNo", orderNo);
    }

    //2.根据订单号查询订单信息
    @GetMapping("getOrderInfo/{orderNo}")
    public Result getOrderInfo(@PathVariable String orderNo) {
        Order order = orderService.getOrderInfo(orderNo);
        return Result.success().data("order", order);
    }

    //3.根据用户ID和课程ID判断是否已购买该课程
    @GetMapping("isBuyCourse/{courseId}/{memberId}")
    public boolean isBuyCourse(@PathVariable String courseId, @PathVariable String memberId) {
        boolean res = orderService.isBuyCourse(courseId, memberId);
        return res;
    }
}

