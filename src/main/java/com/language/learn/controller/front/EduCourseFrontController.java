package com.language.learn.controller.front;

import com.baomidou.mybatisplus.core.toolkit.StringUtils;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.language.learn.client.OrderClient;
import com.language.learn.utils.JwtUtils;
import com.language.learn.utils.Result;
import com.language.learn.domain.Course;
import com.language.learn.domain.EduCourse;
import com.language.learn.domain.Chapter;
import com.language.learn.domain.frontvo.CourseQueryVo;
import com.language.learn.domain.frontvo.CourseWebVo;
import com.language.learn.service.EduChapterService;
import com.language.learn.service.EduCourseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Map;

/**
 * com.language.learn.controller
 */
@RestController
@RequestMapping("/eduservice/courseFront")
public class EduCourseFrontController {

    @Autowired
    private EduCourseService eduCourseService;

    @Autowired
    private EduChapterService eduChapterService;

    @Autowired
    private OrderClient orderClient;

    //1.条件分页查询课程信息
    @PostMapping("pageCourseFront/{page}/{limit}")
    public Result pageCourseFront(@PathVariable long page, @PathVariable long limit,
                                  @RequestBody(required = false) CourseQueryVo CourseQuery) {
        Page<EduCourse> pageCourse = new Page<>(page, limit);
        Map<String, Object> courseFrontList = eduCourseService.pageCourseFront(pageCourse, CourseQuery);

        return Result.success().data(courseFrontList);
    }

    //2.获取课程基本信息
    @GetMapping("getBaseCourseInfo/{cid}")
    public Result getBaseCourseInfo(@PathVariable String cid, @RequestHeader String token) {
        //查询课程信息和讲师信息
        CourseWebVo courseWebVo = eduCourseService.getcourseWebVo(cid);
        //查询当前课程的章节信息
        List<Chapter> chapterList = eduChapterService.findChapterVideo(cid);
        //通过用户ID和课程ID判断是否购买该课程
        boolean isBuyCourse = orderClient.isBuyCourse(cid, JwtUtils.getMemberIdByJwtToken(token),token);

        return Result.success().data("courseWebVo", courseWebVo).data("chapterList", chapterList).data("isBuyCourse", isBuyCourse);
    }

    //3.根据课程ID获取课程信息
    @GetMapping("getInfoByCid/{cid}")
    public Course getInfoByCid(@PathVariable String cid) {
        Course course = eduCourseService.getInfoByCid(cid);
        return course;
    }

    //4.判断用户是否登录
    @GetMapping("isLogin")
    public Result isLogin(@RequestHeader String token) {
        String memberId = JwtUtils.getMemberIdByJwtToken(token);
        if (StringUtils.isBlank(memberId)) {
            return Result.error();
        } else {
            return Result.success();
        }
    }
}
