package com.yingjun.ssm.entity;
/**
 * @author liyunfeng
 * 普通用户
 */
public class User {
    /**
     * 主键id
     */
    private Long id;
    /**
     * 密码
     */
    private String password;
    /**
     * 姓名
     */
    private String name;
    /**
     * 电子邮箱
     */
    private String email;
    public User() {
        super();
    }
    public User(Long id, String password, String name, String email) {
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

    @Override
    public String toString() {
        return "User{" +
                "id=" + id +
                ", password='" + password + '\'' +
                ", name='" + name + '\'' +
                ", email='" + email + '\'' +
                '}';
    }
}
