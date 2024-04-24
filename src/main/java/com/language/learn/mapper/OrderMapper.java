package com.language.learn.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.language.learn.domain.Order;
import org.apache.ibatis.annotations.Param;

/**
 * 针对表【t_order(订单)】的数据库操作Mapper
 */
public interface OrderMapper extends BaseMapper<Order> {
    Order selectOneByOrderNo(@Param("orderNo") String orderNo);
}




