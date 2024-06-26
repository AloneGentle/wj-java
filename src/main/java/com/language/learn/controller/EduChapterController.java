package com.language.learn.controller;

import com.language.learn.domain.Chapter;
import com.language.learn.domain.EduChapter;
import com.language.learn.service.EduChapterService;
import com.language.learn.utils.Result;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * @Project: online_education
 * @Package: com.language.learn.controller
 * @Description:
 */
@RestController
@RequestMapping("/eduservice/chapter")
public class EduChapterController {

    @Autowired
    private EduChapterService eduChapterService;

    //1.根据课程ID获取章节和小节列表
    @GetMapping("findChapterVideo/{cid}")
    public Result findChapterVideo(@PathVariable String cid) {
        List<Chapter> chapterVideoList = eduChapterService.findChapterVideo(cid);
        return Result.success().data("chapterVideoList", chapterVideoList);
    }

    //2.添加章节信息
    @PostMapping("saveChapter")
    public Result saveChapter(@RequestBody EduChapter eduChapter) {
        eduChapterService.save(eduChapter);
        return Result.success();
    }

    //3.根据章节ID获取章节信息
    @GetMapping("findChapterById/{chapterId}")
    public Result findChapterById(@PathVariable String chapterId) {
        EduChapter eduChapter = eduChapterService.getById(chapterId);
        return Result.success().data("eduChapter", eduChapter);
    }

    //4.删除章节
    @DeleteMapping("deleteChapterById/{chapterId}")
    public Result deleteChapterById(@PathVariable String chapterId) {
        boolean flag = eduChapterService.deleteChapterById(chapterId);
        if (flag) {
            return Result.success();
        } else {
            return Result.error();
        }
    }

    //5.修改章节信息
    @PostMapping("updateChapter")
    public Result updateChapter(@RequestBody EduChapter eduChapter) {
        eduChapterService.updateById(eduChapter);
        return Result.success();
    }
}
