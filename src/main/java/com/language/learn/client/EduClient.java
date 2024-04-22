package com.language.learn.client;

import com.language.learn.pojo.Course;
import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.service.annotation.GetExchange;

/**
 *
 */
@Component
public interface EduClient {

    //3.根据课程ID获取课程信息
    @GetExchange("/eduservice/courseFront/getInfoByCid/{cid}")
    Course getInfoByCid(@PathVariable String cid);

}
