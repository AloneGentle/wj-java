package com.language.learn.domain.frontvo;

import lombok.Data;

import java.io.Serializable;
import java.math.BigDecimal;

/**
 * @Project: online_education
 * @Package: com.language.learn.domain.frontvo
 * @Description:
 */
@Data
public class CourseWebVo implements Serializable {
    private static final long serialVersionUID = 1L;

    private String id;

    private String title;

    private BigDecimal price;

    private Integer lessonNum;

    private String cover;

    private Long buyCount;

    private Long viewCount;

    private String description;

    private String teacherId;

    private String teacherName;

    private String intro;

    private String avatar;

    private String subjectLevelOneId;

    private String subjectLevelOne;

    private String subjectLevelTwoId;

    private String subjectLevelTwo;
}
