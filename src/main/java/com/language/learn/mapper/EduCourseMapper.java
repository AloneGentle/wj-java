package com.language.learn.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.language.learn.domain.EduCourse;
import com.language.learn.domain.frontvo.CourseWebVo;
import com.language.learn.domain.CoursePublishVo;
import org.apache.ibatis.annotations.Param;

/**
 * @author Lenovo
 * @description 针对表【edu_course(课程)】的数据库操作Mapper
 * @createDate 2023-03-19 15:20:54
 * @Entity com.language.learn.domain.EduCourse
 */
public interface EduCourseMapper extends BaseMapper<EduCourse> {

    CoursePublishVo findCoursePublishVo(@Param("cid") String cid);

    int updateStatusById(@Param("status") String status, @Param("id") String id);

    CourseWebVo getcourseWebVo(@Param("cid") String cid);
}




