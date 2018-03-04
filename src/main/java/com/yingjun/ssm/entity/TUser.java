package com.yingjun.ssm.entity;
public class TUser {
    private Long id;//主键id
    private String password;//密码
    private String name;//姓名
    private String email;//手机号码
    public TUser() {
        super();
    }
    public TUser(Long id,String password,String name,String email) {
        super();
        this.id = id;
        this.password = password;
        this.name = name;
        this.email = email;
    }
    public Long getId() {
        return this.id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getPassword() {
        return this.password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getName() {
        return this.name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return this.email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

}
