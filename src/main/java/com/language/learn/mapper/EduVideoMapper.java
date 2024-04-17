package com.language.learn.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.language.learn.domain.EduVideo;
import org.apache.ibatis.annotations.Param;

/**
 * @author Lenovo
 * @description 针对表【edu_video(课程视频)】的数据库操作Mapper
 * @createDate 2023-03-19 15:35:50
 * @Entity com.language.learn.domain.EduVideo
 */
public interface EduVideoMapper extends BaseMapper<EduVideo> {
    int deleteByCourseId(@Param("courseId") String courseId);
}




