package com.language.learn.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.language.learn.domain.EduChapter;
import com.language.learn.domain.Chapter;

import java.util.List;

/**
 * @author Lenovo
 * @description 针对表【edu_chapter(课程)】的数据库操作Service
 */
public interface EduChapterService extends IService<EduChapter> {

    List<Chapter> findChapterVideo(String cid);

    boolean deleteChapterById(String chapterId);

    void deleteChapterByCourseId(String cid);
}
