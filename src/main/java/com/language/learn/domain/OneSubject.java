package com.language.learn.domain;

import lombok.Data;

import java.util.List;

/**
 * @Project: online_education
 * @Package: com.language.learn.domain.subject
 * @Description: 一级分类
 */
@Data
public class OneSubject {

    private String id;

    private String title;

    private List<TwoSubject> children;
}
