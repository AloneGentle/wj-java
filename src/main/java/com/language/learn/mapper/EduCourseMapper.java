package com.language.learn.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.language.learn.domain.CoursePublishVo;
import com.language.learn.domain.EduCourse;
import com.language.learn.domain.frontvo.CourseWebVo;
import org.apache.ibatis.annotations.Param;

/**
 * 针对表【edu_course(课程)】的数据库操作Mapper
 */
public interface EduCourseMapper extends BaseMapper<EduCourse> {

    CoursePublishVo findCoursePublishVo(@Param("cid") String cid);

    int updateStatusById(@Param("status") String status, @Param("id") String id);

    CourseWebVo getcourseWebVo(@Param("cid") String cid);
}




