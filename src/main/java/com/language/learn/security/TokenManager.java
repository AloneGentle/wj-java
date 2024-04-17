package com.language.learn.security;

import com.language.learn.commonutils.JwtUtils;
import io.jsonwebtoken.CompressionCodecs;
import io.jsonwebtoken.Jwts;
import io.jsonwebtoken.SignatureAlgorithm;
import org.springframework.stereotype.Component;

import java.util.Date;

/**
 * token管理
 */
@Component
public class TokenManager {
    public String createToken(String username) {
        String token = Jwts.builder().setSubject(username)
                .setExpiration(new Date(System.currentTimeMillis() + JwtUtils.EXPIRE))
                .signWith(SignatureAlgorithm.HS512, JwtUtils.APP_SECRET).compressWith(CompressionCodecs.GZIP).compact();
        return token;
    }

    public String getUserFromToken(String token) {
        String user = Jwts.parser().setSigningKey(JwtUtils.APP_SECRET).parseClaimsJws(token).getBody().getSubject();
        return user;
    }
}
