package com.language.learn.service;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.IService;
import com.language.learn.domain.EduTeacher;

import java.util.List;
import java.util.Map;

/**
 * 针对表【edu_teacher(讲师)】的数据库操作Service
 */
public interface EduTeacherService extends IService<EduTeacher> {
    List<EduTeacher> findFourTeacher();

    Map<String, Object> pageTeacherFront(Page<EduTeacher> pageTeacher);
}
