package com.yingjun.ssm.entity;
public class News {
    private Integer id;//逐渐自增
    private java.util.Date updateTime;//更新时间
    private String updateUser;
    private java.util.Date createTime;//创建时间
    private String createUser;
    private String title;//文章标题
    private String content;//文章内容
    public News() {
        super();
    }
    public News(Integer id,java.util.Date updateTime,String updateUser,java.util.Date createTime,String createUser,String title,String content) {
        super();
        this.id = id;
        this.updateTime = updateTime;
        this.updateUser = updateUser;
        this.createTime = createTime;
        this.createUser = createUser;
        this.title = title;
        this.content = content;
    }
    public Integer getId() {
        return this.id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public java.util.Date getUpdateTime() {
        return this.updateTime;
    }

    public void setUpdateTime(java.util.Date updateTime) {
        this.updateTime = updateTime;
    }

    public String getUpdateUser() {
        return this.updateUser;
    }

    public void setUpdateUser(String updateUser) {
        this.updateUser = updateUser;
    }

    public java.util.Date getCreateTime() {
        return this.createTime;
    }

    public void setCreateTime(java.util.Date createTime) {
        this.createTime = createTime;
    }

    public String getCreateUser() {
        return this.createUser;
    }

    public void setCreateUser(String createUser) {
        this.createUser = createUser;
    }

    public String getTitle() {
        return this.title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContent() {
        return this.content;
    }

    public void setContent(String content) {
        this.content = content;
    }

}
