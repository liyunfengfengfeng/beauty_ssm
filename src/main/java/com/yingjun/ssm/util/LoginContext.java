package com.yingjun.ssm.util;


/**
 * @author liyunfeng
 * 保存用户的登录信息
 */
public class LoginContext {

    private ThreadLocal<LoginContext> threadLocal = new ThreadLocal<>();
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
     * 移除当前线程中的变量值
     */
    public void remove(){
        threadLocal.remove();
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }
}
