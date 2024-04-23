package com.language.learn.domain;

import lombok.Data;

/**
 * @Project: online_education
 * @Package: com.language.learn.domain.chapter
 * @Description:
 */
@Data
public class Video {

    private String id;

    private String title;

    private Integer isFree;

    private String videoSourceId;

}
