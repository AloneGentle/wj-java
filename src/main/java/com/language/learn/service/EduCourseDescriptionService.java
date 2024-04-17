package com.language.learn.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.language.learn.domain.EduCourseDescription;

/**
 * @description 针对表【edu_course_description(课程简介)】的数据库操作Service
 */
public interface EduCourseDescriptionService extends IService<EduCourseDescription> {

    void deleteDescByCourseId(String cid);
}
