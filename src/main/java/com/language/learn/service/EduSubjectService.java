package com.language.learn.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.language.learn.domain.EduSubject;
import com.language.learn.domain.subject.OneSubject;
import org.springframework.web.multipart.MultipartFile;

import java.util.List;

/**
 * @description 针对表【edu_subject(课程科目)】的数据库操作Service
 */
public interface EduSubjectService extends IService<EduSubject> {
    //添加课程分类
    void saveSubject(EduSubjectService eduSubjectService, MultipartFile file);

    //查询所有课程分类
    List<OneSubject> findAllSubject();
}
