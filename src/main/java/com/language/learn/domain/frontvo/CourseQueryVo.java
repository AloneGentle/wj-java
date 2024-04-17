package com.language.learn.domain.frontvo;

import lombok.Data;

import java.io.Serializable;

/**
 * @Project: online_education
 * @Package: com.language.learn.domain.frontvo
 * @Description:
 */
@Data
public class CourseQueryVo implements Serializable {
    private static final long serialVersionUID = 1L;

    private String title;

    private String teacherId;

    private String subjectParentId;

    private String subjectId;

    private String buyCountSort;

    private String gmtCreateSort;

    private String priceSort;
}
