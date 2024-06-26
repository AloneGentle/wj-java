package com.language.learn.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.language.learn.domain.EduSubject;
import com.language.learn.domain.OneSubject;
import com.language.learn.domain.TwoSubject;
import com.language.learn.mapper.EduSubjectMapper;
import com.language.learn.service.EduSubjectService;
import org.springframework.beans.BeanUtils;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;

/**
 * 针对表【edu_subject(课程科目)】的数据库操作Service实现
 */
@Service
public class EduSubjectServiceImpl extends ServiceImpl<EduSubjectMapper, EduSubject>
        implements EduSubjectService {

    @Override
    public void saveSubject(EduSubjectService eduSubjectService, MultipartFile file) {
        InputStream in = null;
        try {
            in = file.getInputStream();
//            EasyExcel.read(in, SubjectData.class, new SubjectExcelListener(eduSubjectService)).sheet().doRead();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    @Override
    public List<OneSubject> findAllSubject() {

        //查询所有一级分类
        LambdaQueryWrapper<EduSubject> oneLambdaQueryWrapper = new LambdaQueryWrapper<>();
        oneLambdaQueryWrapper.eq(EduSubject::getParentId, "0");
        List<EduSubject> oneSubjectList = baseMapper.selectList(oneLambdaQueryWrapper);

        //查询所有二级分类
        LambdaQueryWrapper<EduSubject> twoLambdaQueryWrapper = new LambdaQueryWrapper<>();
        twoLambdaQueryWrapper.ne(EduSubject::getParentId, "0");
        List<EduSubject> twoSubjectList = baseMapper.selectList(twoLambdaQueryWrapper);

        //最终结果集
        List<OneSubject> finalSubjectList = new ArrayList<>();

        //将一级分类存到最终结果集中
        for (EduSubject eduSubject : oneSubjectList) {
            OneSubject oneSubject = new OneSubject();
            BeanUtils.copyProperties(eduSubject, oneSubject);
            //查询一级分类下的二级分类
            List<TwoSubject> finalTwoSubjectList = new ArrayList<>();
            for (EduSubject tsubject : twoSubjectList) {
                //判断一级分类的id与二级分配的parent_id是否相等
                if (tsubject.getParentId().equals(eduSubject.getId())) {
                    TwoSubject twoSubject = new TwoSubject();
                    BeanUtils.copyProperties(tsubject, twoSubject);
                    finalTwoSubjectList.add(twoSubject);
                }
            }
            oneSubject.setChildren(finalTwoSubjectList);
            finalSubjectList.add(oneSubject);
        }
        return finalSubjectList;
    }
}




