package com.language.learn.service;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.IService;
import com.language.learn.domain.EduComment;
import com.language.learn.domain.vo.CommentQuery;
import jakarta.servlet.http.HttpServletRequest;

import java.util.Map;

/**
 * @author Lenovo
 * @description 针对表【edu_comment(评论)】的数据库操作Service
 */
public interface EduCommentService extends IService<EduComment> {

    //1.分页查询所有评论
    Map<String, Object> pageCourseFront(Page<EduComment> pageComment, String courseId);

    //2.将评论信息存入数据库
    void saveComment(EduComment eduComment, String token);

    //3.根据课程id查询评论数量
    Long commentNum(String cid);

    //4.后台分页查询所有评论
    Map<String, Object> pageCourse(Page<EduComment> pageComment, CommentQuery commentQuery);
}
