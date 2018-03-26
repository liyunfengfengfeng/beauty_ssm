package com.yingjun.ssm.util;


/**
 * @author liyunfeng
 * 保存用户的登录信息
 */
public class LoginContext {

    private static final ThreadLocal<LoginContext> holder = new ThreadLocal<>();
    /**
     * 主键id
     */
    private final long id;
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

    public LoginContext(long id){
        super();
        this.id = id;
    }

    public static LoginContext getHolder() {
        return holder.get();
    }

    public static void setHolder(LoginContext loginContext) {
        holder.set(loginContext);
    }
    public static void remove(){
        holder.remove();
    }

    public long getId() {
        return id;
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
