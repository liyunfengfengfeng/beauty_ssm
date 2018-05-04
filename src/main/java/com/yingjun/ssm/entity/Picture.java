package com.yingjun.ssm.entity;
public class Picture {
    private Integer id;
    private java.util.Date updateTime;
    private String updateUser;
    private java.util.Date creatTime;
    private String picRemark;
    private String createUser;
    private byte[] url;

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

    public java.util.Date getCreatTime() {
        return this.creatTime;
    }

    public void setCreatTime(java.util.Date creatTime) {
        this.creatTime = creatTime;
    }

    public String getPicRemark() {
        return this.picRemark;
    }

    public void setPicRemark(String picRemark) {
        this.picRemark = picRemark;
    }

    public String getCreateUser() {
        return this.createUser;
    }

    public void setCreateUser(String createUser) {
        this.createUser = createUser;
    }

    public byte[] getUrl() {
        return url;
    }

    public void setUrl(byte[] url) {
        this.url = url;
    }
}
