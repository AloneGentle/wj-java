package com.language.learn.controller;

import com.language.learn.utils.Result;
import com.language.learn.domain.OneSubject;
import com.language.learn.service.EduSubjectService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import java.util.List;

/**
 * @Project: online_education
 * @Package: com.language.learn.controller
 * @Description:
 */
@RestController
@RequestMapping("/eduservice/subject")
public class EduSubjectController {

    @Autowired
    private EduSubjectService eduSubjectService;

    //1.添加头像
    @PostMapping("addSubject")
    public Result addSubject(MultipartFile file) {
        eduSubjectService.saveSubject(eduSubjectService, file);
        return Result.success();
    }

    //2.查询所有课程分类
    @GetMapping("findAllSubject")
    public Result findAllSubject() {
        List<OneSubject> subjectList = eduSubjectService.findAllSubject();
        return Result.success().data("subjectList", subjectList);
    }
}
