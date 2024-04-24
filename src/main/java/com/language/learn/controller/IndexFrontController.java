package com.language.learn.controller;

import com.language.learn.utils.Result;
import com.language.learn.domain.EduCourse;
import com.language.learn.domain.EduTeacher;
import com.language.learn.service.EduCourseService;
import com.language.learn.service.EduTeacherService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping({"/eduservice/index"})
public class IndexFrontController {
    @Autowired
    private EduTeacherService eduTeacherService;
    @Autowired
    private EduCourseService eduCourseService;

    @GetMapping({"index"})
    public Result index() {
        List<EduTeacher> teacherList = this.eduTeacherService.findFourTeacher();
        List<EduCourse> courseList = this.eduCourseService.findEightCourse();
        return Result.success().data("teacherList", teacherList).data("courseList", courseList);
    }
}
