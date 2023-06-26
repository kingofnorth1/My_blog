package com.blog.dao;

import com.blog.model.domain.user;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

@Mapper
public interface UserMapper {
    @Select("select * from t_user where username=#{username}")
    public user findUserByUsername(String username);
}
