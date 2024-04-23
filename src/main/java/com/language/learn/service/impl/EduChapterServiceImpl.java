package com.language.learn.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.toolkit.StringUtils;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.language.learn.domain.EduChapter;
import com.language.learn.domain.EduVideo;
import com.language.learn.domain.Chapter;
import com.language.learn.domain.Video;
import com.language.learn.MyException;
import com.language.learn.mapper.EduChapterMapper;
import com.language.learn.service.EduChapterService;
import com.language.learn.service.EduVideoService;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

/**
 * 针对表【edu_chapter(课程)】的数据库操作Service实现
 */
@Service
public class EduChapterServiceImpl extends ServiceImpl<EduChapterMapper, EduChapter>
        implements EduChapterService {

    @Autowired
    private EduVideoService eduVideoService;

    @Override
    public List<Chapter> findChapterVideo(String cid) {
        //根据课程ID查询所有章节
        LambdaQueryWrapper<EduChapter> eduChapterLambdaQueryWrapper = new LambdaQueryWrapper<>();
        eduChapterLambdaQueryWrapper.eq(StringUtils.isNotBlank(cid), EduChapter::getCourseId, cid);
        List<EduChapter> eduChapterList = baseMapper.selectList(eduChapterLambdaQueryWrapper);

        //根据课程ID查询所有小节
        LambdaQueryWrapper<EduVideo> eduVideoLambdaQueryWrapper = new LambdaQueryWrapper<>();
        eduVideoLambdaQueryWrapper.eq(StringUtils.isNotBlank(cid), EduVideo::getCourseId, cid);
        List<EduVideo> eduVideoList = eduVideoService.list(eduVideoLambdaQueryWrapper);

        List<Chapter> finalList = new ArrayList<>();

        //遍历所有章节
        for (EduChapter eduChapter : eduChapterList) {
            Chapter chapter = new Chapter();
            //用于封装小节
            List<Video> videoList = new ArrayList<>();
            BeanUtils.copyProperties(eduChapter, chapter);

            //遍历所有小节
            for (EduVideo eduVideo : eduVideoList) {
                if (eduVideo.getChapterId().equals(eduChapter.getId())) {
                    Video video = new Video();
                    BeanUtils.copyProperties(eduVideo, video);
                    videoList.add(video);
                }
            }
            chapter.setChildren(videoList);
            finalList.add(chapter);
        }

        return finalList;
    }

    @Override
    public boolean deleteChapterById(String chapterId) {
        LambdaQueryWrapper<EduVideo> lambdaQueryWrapper = new LambdaQueryWrapper<>();
        lambdaQueryWrapper.eq(StringUtils.isNotBlank(chapterId), EduVideo::getChapterId, chapterId);
        long count = eduVideoService.count(lambdaQueryWrapper);
        if (count > 0) {
            throw new MyException(20001, "删除失败！ 请先删除该章节下的小节");
        } else {
            int i = baseMapper.deleteById(chapterId);
            return i > 0;
        }
    }

    @Override
    public void deleteChapterByCourseId(String cid) {
        baseMapper.deleteByCourseId(cid);
    }
}




