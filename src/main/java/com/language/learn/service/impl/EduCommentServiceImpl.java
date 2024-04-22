package com.language.learn.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.toolkit.StringUtils;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.language.learn.client.UcenterClient;
import com.language.learn.commonutils.JwtUtils;
import com.language.learn.dao.Member;
import com.language.learn.domain.EduComment;
import com.language.learn.domain.vo.CommentQuery;
import com.language.learn.domain.vo.CommentVo;
import com.language.learn.mapper.EduCommentMapper;
import com.language.learn.service.EduCommentService;
import com.language.learn.servicebase.exception.MyException;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * 针对表【edu_comment(评论)】的数据库操作Service实现
 */
@Service
public class EduCommentServiceImpl extends ServiceImpl<EduCommentMapper, EduComment> implements EduCommentService {
    @Autowired
    private UcenterClient ucenterClient;

//    @Autowired
//    private EduCourseService eduCourseService;

    @Override
    public Map<String, Object> pageCourseFront(Page<EduComment> pageComment, String courseId) {
        LambdaQueryWrapper<EduComment> lambdaQueryWrapper = new LambdaQueryWrapper<>();
        lambdaQueryWrapper.eq(EduComment::getCourseId, courseId).orderByDesc(EduComment::getGmtModified);
        baseMapper.selectPage(pageComment, lambdaQueryWrapper);
        List<EduComment> records = pageComment.getRecords();
        long current = pageComment.getCurrent();
        long pages = pageComment.getPages();
        long size = pageComment.getSize();
        long total = pageComment.getTotal();
        boolean hasNext = pageComment.hasNext();
        boolean hasPrevious = pageComment.hasPrevious();
        Map<String, Object> map = new HashMap<>();
        map.put("items", records);
        map.put("current", current);
        map.put("pages", pages);
        map.put("size", size);
        map.put("total", total);
        map.put("hasNext", hasNext);
        map.put("hasPrevious", hasPrevious);
        return map;
    }

    @Override
    public void saveComment(EduComment eduComment, String token) {
        //用jwt获取用户ID
        String memberId = JwtUtils.getMemberIdByJwtToken(token);
        //判断用户是否登录
        if (StringUtils.isBlank(memberId)) {
            throw new MyException(20001, " 请先登录 ");
        }

        //判断用户是否输入内容
        if (StringUtils.isBlank(eduComment.getContent())) {
            throw new MyException(20001, " 请先输入内容 ");
        }

        //通过用户ID获取详细用户信息
        Member menber = ucenterClient.getInfoById(memberId);

        //分别存入用户ID、用户昵称和用户头像
        eduComment.setMemberId(memberId);
        eduComment.setNickname(menber.getNickname());
        eduComment.setAvatar(menber.getAvatar());

        //存入数据库
        int insert = baseMapper.insert(eduComment);

        if (insert == 0) {
            throw new MyException(20001, " 发表评论失败 ");
        }
    }

    @Override
    public Long commentNum(String cid) {
        LambdaQueryWrapper<EduComment> lambdaQueryWrapper = new LambdaQueryWrapper<>();
        lambdaQueryWrapper.eq(StringUtils.isNotBlank(cid), EduComment::getCourseId, cid);
        Long count = baseMapper.selectCount(lambdaQueryWrapper);
        return count;
    }

    //后台分页查询数据
    @Override
    public Map<String, Object> pageCourse(Page<EduComment> pageComment, CommentQuery commentQuery) {
        //根据分页条件查询
        LambdaQueryWrapper<EduComment> lambdaQueryWrapper = new LambdaQueryWrapper<>();
        lambdaQueryWrapper.eq(StringUtils.isNotBlank(commentQuery.getCourseId()), EduComment::getCourseId, commentQuery.getCourseId())
                .like(StringUtils.isNotBlank(commentQuery.getNickname()), EduComment::getNickname, commentQuery.getNickname())
                .like(StringUtils.isNotBlank(commentQuery.getContent()), EduComment::getContent, commentQuery.getContent())
                .orderByDesc(EduComment::getGmtCreate);
        baseMapper.selectPage(pageComment, lambdaQueryWrapper);
        //将查询结果封装到map中
        List<EduComment> commentList = pageComment.getRecords();
        //新建List存入传给前端的数据
        List<CommentVo> commentVoList = new ArrayList<>();
        for (EduComment eduComment : commentList) {
            CommentVo commentVo = new CommentVo();
            BeanUtils.copyProperties(eduComment, commentVo);
            // TODO
//            EduCourse course = eduCourseService.getById(eduComment.getCourseId());
//            commentVo.setCourseTitle(course.getTitle());
            commentVoList.add(commentVo);
        }
        //获取课程列表
//        List<EduCourse> courseList = eduCourseService.list();
        long current = pageComment.getCurrent();
        long pages = pageComment.getPages();
        long size = pageComment.getSize();
        long total = pageComment.getTotal();
        boolean hasNext = pageComment.hasNext();
        boolean hasPrevious = pageComment.hasPrevious();
        Map<String, Object> map = new HashMap<>();
        map.put("records", commentVoList);
        map.put("current", current);
        map.put("pages", pages);
        map.put("size", size);
        map.put("total", total);
        map.put("hasNext", hasNext);
        map.put("hasPrevious", hasPrevious);
//        map.put("courseList", courseList);
        return map;
    }
}




