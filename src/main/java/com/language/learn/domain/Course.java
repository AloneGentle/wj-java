package com.language.learn.domain;

import lombok.Data;

import java.io.Serializable;
import java.math.BigDecimal;

@Data
public class Course implements Serializable {

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
