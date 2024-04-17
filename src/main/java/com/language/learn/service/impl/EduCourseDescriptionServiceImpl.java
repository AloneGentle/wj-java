package com.language.learn.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.language.learn.domain.EduCourseDescription;
import com.language.learn.mapper.EduCourseDescriptionMapper;
import com.language.learn.service.EduCourseDescriptionService;
import org.springframework.stereotype.Service;

/**
 * @author Lenovo
 * @description 针对表【edu_course_description(课程简介)】的数据库操作Service实现
 * @createDate 2023-03-19 15:21:41
 */
@Service
public class EduCourseDescriptionServiceImpl extends ServiceImpl<EduCourseDescriptionMapper, EduCourseDescription>
        implements EduCourseDescriptionService {

    @Override
    public void deleteDescByCourseId(String cid) {
        baseMapper.deleteById(cid);
    }
}




