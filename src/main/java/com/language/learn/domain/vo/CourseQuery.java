package com.language.learn.domain.vo;

import lombok.Data;

/**
 * @Project: online_education
 * @Package: com.language.learn.domain.vo
 * @Description:
 */
@Data
public class CourseQuery {
    private String title;

    private String subjectParentId;

    private String subjectId;

}
