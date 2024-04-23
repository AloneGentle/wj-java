package com.language.learn.utils;

import org.springframework.util.DigestUtils;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public final class MD5 {
    // use DigestUtils
    public static String encrypt(String strSrc) {
        return DigestUtils.md5DigestAsHex(strSrc.getBytes());
    }
}
