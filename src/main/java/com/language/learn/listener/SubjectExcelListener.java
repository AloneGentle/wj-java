package com.language.learn.listener;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.language.learn.domain.EduSubject;
import com.language.learn.domain.excel.SubjectData;
import com.language.learn.service.EduSubjectService;
import com.language.learn.servicebase.exception.MyException;


/**
 *
 */
public class SubjectExcelListener extends SubjectData {

    private EduSubjectService eduSubjectService;

    SubjectExcelListener() {
    }

    public SubjectExcelListener(EduSubjectService eduSubjectService) {
        this.eduSubjectService = eduSubjectService;
    }

    public void invoke(SubjectData subjectData) {
        if (subjectData == null) {
            throw new MyException(20001, "文件数据为空");
        }

        //添加一级分类
        EduSubject oneEduSubject = existOneSubject(subjectData.getOneSubjectName());
        if (oneEduSubject == null) {
            oneEduSubject = new EduSubject();
            oneEduSubject.setParentId("0");
            oneEduSubject.setTitle(subjectData.getOneSubjectName());
            eduSubjectService.save(oneEduSubject);
        }

        //添加二级分类
        String pid = oneEduSubject.getId();
        EduSubject twoEduSubject = existTwoSubject(subjectData.getTwoSubjectName(), pid);
        if (twoEduSubject == null) {
            twoEduSubject = new EduSubject();
            twoEduSubject.setParentId(pid);
            twoEduSubject.setTitle(subjectData.getTwoSubjectName());
            eduSubjectService.save(twoEduSubject);
        }
    }

    //判断一级分类，不能重复添加
    private EduSubject existOneSubject(String name) {
        LambdaQueryWrapper<EduSubject> lambdaQueryWrapper = new LambdaQueryWrapper<>();
        lambdaQueryWrapper.eq(EduSubject::getTitle, name).eq(EduSubject::getParentId, 0);
        EduSubject oneEduSubject = eduSubjectService.getOne(lambdaQueryWrapper);
        return oneEduSubject;
    }

    //判断二级分类，不能重复添加
    private EduSubject existTwoSubject(String name, String pid) {
        LambdaQueryWrapper<EduSubject> lambdaQueryWrapper = new LambdaQueryWrapper<>();
        lambdaQueryWrapper.eq(EduSubject::getTitle, name).eq(EduSubject::getParentId, pid);
        EduSubject twoEduSubject = eduSubjectService.getOne(lambdaQueryWrapper);
        return twoEduSubject;
    }
}
