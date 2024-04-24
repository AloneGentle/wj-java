package com.language.learn.controller;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.language.learn.utils.Result;
import com.language.learn.domain.EduCourse;
import com.language.learn.domain.EduTeacher;
import com.language.learn.service.EduCourseService;
import com.language.learn.service.EduTeacherService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;
import java.util.Map;

@RestController
@RequestMapping({"/eduservice/teacherFront"})
public class TeacherFrontController {
    @Autowired
    private EduTeacherService eduTeacherService;

    @Autowired
    private EduCourseService eduCourseService;

    //1.讲师分页
    @GetMapping({"pageTeacherFront/{page}/{limit}"})
    public Result pageTeacherFront(@PathVariable long page, @PathVariable long limit) {
        Page<EduTeacher> pageTeacher = new Page<>(page, limit);
        Map<String, Object> teacherFrontList = eduTeacherService.pageTeacherFront(pageTeacher);
        return Result.success().data(teacherFrontList);
    }

    //2.根据讲师ID查询讲师详情
    @GetMapping("getInfoByTeacherId/{teacherId}")
    public Result getInfoByTeacherId(@PathVariable String teacherId) {
        EduTeacher eduTeacher = eduTeacherService.getById(teacherId);
        List<EduCourse> courseList = eduCourseService.getCourseByTeacherId(teacherId);
        return Result.success().data("eduTeacher", eduTeacher).data("courseList", courseList);
    }
}
