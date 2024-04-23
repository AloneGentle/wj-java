package com.language.learn.utils;

import io.jsonwebtoken.Claims;
import io.jsonwebtoken.Jws;
import io.jsonwebtoken.Jwts;
import org.springframework.util.StringUtils;

import javax.crypto.SecretKey;
import java.util.Date;

public class JwtUtils {
    public static final long EXPIRE = 86400000L;
    public static final SecretKey APP_SECRET = Jwts.SIG.HS256.key().build();

    public static String getJwtToken(String id, String nickname) {
        String JwtToken = Jwts.builder()
                .subject(nickname).issuedAt(new Date()).expiration(new Date(System.currentTimeMillis() + EXPIRE))
                .claim("id", id).signWith(APP_SECRET).compact();
        return JwtToken;
    }

    public static String getMemberIdByJwtToken(String jwtToken) {
        if (!StringUtils.hasLength(jwtToken)) {
            return "";
        } else {
            Jws<Claims> claimsJws = Jwts.parser().verifyWith(APP_SECRET).build().parseSignedClaims(jwtToken);
            Claims claims = claimsJws.getPayload();
            return (String) claims.get("id");
        }
    }

    public static String getUserFromToken(String token) {
        String user = Jwts.parser().verifyWith(JwtUtils.APP_SECRET).build().parseSignedClaims(token).getPayload().getSubject();
        return user;
    }
}
