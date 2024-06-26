package com.language.learn.controller;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.language.learn.domain.EduComment;
import com.language.learn.service.EduCommentService;
import com.language.learn.utils.Result;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.Map;

/**
 * 评论(EduComment)表控制层
 */
@RestController
@RequestMapping("/eduservice/commentFront")
public class EduCommentFrontController {
    /**
     * 服务对象
     */
    @Autowired
    private EduCommentService eduCommentService;

    //1.分页显示所有评论信息
    @GetMapping("pageCommentFront/{page}/{limit}/{courseId}")
    public Result pageCourseFront(@PathVariable long page, @PathVariable long limit, @PathVariable String courseId) {
        Page<EduComment> pageComment = new Page<>(page, limit);
        Map<String, Object> commentFrontList = eduCommentService.pageCourseFront(pageComment, courseId);
        return Result.success().data(commentFrontList);
    }

    //2.添加评论数据到数据库
    @PostMapping("saveComment")
    public Result saveComment(@RequestBody EduComment eduComment, @RequestHeader String token) {
        eduCommentService.saveComment(eduComment, token);
        return Result.success();
    }

    @GetMapping("commentNum/{cid}")
    public Result commentNum(@PathVariable String cid) {
        Long count = eduCommentService.commentNum(cid);
        return Result.success().data("count", count);
    }
}

