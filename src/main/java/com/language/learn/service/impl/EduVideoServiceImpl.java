package com.language.learn.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.language.learn.domain.EduVideo;
import com.language.learn.mapper.EduVideoMapper;
import com.language.learn.service.EduVideoService;
import org.springframework.stereotype.Service;

/**
 * 针对表【edu_video(课程视频)】的数据库操作Service实现
 */
@Service
public class EduVideoServiceImpl extends ServiceImpl<EduVideoMapper, EduVideo> implements EduVideoService {

    @Override
    public boolean removeVideoAndVodById(String videoId) {
        int i = baseMapper.deleteById(videoId);
        return i > 0;
    }

    @Override
    public void deleteVideoByCid(String cid) {
        //通过cid查询视频id
        LambdaQueryWrapper<EduVideo> lambdaQueryWrapper = new LambdaQueryWrapper<>();
        lambdaQueryWrapper.eq(EduVideo::getCourseId, cid);
        //删除小节
        baseMapper.deleteByCourseId(cid);
    }
}




