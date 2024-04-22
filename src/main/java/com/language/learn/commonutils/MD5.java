package com.language.learn.commonutils;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public final class MD5 {
    public static String encrypt(String strSrc) {
        try {
            char[] hexChars = new char[]{'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};
            byte[] bytes = strSrc.getBytes();
            MessageDigest md = MessageDigest.getInstance("MD5");
            md.update(bytes);
            bytes = md.digest();
            int j = bytes.length;
            char[] chars = new char[j * 2];
            int k = 0;

            for (byte b : bytes) {
                chars[k++] = hexChars[b >>> 4 & 15];
                chars[k++] = hexChars[b & 15];
            }

            return new String(chars);
        } catch (NoSuchAlgorithmException var9) {
            var9.printStackTrace();
            throw new RuntimeException("MD5加密出错！！+" + var9);
        }
    }
}
