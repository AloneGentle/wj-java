package com.language.learn.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.language.learn.domain.Order;
import org.apache.ibatis.annotations.Param;

/**
 * @author Lenovo
 * @description 针对表【t_order(订单)】的数据库操作Mapper
 * @createDate 2023-04-24 15:00:05
 * @Entity com.cn.eduorder.domain.Order
 */
public interface OrderMapper extends BaseMapper<Order> {
    Order selectOneByOrderNo(@Param("orderNo") String orderNo);
}




