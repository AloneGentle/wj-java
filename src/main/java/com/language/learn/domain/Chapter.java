package com.language.learn.domain;

import lombok.Data;

import java.util.ArrayList;
import java.util.List;

/**
 * @Project: online_education
 * @Package: com.language.learn.domain.chapter
 * @Description:
 */
@Data
public class Chapter {

    private String id;

    private String title;

    private List<Video> children = new ArrayList<>();

}
