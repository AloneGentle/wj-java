package com.language.learn.utils;

import io.jsonwebtoken.Claims;
import io.jsonwebtoken.Jws;
import io.jsonwebtoken.Jwts;
import io.jsonwebtoken.security.Keys;
import org.springframework.util.StringUtils;

import javax.crypto.SecretKey;
import java.util.Date;

public class JwtUtils {
    public static final long EXPIRE = 86400000L;
    private static final String KEY_HEX = "59a4e65f1d3c26f69d3d220f39064764e8cff6d5b7203acafa6832c0cca7b0aa";
    private static final SecretKey KEY = Keys.hmacShaKeyFor(KEY_HEX.getBytes());

    public static String getJwtToken(String memberId, String nickname) {
        String JwtToken = Jwts.builder()
                .subject(nickname).issuedAt(new Date()).expiration(new Date(System.currentTimeMillis() + EXPIRE))
                .claim("id", memberId).signWith(KEY).compact();
        return JwtToken;
    }

    public static String getMemberIdByJwtToken(String jwtToken) {
        if (!StringUtils.hasLength(jwtToken)) {
            return "";
        } else {
            Jws<Claims> claimsJws = Jwts.parser().verifyWith(KEY).build().parseSignedClaims(jwtToken);
            Claims claims = claimsJws.getPayload();
            return (String) claims.get("id");
        }
    }

    public static String getUserFromToken(String token) {
        String user = Jwts.parser().verifyWith(KEY).build().parseSignedClaims(token).getPayload().getSubject();
        return user;
    }
}
