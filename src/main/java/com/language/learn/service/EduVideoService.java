package com.language.learn.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.language.learn.domain.EduVideo;

/**
 * @author Lenovo
 * @description 针对表【edu_video(课程视频)】的数据库操作Service
 * @createDate 2023-03-19 15:35:50
 */
public interface EduVideoService extends IService<EduVideo> {

    void deleteVideoByCourseId(String cid);

    //删除小节及小节的视频
    boolean removeVideoAndVodById(String videoId);

    void deleteVideoByCid(String cid);
}
