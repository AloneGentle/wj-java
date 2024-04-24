package com.language.learn.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.language.learn.domain.Chapter;
import com.language.learn.domain.EduChapter;

import java.util.List;

/**
 * 针对表【edu_chapter(课程)】的数据库操作Service
 */
public interface EduChapterService extends IService<EduChapter> {

    List<Chapter> findChapterVideo(String cid);

    boolean deleteChapterById(String chapterId);

    void deleteChapterByCourseId(String cid);
}
