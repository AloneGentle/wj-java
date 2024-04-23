package com.language.learn.domain;

import lombok.Data;

@Data
public class RegisterVo {
    private String nickname;
    private String mobile;
    private String password;
    private String code;
}
