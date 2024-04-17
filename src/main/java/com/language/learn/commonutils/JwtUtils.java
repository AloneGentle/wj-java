package com.language.learn.commonutils;

import io.jsonwebtoken.Claims;
import io.jsonwebtoken.Jws;
import io.jsonwebtoken.Jwts;
import io.jsonwebtoken.SignatureAlgorithm;
import org.springframework.util.StringUtils;

import java.util.Date;

public class JwtUtils {
    public static final long EXPIRE = 86400000L;
    public static final String APP_SECRET = "1cf811388f7b27bf5e11ac8ff3ea6b76";

    public static String getJwtToken(String id, String nickname) {
        String JwtToken = Jwts.builder().setHeaderParam("typ", "JWT").setHeaderParam("alg", "HS256")
                .setSubject(nickname).setIssuedAt(new Date()).setExpiration(new Date(System.currentTimeMillis() + EXPIRE))
                .claim("id", id).signWith(SignatureAlgorithm.HS256, APP_SECRET).compact();
        return JwtToken;
    }

    public static String getMemberIdByJwtToken(String jwtToken) {
        if (!StringUtils.hasLength(jwtToken)) {
            return "";
        } else {
            Jws<Claims> claimsJws = Jwts.parser().setSigningKey(APP_SECRET).parseClaimsJws(jwtToken);
            Claims claims = claimsJws.getBody();
            return (String) claims.get("id");
        }
    }
}
