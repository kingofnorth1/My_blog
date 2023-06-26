package com.blog.dao;

import com.blog.model.domain.authority;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import java.util.List;

@Mapper
public interface AuthorityMapper {
    @Select("select a.* from t_authority a,t_user u,t_user_authority tu where tu.id=u.id and tu.authority=a.id and u.username=#{username}")
    public List<authority> findAuthorityByUsername(String username);
}
