package com.language.learn.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.language.learn.domain.EduVideo;

public interface EduVideoService extends IService<EduVideo> {
    //删除小节及小节的视频
    boolean removeVideoAndVodById(String videoId);

    void deleteVideoByCid(String cid);
}
