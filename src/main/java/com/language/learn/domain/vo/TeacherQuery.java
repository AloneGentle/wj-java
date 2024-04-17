package com.language.learn.domain.vo;

import lombok.Data;

/**
 * @Project: online_education
 * @Package: com.language.learn.domain.vo
 * @Description:
 */
@Data
public class TeacherQuery {
    private String name;

    private Integer level;

    private String begin;//使用的是String类型，前端传过来的数据无需进行类型转换

    private String end;
}
