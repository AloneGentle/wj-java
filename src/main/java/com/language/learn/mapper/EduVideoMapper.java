package com.language.learn.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.language.learn.domain.EduVideo;
import org.apache.ibatis.annotations.Param;

/**
 * 针对表【edu_video(课程视频)】的数据库操作Mapper
 */
public interface EduVideoMapper extends BaseMapper<EduVideo> {
    int deleteByCourseId(@Param("courseId") String courseId);
}




