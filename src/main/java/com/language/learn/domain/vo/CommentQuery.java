package com.language.learn.domain.vo;

import lombok.Data;

/**
 * @Project: online_education
 * @Package: com.language.learn.domain.vo
 * @Description:
 */
@Data
public class CommentQuery {

    private String courseId;

    private String nickname;

    private String content;

}
