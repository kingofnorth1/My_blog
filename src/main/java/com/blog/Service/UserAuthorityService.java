package com.blog.Service;

import com.blog.dao.AuthorityMapper;
import com.blog.dao.UserMapper;
import com.blog.model.domain.authority;
import com.blog.model.domain.user;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserAuthorityService {
    @Autowired
    private UserMapper userMapper;
    @Autowired
    private AuthorityMapper authorityMapper;
    @Autowired
    private RedisTemplate redisTemplate;

    // 业务控制：使用唯一用户名查询用户信息
    public user getCustomer(String username){
        user customer=null;
        Object o = redisTemplate.opsForValue().get("customer_"+username);
        if(o!=null){
            customer=(user)o;
        }else {
            customer = userMapper.findUserByUsername(username);
            if(customer!=null){
                redisTemplate.opsForValue().set("customer_"+username,customer);
            }
        }
        return customer;
    }

    // 业务控制：使用唯一用户名查询用户权限
    public List<authority> getCustomerAuthority(String username){
        List<authority> authorities=null;
        Object o = redisTemplate.opsForValue().get("authorities_"+username);
        if(o!=null){
            authorities=(List<authority>)o;
        }else {
            authorities=authorityMapper.findAuthorityByUsername(username);
            if(authorities.size()>0){
                redisTemplate.opsForValue().set("authorities_"+username,authorities);
            }
        }
        return authorities;
    }

}
