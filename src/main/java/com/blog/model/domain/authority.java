package com.blog.model.domain;

import org.apache.ibatis.annotations.Mapper;

public class authority {
    private int id;
    private String authority;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getAuthority() {
        return authority;
    }

    public void setAuthority(String authority) {
        this.authority = authority;
    }

    @Override
    public String toString() {
        return "authority{" +
                "id=" + id +
                ", authority='" + authority + '\'' +
                '}';
    }
}
