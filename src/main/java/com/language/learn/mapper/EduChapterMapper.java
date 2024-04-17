package com.language.learn.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.language.learn.domain.EduChapter;
import org.apache.ibatis.annotations.Param;

public interface EduChapterMapper extends BaseMapper<EduChapter> {

    int deleteByCourseId(@Param("courseId") String courseId);
}




