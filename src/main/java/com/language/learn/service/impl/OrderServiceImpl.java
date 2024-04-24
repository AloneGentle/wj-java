package com.language.learn.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.language.learn.dao.Member;
import com.language.learn.domain.Course;
import com.language.learn.domain.Order;
import com.language.learn.mapper.OrderMapper;
import com.language.learn.service.EduCourseService;
import com.language.learn.service.OrderService;
import com.language.learn.service.UcenterMemberService;
import com.language.learn.utils.OrderNoUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * 针对表【t_order(订单)】的数据库操作Service实现
 */
@Service
public class OrderServiceImpl extends ServiceImpl<OrderMapper, Order>
        implements OrderService {

    @Autowired
    private EduCourseService eduCourseService;

    @Autowired
    private UcenterMemberService ucenterMemberService;

    @Override
    public String saveOrderByCourseId(String courseId, String memberId) {
        //根据课程ID获取课程信息
        Course course = eduCourseService.getInfoByCid(courseId);

        //根据用户ID获取用户信息
        Member member = ucenterMemberService.getUserInfoById(memberId);

        //创建订单
        Order order = new Order();
        //利用工具类生成订单号并存入数据
        order.setOrderNo(OrderNoUtil.getOrderNo());
        order.setCourseId(courseId);
        order.setCourseTitle(course.getTitle());
        order.setCourseCover(course.getCover());
        order.setTeacherName(course.getTeacherName());
        order.setTotalFee(course.getPrice());
        order.setMemberId(memberId);
        order.setMobile(member.getMobile());
        order.setNickname(member.getNickname());
        order.setStatus(0);
        order.setPayType(1);

        //存入
        baseMapper.insert(order);

        return order.getOrderNo();
    }

    @Override
    public Order getOrderInfo(String orderNo) {
        Order order = baseMapper.selectOneByOrderNo(orderNo);
        return order;
    }

    @Override
    public boolean isBuyCourse(String courseId, String memberId) {
        LambdaQueryWrapper<Order> lambdaQueryWrapper = new LambdaQueryWrapper<>();
        lambdaQueryWrapper.eq(Order::getCourseId, courseId)
                .eq(Order::getMemberId, memberId)
                .eq(Order::getStatus, 1);
        Long count = baseMapper.selectCount(lambdaQueryWrapper);
        if (count > 0) {
            return true;
        } else {
            return false;
        }
    }
}




