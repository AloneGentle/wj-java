package com.language.learn.service;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.IService;
import com.language.learn.domain.Course;
import com.language.learn.domain.CoursePublishVo;
import com.language.learn.domain.CourseVo;
import com.language.learn.domain.EduCourse;
import com.language.learn.domain.frontvo.CourseQueryVo;
import com.language.learn.domain.frontvo.CourseWebVo;

import java.util.List;
import java.util.Map;

/**
 * 针对表【edu_course(课程)】的数据库操作Service
 */
public interface EduCourseService extends IService<EduCourse> {
    //1.添加课程信息
    String saveCourseInfo(CourseVo courseVo);

    //2.根据课程ID查询课程基本信息
    CourseVo findCourseInfo(String cid);

    //3.修改课程信息
    void updateCourseInfo(CourseVo courseVo);

    //4.通过课程ID查询课程发布信息
    CoursePublishVo findCoursePublishVo(String cid);

    //5.最终发布课程
    boolean updateStatusById(String status, String cid);

    //7.根据课程ID删除课程信息
    void removeCourseByCid(String cid);

    //8.查询8条热门课程数据
    List<EduCourse> findEightCourse();

    //9.根据讲师ID查询授课信息
    List<EduCourse> getCourseByTeacherId(String teacherId);

    //10.前台条件分页查询课程信息
    Map<String, Object> pageCourseFront(Page<EduCourse> pageCourse, CourseQueryVo courseQueryVo);

    //11.前台课程基本信息
    CourseWebVo getcourseWebVo(String cid);

    //12.根据课程ID获取课程信息
    Course getInfoByCid(String cid);
}
