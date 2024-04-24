package com.language.learn.client;

import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.service.annotation.GetExchange;

/**
 * @Project: online_education
 * @Package: com.language.learn.client
 * @Description:
 */
@Component
public interface OrderClient {

    //3.根据用户ID和课程ID判断是否已购买该课程
    @GetExchange("/eduorder/order/isBuyCourse/{courseId}/{memberId}")
    boolean isBuyCourse(@PathVariable("courseId") String courseId, @PathVariable("memberId") String memberId,
                        @RequestHeader("token") String token);

}
