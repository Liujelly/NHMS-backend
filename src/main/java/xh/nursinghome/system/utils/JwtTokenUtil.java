package xh.nursinghome.system.utils;

import io.jsonwebtoken.Claims;
import io.jsonwebtoken.Jwts;
import io.jsonwebtoken.SignatureAlgorithm;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;
import xh.nursinghome.system.entity.UserDO;

import java.util.Date;
import java.util.HashMap;
import java.util.Map;

//JWT Token工具类
@Component
public class JwtTokenUtil {
    //用户名key
    private static final String CLAIM_KEY_USERNAME = "sub";
    //生成时间key
    private static final String CLAIM_KEY_CREATED = "created";
    //密钥
    private String secret = "1234";
    //失效时间
    private Long expiration = 60L*60;

    //根据用户信息生成token
    public String generateToken(UserDO userDO){
        Map<String,Object> claims = new HashMap<>();
        claims.put(CLAIM_KEY_USERNAME,userDO.getUserName());
        claims.put(CLAIM_KEY_CREATED,new Date());
        return generateToken(claims);

    }

    //根据荷载生成JWT Token
    private String generateToken(Map<String,Object> claims){
        return Jwts.builder()
                .setClaims(claims)
                //过期时间
                .setExpiration(generateExpirationDate())
                //secret:盐值
                .signWith(SignatureAlgorithm.HS512,secret)
                .compact();
    }

    //生成token失效时间
    private Date generateExpirationDate() {
        return new Date(System.currentTimeMillis() + expiration*1000*12);
    }

    //从token中获取用户名
    public String getUsernameFromToken(String token){
        String username;
        try{
            Claims claims = getClaimsFormToken(token);
            username = claims.getSubject();
        }catch (Exception e){
            username = null;
        }
        return username;
    }

    //从jwt中获荷载
    private Claims getClaimsFormToken(String token) {
        Claims claims = null;
        try {
            claims = Jwts.parser()
                    .setSigningKey(secret)
                    .parseClaimsJws(token)
                    .getBody();
        }catch (Exception e){
            e.printStackTrace();
        }
        return claims;
    }

    //判断token是否有效
    public boolean validateToken(String token,UserDO userDO){
        String username = getUsernameFromToken(token);
        return username.equals(userDO.getUserName()) && ! isTokenExpired(token);
    }

    //判断token是否失效
    private boolean isTokenExpired(String token) {
        Date expireDate = getExpiredDtaeFromToken(token);
        return expireDate.before(new Date());
    }

    //从token中获取过期时间
    private Date getExpiredDtaeFromToken(String token) {
        Claims claims = getClaimsFormToken(token);
        return claims.getExpiration();
    }
    //判断token是否可以被刷新，过期可被刷新
    public boolean canRefresh(String token){
        return !isTokenExpired(token);
    }
    //刷新token
    public String refershToken(String token){
        Claims claims = getClaimsFormToken(token);
        claims.put(CLAIM_KEY_CREATED,new Date());
        return generateToken(claims);
    }

}
