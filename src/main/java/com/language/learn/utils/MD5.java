package com.language.learn.utils;

import org.springframework.util.DigestUtils;

public final class MD5 {
    public static String encrypt(String strSrc) {
        return DigestUtils.md5DigestAsHex(strSrc.getBytes());
    }
}
