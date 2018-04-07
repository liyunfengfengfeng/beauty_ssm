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
    /**
     * 分页起始位置
     */
    private int start;
    /**
     * 分页结束位置
     */
    private int end;

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

    public int getStart() {
        return start;
    }

    public void setStart(int start) {
        this.start = start;
    }

    public int getEnd() {
        return end;
    }

    public void setEnd(int end) {
        this.end = end;
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
